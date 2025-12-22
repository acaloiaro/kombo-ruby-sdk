# Kombo::PostLmsCourseProgressionsRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user in Kombo or their ID in the remote system by prefixing it with &#x60;remote:&#x60; (e.g., &#x60;remote:12312&#x60;) |  |
| **course_revision_id** | **String** | The ID of the revision in Kombo or its ID in the remote system by prefixing it with &#x60;remote:&#x60; (e.g., &#x60;remote:12312&#x60;) |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostLmsCourseProgressionsRequestBody.new(
  user_id: null,
  course_revision_id: null
)
```

