# Kombo::PostLmsCoursesRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The title of the course |  |
| **description** | **String** | A description of the course | [optional] |
| **url** | **String** | URL where the course can be accessed | [optional] |
| **skills** | [**Array&lt;PostLmsCoursesRequestBodySkillsInner&gt;**](PostLmsCoursesRequestBodySkillsInner.md) | Skills that will be taught in this course | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostLmsCoursesRequestBody.new(
  title: null,
  description: null,
  url: null,
  skills: null
)
```

