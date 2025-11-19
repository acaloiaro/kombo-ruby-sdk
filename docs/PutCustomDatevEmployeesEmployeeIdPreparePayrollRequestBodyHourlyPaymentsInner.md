# Kombo::PutCustomDatevEmployeesEmployeeIdPreparePayrollRequestBodyHourlyPaymentsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hours** | **Float** | Number of hours this employee has worked. |  |
| **lohnart** | **Float** | The \&quot;Lohnart\&quot; (payment-type) in DATEV. Make sure a Lohnart is selected that actually supports hours. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PutCustomDatevEmployeesEmployeeIdPreparePayrollRequestBodyHourlyPaymentsInner.new(
  hours: null,
  lohnart: null
)
```

