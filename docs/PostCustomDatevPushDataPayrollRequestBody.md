# Kombo::PostCustomDatevPushDataPayrollRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payroll_month** | **Time** | Specify the month for which the payroll data should be submitted. The date must be specified as the first day of a month (e.g. 2022-12-01). |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostCustomDatevPushDataPayrollRequestBody.new(
  payroll_month: null
)
```

