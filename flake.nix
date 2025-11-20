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

            # Dev dependencies
            libyaml # psych gem
          ];
          languages = {
            ruby = {
              enable = true;
              bundler.enable = false;
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

            generate-sdk = {
              description = "Generate a new sdk if a new version is available";
              exec = ''
                # set -e
                SPEC_URL="https://api.kombo.dev/openapi.json"
                SPECS_DIR="api_specs"
                VERSION_FILE="VERSION"

                mkdir -p "$SPECS_DIR"

                echo "Fetching latest OpenAPI spec..."
                curl -sSL "$SPEC_URL" -o new_openapi.json

                # Using svu current to determine the last known version
                if command -v svu &> /dev/null; then
                    CURRENT_VERSION=$(cat $VERSION_FILE)
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

                NEW_VERSION=$(svu patch)
                echo "Current version: $CURRENT_VERSION"
                echo "New version: $NEW_VERSION"
                sleep 10
                NEW_SPEC_FILE="$SPECS_DIR/kombo-openapi-spec-$NEW_VERSION.json"
                mv new_openapi.json "$NEW_SPEC_FILE"
                echo "$NEW_VERSION" > $VERSION_FILE

                echo "Generating Ruby Client..."
                openapi-generator-cli generate \
                    -i "$NEW_SPEC_FILE" \
                    -g ruby \
                    -o . \
                    --additional-properties=gemName=kombo_client,gemVersion=$NEW_VERSION,moduleName=Kombo

                echo "SDK Generation complete"
              '';
            };
          };
        };
      };
    };
}
