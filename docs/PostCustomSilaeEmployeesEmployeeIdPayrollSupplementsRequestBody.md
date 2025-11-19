# Kombo::PostCustomSilaeEmployeesEmployeeIdPayrollSupplementsRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **supplement_code** | **String** | The ID code of the supplement that you want to add to Silae. |  |
| **effective_date** | **Time** | Date from which the submitted supplement should be active. |  |
| **element_amount** | **Float** | The amount of the supplement if it requires a number. | [optional] |
| **element_string** | **String** | The string of the supplement if it requires a string. | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostCustomSilaeEmployeesEmployeeIdPayrollSupplementsRequestBody.new(
  supplement_code: null,
  effective_date: null,
  element_amount: null,
  element_string: null
)
```

