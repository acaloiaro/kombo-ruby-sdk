# Kombo::PostAtsApplicationsApplicationIdInterviewsRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The title of the interview |  |
| **start_time** | **String** | The start time of the interview |  |
| **end_time** | **String** | The end time of the interview |  |
| **interviewer_user_ids** | **Array&lt;String&gt;** | The IDs of the interviewers |  |
| **organizer_user_id** | **String** | The ID of the organizer |  |
| **location** | [**PostAtsApplicationsApplicationIdInterviewsRequestBodyLocation**](PostAtsApplicationsApplicationIdInterviewsRequestBodyLocation.md) |  |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostAtsApplicationsApplicationIdInterviewsRequestBody.new(
  title: null,
  start_time: null,
  end_time: null,
  interviewer_user_ids: null,
  organizer_user_id: null,
  location: null
)
```

