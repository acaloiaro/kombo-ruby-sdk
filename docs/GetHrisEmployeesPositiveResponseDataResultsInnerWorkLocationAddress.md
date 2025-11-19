# Kombo::GetHrisEmployeesPositiveResponseDataResultsInnerWorkLocationAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **city** | **String** |  | [optional] |
| **country** | **String** | Contains the ISO2 country code if possible. If not, it contains the original value. | [optional] |
| **raw** | **String** | If we have address data, this is filled with the raw address string. | [optional] |
| **state** | **String** |  | [optional] |
| **street_1** | **String** | If we can parse the address data, this field contains the first part of the street information. | [optional] |
| **street_2** | **String** |  | [optional] |
| **zip_code** | **String** |  | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetHrisEmployeesPositiveResponseDataResultsInnerWorkLocationAddress.new(
  city: null,
  country: null,
  raw: null,
  state: null,
  street_1: null,
  street_2: null,
  zip_code: null
)
```

