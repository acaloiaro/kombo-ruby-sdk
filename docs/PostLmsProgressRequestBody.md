# Kombo::PostLmsProgressRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **course_id** | **String** | The ID of the course. |  |
| **user_id** | **String** | The ID of the user. |  |
| **progress_id** | **String** | Unique identifier for this progress entry. |  |
| **status** | **String** | Current status of the learner in this course. |  |
| **enrollment_date** | **String** | Date when the user enrolled in the course. |  |
| **completion_date** | **String** | Date when the user completed the course. | [optional] |
| **score** | **Float** | Numerical score achieved (e.g., 85.5). | [optional] |
| **duration** | **Float** | Total time spent on the course in minutes. | [optional] |
| **comments** | **String** | Additional comments or notes. | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostLmsProgressRequestBody.new(
  course_id: null,
  user_id: null,
  progress_id: null,
  status: null,
  enrollment_date: null,
  completion_date: null,
  score: null,
  duration: null,
  comments: null
)
```

