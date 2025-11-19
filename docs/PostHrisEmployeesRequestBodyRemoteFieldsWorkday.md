# Kombo::PostHrisEmployeesRequestBodyRemoteFieldsWorkday

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_requisition_id** | **String** | Workday job requisition ID of that the employee should be hired for. Provide either this or &#x60;position_id&#x60;. | [optional] |
| **position_id** | **String** | Workday position ID of that the employee should be hired to. Provide either this or &#x60;job_requisition_id&#x60;. | [optional] |
| **ssn** | **String** | The social security number of the employee. | [optional] |
| **bank_account** | [**PostHrisEmployeesRequestBodyRemoteFieldsWorkdayBankAccount**](PostHrisEmployeesRequestBodyRemoteFieldsWorkdayBankAccount.md) |  | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostHrisEmployeesRequestBodyRemoteFieldsWorkday.new(
  job_requisition_id: null,
  position_id: null,
  ssn: null,
  bank_account: null
)
```

