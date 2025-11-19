# Kombo::PutCustomDatevEmployeesEmployeeIdCompensationsRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **effective_date** | **Time** | Date from which the submitted compensations should be valid. Please note that it might not be possible to set compensations for the past if the payroll was already run. |  |
| **compensations** | [**Array&lt;PutCustomDatevEmployeesEmployeeIdCompensationsRequestBodyCompensationsInner&gt;**](PutCustomDatevEmployeesEmployeeIdCompensationsRequestBodyCompensationsInner.md) |  |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PutCustomDatevEmployeesEmployeeIdCompensationsRequestBody.new(
  effective_date: null,
  compensations: null
)
```

