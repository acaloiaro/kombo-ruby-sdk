# Kombo::PostHrisEmployeesRequestBodyHomeAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **street_1** | **String** |  | [optional] |
| **street_2** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |
| **zip_code** | **String** |  | [optional] |
| **country** | **String** | The uppercase two-letter ISO country (e.g., &#x60;DE&#x60;). For systems that use codes in formats other than &#x60;ISO 3166-1 alpha-2&#x60;, Kombo transforms the ISO Codes to the appropriate value. | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostHrisEmployeesRequestBodyHomeAddress.new(
  street_1: null,
  street_2: null,
  city: null,
  state: null,
  zip_code: null,
  country: null
)
```

