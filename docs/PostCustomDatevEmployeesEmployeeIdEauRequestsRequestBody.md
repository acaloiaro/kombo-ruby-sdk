# Kombo::PostCustomDatevEmployeesEmployeeIdEauRequestsRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_work_incapacity** | **String** | Date \&quot;start_work_incapacity\&quot; from the original eAU-Request. |  |
| **notification** | [**PostCustomDatevEmployeesEmployeeIdEauRequestsRequestBodyNotification**](PostCustomDatevEmployeesEmployeeIdEauRequestsRequestBodyNotification.md) |  | [optional] |
| **contact_person** | [**PostCustomDatevEmployeesEmployeeIdEauRequestsRequestBodyContactPerson**](PostCustomDatevEmployeesEmployeeIdEauRequestsRequestBodyContactPerson.md) |  | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostCustomDatevEmployeesEmployeeIdEauRequestsRequestBody.new(
  start_work_incapacity: null,
  notification: null,
  contact_person: null
)
```

