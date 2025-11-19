# Kombo::PostAtsApplicationsApplicationIdNotesRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content** | **String** | UTF-8 content of the note. |  |
| **content_type** | **String** | Content type of the note. Currently only &#x60;PLAIN_TEXT&#x60; is supported. |  |
| **remote_fields** | [**PostAtsApplicationsApplicationIdNotesRequestBodyRemoteFields**](PostAtsApplicationsApplicationIdNotesRequestBodyRemoteFields.md) |  | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostAtsApplicationsApplicationIdNotesRequestBody.new(
  content: null,
  content_type: null,
  remote_fields: null
)
```

