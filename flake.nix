{
  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    devenv = {
      url = "github:cachix/devenv";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixpkgs-ruby = {
      url = "github:bobvanderlinden/nixpkgs-ruby";
      inputs = {nixpkgs.follows = "nixpkgs";};
    };
  };

  outputs = {nixpkgs, ...} @ inputs:
    inputs.flake-parts.lib.mkFlake {inherit inputs;} {
      debug = true;

      systems = [
        "x86_64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      imports = [inputs.devenv.flakeModule];

      perSystem = {
        config,
        pkgs,
        system,
        ...
      }: {
        _module.args.pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };

        formatter = pkgs.alejandra;
        devenv.shells.default = let
          config' = config.devenv.shells.default;
          lib = pkgs.lib;
          stdenv = pkgs.stdenvNoCC;
        in {
          inherit stdenv;
          info = false;

          enterShell =
            # bash
            ''
              bundle check || bundle install
              run-show-help
            ''
            + lib.optionalString stdenv.isDarwin ''
              # Fix for https://github.com/NixOS/nixpkgs/issues/358795
              unset DEVELOPER_DIR
            '';

          env = {
          };

          packages = with pkgs; [
            # flake
            alejandra # nix files formatter (this is a Nix file)
            nix-direnv

            # tools
            svu
            openapi-generator-cli
            git

            # Dev dependencies
            libyaml # psych gem
          ];
          languages = {
            ruby = {
              enable = true;
              bundler.enable = true;
              versionFile = ./.ruby-version;
            };
          };

          scripts = {
            run-show-help = {
              description = "Show this help text";

              exec =
                # bash
                ''
                  echo
                  echo Helper scripts available:
                  echo
                  ${lib.getExe pkgs.gnused} -e 's| |XX|g' \
                    -e 's|=| |' <<EOF | \
                    ${lib.getExe' pkgs.util-linuxMinimal "column"} -t | \
                    ${lib.getExe pkgs.gnused} -e 's|XX| |g'
                  ${pkgs.lib.generators.toKeyValue {} (
                    pkgs.lib.mapAttrs (name: value: value.description) config'.scripts
                  )}
                  EOF

                  cat <<EOF

                  Use 'run-show-help' for a list of tools

                  EOF
                '';
            };

            process-openapi-spec = {
              description = ''
                Modifies the spec from OpenAPI in preparation for SDK generation.
              '';
              exec = ''
                #!/bin/bash
                 # ==============================================================================
                 # Kombo OpenAPI spec processor
                 # ==============================================================================
                 # Komobo's OpenAPI spec (https://api.us.kombo.dev/openapi.json), as of version 1.0.0, specifies some
                 # fields as "required" that are not required.
                 #
                 # This script removes fields from required lists that are not actually required.
                 #
                 # --- CONFIGURATION START ---
                 # Configuration consists of a 'jq' path to a 'required' array for a particular object type, followed by
                 # the list of values that will be removed from that path's array.
                 #
                 # E.g. The component `.components.schemas.GetHrisEmployeesPositiveResponse` lists "manager" and "work_location"
                 # as required, but these fields should not be required.
                 CONFIG=(
                     ".components.schemas.GetHrisEmployeesPositiveResponse.properties.data.properties.results.items.required"
                     "[\"manager\", \"work_location\", \"legal_entity\"]"

                     # --- Add more modifications here following the two-line pattern ---
                     # ".path.to.array"
                     # "[\"value_to_remove\", \"another_value\"]"
                 )

                 if [ "$#" -ne 2 ]; then
                     echo "Usage: $0 <input_file.json> <output_file.json>"
                     echo "Please provide both an input file and an output file path."
                     exit 1
                 fi

                 INPUT_FILE="$1"
                 OUTPUT_FILE="$2"
                 JQ_FILTER=""

                 if [ ! -f "$INPUT_FILE" ]; then
                     echo "Error: Input file not found: $INPUT_FILE"
                     exit 1
                 fi

                 # Build the combined jq filter string
                 echo "Building jq filter with $(( ''${#CONFIG[@]} / 2 )) modification(s)..."

                 # Loop through the array, processing two items at a time (path and values)
                 for ((i = 0; i < ''${#CONFIG[@]}; i += 2)); do
                     PATH_EXPR="''${CONFIG[i]}"
                     VALUES_TO_REMOVE="''${CONFIG[i+1]}"

                     # Construct the modification: .path |= (. - ["values"])
                     SINGLE_MODIFICATION="''${PATH_EXPR} |= (. - ''${VALUES_TO_REMOVE})"

                     # Append to the main filter, separating expressions with commas
                     if [[ -n "$JQ_FILTER" ]]; then
                         JQ_FILTER+=", "
                     fi
                     JQ_FILTER+="$SINGLE_MODIFICATION"
                 done

                 if [[ -z "$JQ_FILTER" ]]; then
                     echo "Warning: CONFIG array is empty. Copying input file to output file without modification."
                     cp "$INPUT_FILE" "$OUTPUT_FILE"
                     exit 0
                 fi

                 echo "Applying changes and saving to $OUTPUT_FILE..."
                 jq -c "$JQ_FILTER" "$INPUT_FILE" > "$OUTPUT_FILE"

                 # Check the exit status of jq
                 if [ $? -eq 0 ]; then
                     echo "Success! Modified JSON saved to $OUTPUT_FILE"
                 else
                     echo "Error: jq command failed. Check the input JSON and the CONFIG array for syntax errors."
                     rm -f "$OUTPUT_FILE" # Clean up failed output file
                     exit 1
                 fi
              '';
            };
            generate-sdk = {
              description = "Generate a new sdk if a new version is available";
              exec = ''
                #! bash
                SPEC_URL="https://api.us.kombo.dev/openapi.json"
                SPECS_DIR="api_specs"
                VERSION_FILE="VERSION"

                mkdir -p "$SPECS_DIR"

                echo "Fetching latest OpenAPI spec..."
                curl -sSL "$SPEC_URL" -o new_openapi.json

                # Using svu current to determine the last known version
                if command -v svu &> /dev/null; then
                    CURRENT_VERSION=$(svu current --tag.prefix="")
                else
                    echo "Error: 'svu' utility not found."
                    exit 1
                fi

                LAST_SPEC_FILE="$SPECS_DIR/kombo-openapi-spec-$CURRENT_VERSION.json"
                if [ -f "$LAST_SPEC_FILE" ]; then
                    if cmp -s "$LAST_SPEC_FILE" "new_openapi.json"; then
                        echo "No changes detected in OpenAPI spec."
                        rm new_openapi.json
                        echo "API specification has not changed: skipping SDK generation"
                        exit 0
                    fi
                fi

                echo "Kombo API updated. Proceeding with generation."

                NEW_VERSION=$(svu patch --tag.prefix="")
                echo "Current version: $CURRENT_VERSION"
                echo "New version: $NEW_VERSION"
                NEW_SPEC_FILE="$SPECS_DIR/kombo-openapi-spec-$NEW_VERSION.json"
                mv new_openapi.json "$NEW_SPEC_FILE"
                echo "$NEW_VERSION" > $VERSION_FILE
                echo "Generating Ruby Client..."

                # Kombo's spec lists some fields as required that are not actually required according to their
                # documentation. This is true as of version `1.0.0` (jq '.info')
                process-openapi-spec $NEW_SPEC_FILE "''${NEW_SPEC_FILE}.processed"
                mv "''${NEW_SPEC_FILE}.processed" $NEW_SPEC_FILE

                openapi-generator-cli generate \
                    -i "$NEW_SPEC_FILE" \
                    -g ruby \
                    -o . \
                    --additional-properties=gemName=kombo_client,gemVersion=$NEW_VERSION,moduleName=Kombo

                git tag ''${NEW_VERSION} -m "Bump version: ''${NEW_VERSION}"
                echo "SDK Generation complete"
              '';
            };
          };
        };
      };
    };
}
