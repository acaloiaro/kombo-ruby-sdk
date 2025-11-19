# Kombo::PutCustomDatevEmployeesEmployeeIdCompensationsRequestBodyCompensationsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | The amount that this employee will be paid. |  |
| **currency** | **String** | The currency in which the employee gets paid. Currently, only euro is supported as integrated systems only work with Euro. |  |
| **period** | **String** | The period for which the specified amount is paid. Currently, integrated systems only support \&quot;HOUR\&quot; and \&quot;MONTH\&quot;. |  |
| **lohnart** | **Integer** | The Lohnart that should be used for this compensation. If not specified, the default Lohnart that was requested in the connection flow will be used. Generally Lohnart is only available for monthly compensations. | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PutCustomDatevEmployeesEmployeeIdCompensationsRequestBodyCompensationsInner.new(
  amount: null,
  currency: null,
  period: null,
  lohnart: null
)
```

