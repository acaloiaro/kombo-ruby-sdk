# Kombo::PostHrisEmployeesRequestBodyRemoteFieldsOracle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | The business unit group ID for which the employee should be created. It can be found as a group with the type &#x60;null&#x60;. |  |
| **department_id** | **String** | The department group ID for which the employee should be created. It can be found as a group with the type &#x60;DEPARTMENT&#x60;. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostHrisEmployeesRequestBodyRemoteFieldsOracle.new(
  group_id: null,
  department_id: null
)
```

