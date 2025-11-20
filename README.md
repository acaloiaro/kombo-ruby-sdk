# Kombo.dev Ruby SDK Generator

This experimental repository generates a Ruby SDK from [Kombo's OpenAPI spec](https://api.kombo.dev/openapi.json).

This is not production-ready.

## Generate code

This repo uses a nix [devenv](devenv.sh) to generate code. With `direnv` installed, run `direnv allow` inside of this
repository directory to enable the devenv.

When kombo changes their OpenAPI spec, this SDK can be updated by running `generate-sdk` inside the devenv. 

## Usage

First, [create a kombo API key](https://app.kombo.dev/secrets) and place it in an environment variable named `KOMBO_API_KEY`.

Create a `Kombo::Configuration` and create a client from it:

**Create a client**
```
config = Kombo.configure do |c|
  # As far as we can tell, this value is not currently used
  c.api_key = ENV['KOMBO_API_KEYY']
  # The access token is used in as the Bearer token when making requests to kombo's API; it's not clear why the
  # OpenAPI SDK generator doesn't use `api_key`, so for now, we are setting both until the difference between api_key
  # and access_token is sorted out in the SDK generator. This might be an oddity in Komobo's upstream OpenAPI spec.
  c.access_token = ENV['KOMBO_API_KEY']
  c.host = 'api.us.kombo.dev' # Use api.eu.kombo.dev for instances in the EU; the default value of api.kombo.dev does not work
  c
end
client = Kombo::ApiClient.new(config)
```

**Example: Get a HRIS API instance**

`hris = Kombo::UnifiedHRISAPIApi.new(client)`


**Example: Get all employees using the unified HRIS API**

`hris.get_hris_employees('<INTEGRATION ID>')`
