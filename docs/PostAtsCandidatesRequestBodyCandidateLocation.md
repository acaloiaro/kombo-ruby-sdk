# Kombo::PostAtsCandidatesRequestBodyCandidateLocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **city** | **String** |  | [optional] |
| **country** | **String** | The uppercase two-letter ISO country (e.g., &#x60;DE&#x60;). For systems that use codes in formats other than &#x60;ISO 3166-1 alpha-2&#x60;, Kombo transforms the ISO Codes to the appropriate value. |  |
| **state** | **String** |  | [optional] |
| **zip_code** | **String** |  | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostAtsCandidatesRequestBodyCandidateLocation.new(
  city: null,
  country: null,
  state: null,
  zip_code: null
)
```

