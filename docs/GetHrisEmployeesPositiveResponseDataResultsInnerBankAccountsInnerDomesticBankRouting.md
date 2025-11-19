# Kombo::GetHrisEmployeesPositiveResponseDataResultsInnerBankAccountsInnerDomesticBankRouting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number** | **String** | Bank routing number (e.g. DE Bankleitzahl, GB Sort Code, US ABA routing number, AU BSB code). This field is not formatted and therefore might contain delimiters (eg. 01-23-45). |  |
| **type** | **String** | Enum of the routing type, prefixed with the iso-3166-1-alpha-2 banks origin country. If there is uncertainty about the type, it will be set to null. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetHrisEmployeesPositiveResponseDataResultsInnerBankAccountsInnerDomesticBankRouting.new(
  number: null,
  type: null
)
```

