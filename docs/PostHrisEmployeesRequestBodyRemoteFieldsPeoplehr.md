# Kombo::PostHrisEmployeesRequestBodyRemoteFieldsPeoplehr

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_role_effective_date** | **Time** | The effective date of the employee&#39;s current role. This is a plain date (i.e., &#x60;yyyy-MM-dd&#x60;), all time information is discarded. | [optional] |
| **department** | **String** |  | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostHrisEmployeesRequestBodyRemoteFieldsPeoplehr.new(
  job_role_effective_date: null,
  department: null
)
```

