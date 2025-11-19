# Kombo::GetAtsActionsAtsAddApplicationAttachmentPositiveResponseDataAttachmentRestrictionsTypesCV

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_supported** | **Boolean** |  |  |
| **max_file_size_bytes** | **Float** | The maximum file size in bytes. If null, we don&#39;t have information about the maximum file size. |  |
| **accepted_mime_types** | **Array&lt;String&gt;** | The accepted mime types. If null, we don&#39;t have information about the accepted mime types. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetAtsActionsAtsAddApplicationAttachmentPositiveResponseDataAttachmentRestrictionsTypesCV.new(
  is_supported: null,
  max_file_size_bytes: null,
  accepted_mime_types: null
)
```

