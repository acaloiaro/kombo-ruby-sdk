# Kombo::GetHrisEmployeesPositiveResponseDataResultsInnerBankAccountsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **iban** | **String** | The internationally unique IBAN identifying this account. If we detect a valid IBAN from the account number and this field would otherwise be empty, we will automatically populate this field. | [optional] |
| **bic** | **String** | The internationally unique BIC/SWIFT code identifying the bank behind this account. If we detect a valid BIC from the domestic bank routing number and this field would otherwise be empty, we will automatically populate this field. | [optional] |
| **account_number** | **String** | The bank-specific account number. Some companies use the account number field to put the IBAN here. | [optional] |
| **holder_name** | **String** | The name of the holder of this account. | [optional] |
| **bank_name** | **String** | The name of the bank behind this account. | [optional] |
| **domestic_bank_routing** | [**GetHrisEmployeesPositiveResponseDataResultsInnerBankAccountsInnerDomesticBankRouting**](GetHrisEmployeesPositiveResponseDataResultsInnerBankAccountsInnerDomesticBankRouting.md) |  | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetHrisEmployeesPositiveResponseDataResultsInnerBankAccountsInner.new(
  iban: null,
  bic: null,
  account_number: null,
  holder_name: null,
  bank_name: null,
  domestic_bank_routing: null
)
```

