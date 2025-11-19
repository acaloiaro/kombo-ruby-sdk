# Kombo::PostHrisEmployeeSkillAssignmentsRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **employee_id** | **String** | The ID of the employee |  |
| **skill_id** | **String** | The ID of the skill |  |
| **current_level** | **String** | The current skill level of the employee | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostHrisEmployeeSkillAssignmentsRequestBody.new(
  employee_id: null,
  skill_id: null,
  current_level: null
)
```

