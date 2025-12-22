# Kombo::PostLmsCoursesRequestBodyCourse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | &#x60;EXTERNAL&#x60; indicates that the content is not sent to the LMS, but the &#x60;course_url&#x60; links to the content in your system. |  |
| **title** | **String** | The title of the course revision. |  |
| **description** | **String** | A description of the course revision. | [optional] |
| **course_url** | **String** | URL to the course page. For content providers, this should be a deeplink into your product that allows users to access the course directly. |  |
| **thumbnail_url** | **String** | URL to the thumbnail image for the course. | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostLmsCoursesRequestBodyCourse.new(
  type: null,
  title: null,
  description: null,
  course_url: null,
  thumbnail_url: null
)
```

