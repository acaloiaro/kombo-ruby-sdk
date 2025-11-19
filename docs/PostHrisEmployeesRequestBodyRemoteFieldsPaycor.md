# Kombo::PostHrisEmployeesRequestBodyRemoteFieldsPaycor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **paygroup_remote_id** | **String** | [REQUIRED] Remote ID of a Kombo Group with type \&quot;COST_CENTER\&quot; |  |
| **department_remote_id** | **String** | [REQUIRED] Remote ID of a Kombo Group with type \&quot;DEPARTMENT\&quot; |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostHrisEmployeesRequestBodyRemoteFieldsPaycor.new(
  paygroup_remote_id: null,
  department_remote_id: null
)
```

