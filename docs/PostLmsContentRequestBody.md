# Kombo::PostLmsContentRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **course_id** | **String** | The ID of the course to add this content to |  |
| **title** | **String** | The title of the content item |  |
| **description** | **String** | A description of the content item | [optional] |
| **url** | **String** | URL where the content can be accessed | [optional] |
| **type** | **String** | The type of learning content |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostLmsContentRequestBody.new(
  course_id: null,
  title: null,
  description: null,
  url: null,
  type: null
)
```

