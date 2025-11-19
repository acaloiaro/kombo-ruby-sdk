# Kombo::GetLmsUsersPositiveResponseDataResultsInnerProgressInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **course_id** | **String** | The ID of the course this progress relates to. |  |
| **progress_id** | **String** | Unique identifier for this progress entry. |  |
| **status** | **String** | Current status of the learner in this course. |  |
| **enrollment_date** | **String** | Date when the user enrolled in the course. |  |
| **completion_date** | **String** | Date when the user completed the course. |  |
| **score** | **Float** | Numerical score achieved by the user (e.g., 85.5). |  |
| **duration** | **Float** | Total time spent on the course in minutes. |  |
| **comments** | **String** | Additional comments or notes about the progress. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetLmsUsersPositiveResponseDataResultsInnerProgressInner.new(
  course_id: null,
  progress_id: null,
  status: null,
  enrollment_date: null,
  completion_date: null,
  score: null,
  duration: null,
  comments: null
)
```

