# Kombo::PostLmsProgressPositiveResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The Kombo ID of the progress entry. |  |
| **remote_id** | **String** | The remote ID of the progress entry. |  |
| **course_id** | **String** | The ID of the course this progress relates to. |  |
| **user_id** | **String** | The ID of the user this progress belongs to. |  |
| **status** | **String** | Current status of the learner in this course. |  |
| **enrollment_date** | **String** | Date when the user enrolled in the course. |  |
| **completion_date** | **String** | Date when the user completed the course. |  |
| **score** | **Float** | Numerical score achieved by the user (e.g., 85.5). |  |
| **duration** | **Float** | Total time spent on the course in minutes. |  |
| **comments** | **String** | Additional comments or notes about the progress. |  |
| **changed_at** | **Time** | The timestamp when this specific record was last modified. This field only updates when properties directly on this record change, NOT when related or nested models change. For filtering that considers nested data changes, use the &#x60;updated_after&#x60; parameter which will return records when either the record itself OR its related models have been updated. |  |
| **remote_data** | **Hash&lt;String, Object&gt;** | Includes the data fetched from the remote system. Please be aware that including this in you scope config might violate other scopes that are set.  Remote data always has the endpoint path that we got the data from as the top level key. For example, it could look like: &#x60;{ \&quot;/companies\&quot;: { ... }}&#x60;  This is not available on all plans. Reach out to Kombo if you need it. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostLmsProgressPositiveResponseData.new(
  id: null,
  remote_id: null,
  course_id: null,
  user_id: null,
  status: null,
  enrollment_date: null,
  completion_date: null,
  score: null,
  duration: null,
  comments: null,
  changed_at: null,
  remote_data: null
)
```

