# Kombo::PutCustomDatevEmployeesEmployeeIdPreparePayrollRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payroll_run** | [**PutCustomDatevEmployeesEmployeeIdPreparePayrollRequestBodyPayrollRun**](PutCustomDatevEmployeesEmployeeIdPreparePayrollRequestBodyPayrollRun.md) |  |  |
| **hourly_payments** | [**Array&lt;PutCustomDatevEmployeesEmployeeIdPreparePayrollRequestBodyHourlyPaymentsInner&gt;**](PutCustomDatevEmployeesEmployeeIdPreparePayrollRequestBodyHourlyPaymentsInner.md) | Add entries for all the hourly calculated supplements here. For example you can write \&quot;Overtime\&quot; or \&quot;Work on Holidays\&quot; (in hours here). Unfortunately, DATEV doens&#39;t allow showing a lable for the entries. |  |
| **fixed_payments** | [**Array&lt;PutCustomDatevEmployeesEmployeeIdPreparePayrollRequestBodyFixedPaymentsInner&gt;**](PutCustomDatevEmployeesEmployeeIdPreparePayrollRequestBodyFixedPaymentsInner.md) | Add entries for all the fixed supplements here. For example you can write \&quot;Bonuses\&quot; (in Euros here). Unfortunately, DATEV doens&#39;t allow showing a lable for the entries. |  |
| **custom_lodas** | [**Array&lt;PutCustomDatevEmployeesEmployeeIdPreparePayrollRequestBodyCustomLodasInner&gt;**](PutCustomDatevEmployeesEmployeeIdPreparePayrollRequestBodyCustomLodasInner.md) | Add custom entries to the DATEV Lodas Standard Erfassungstabelle. | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PutCustomDatevEmployeesEmployeeIdPreparePayrollRequestBody.new(
  payroll_run: null,
  hourly_payments: null,
  fixed_payments: null,
  custom_lodas: null
)
```

