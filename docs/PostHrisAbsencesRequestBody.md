# Kombo::PostHrisAbsencesRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **employee_id** | **String** | The ID of the employee in Kombo or their ID in the remote system by prefixing it with &#x60;remote:&#x60; (e.g., &#x60;remote:12312&#x60;) |  |
| **absence_type_id** | **String** | The ID of the absence type in Kombo (not its &#x60;remote_id&#x60;). |  |
| **status** | **String** | The state that the absence should be created in. Some tools may approve absences automatically if they were created for an absence type that does not require approval. | [optional][default to &#39;REQUESTED&#39;] |
| **start_date** | **Time** | The date that the absence starts. This is a plain date (i.e., &#x60;yyyy-MM-dd&#x60;), with all time information discarded. |  |
| **end_date** | **Time** | When the absence ends.The date that the absence ends. This is a plain date (i.e., &#x60;yyyy-MM-dd&#x60;), with all time information discarded. |  |
| **start_half_day** | **Boolean** | &#x60;true&#x60; if the absence should start in the middle of the day. | [optional][default to false] |
| **end_half_day** | **Boolean** | &#x60;true&#x60; if the absence should end in the middle of the day. | [optional][default to false] |
| **amount** | **Float** | The amount of time of the absence. Specifying this also requires specifying &#x60;unit&#x60;. This is supported by very few tools. | [optional] |
| **unit** | **String** | The time unit of the &#x60;amount&#x60; value. Specifying this also requires specifying &#x60;amount&#x60;. | [optional] |
| **employee_note** | **String** | A note describing the reason for this absence. |  |
| **start_time** | **String** | The time of when the absence begins. Follows the format &#x60;HH:mm&#x60; or &#x60;HH:mm:ss&#x60; (e.g., &#x60;14:45:15&#x60;). If &#x60;start_time&#x60; is specified, &#x60;end_time&#x60; has to be specified as well. | [optional] |
| **end_time** | **String** | The time of when the absence ends. Follows the format &#x60;HH:mm&#x60; or &#x60;HH:mm:ss&#x60; (e.g., &#x60;14:45:15&#x60;). If &#x60;end_time&#x60; is specified, &#x60;start_time&#x60; has to be specified as well. | [optional] |
| **remote_fields** | [**PostHrisAbsencesRequestBodyRemoteFields**](PostHrisAbsencesRequestBodyRemoteFields.md) |  | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostHrisAbsencesRequestBody.new(
  employee_id: null,
  absence_type_id: null,
  status: null,
  start_date: null,
  end_date: null,
  start_half_day: null,
  end_half_day: null,
  amount: null,
  unit: null,
  employee_note: null,
  start_time: null,
  end_time: null,
  remote_fields: null
)
```

