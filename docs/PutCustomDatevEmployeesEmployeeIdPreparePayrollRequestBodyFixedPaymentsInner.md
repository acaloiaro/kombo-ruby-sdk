# Kombo::PutCustomDatevEmployeesEmployeeIdPreparePayrollRequestBodyFixedPaymentsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** |  |  |
| **lohnart** | **Float** | The \&quot;Lohnart\&quot; (payment-type) in DATEV. Make sure a Lohnart is selected that actually supports fixed payments (no hourly modifier). |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PutCustomDatevEmployeesEmployeeIdPreparePayrollRequestBodyFixedPaymentsInner.new(
  amount: null,
  lohnart: null
)
```

