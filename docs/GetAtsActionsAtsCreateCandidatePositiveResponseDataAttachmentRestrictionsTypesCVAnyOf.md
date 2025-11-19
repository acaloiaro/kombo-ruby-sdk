# Kombo::GetAtsActionsAtsCreateCandidatePositiveResponseDataAttachmentRestrictionsTypesCVAnyOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_supported** | **Boolean** |  |  |
| **min_amount** | **Float** | The minimum amount of attachments. If null, we don&#39; have information about the minimum amount. |  |
| **max_amount** | **Float** | The maximum amount of attachments. If null, we don&#39; have information about the maximum amount. |  |
| **max_file_size_bytes** | **Float** | The maximum file size in bytes. If null, we don&#39;t have information about the maximum file size. |  |
| **accepted_mime_types** | **Array&lt;String&gt;** | The accepted mime types. If null, we don&#39;t have information about the accepted mime types. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetAtsActionsAtsCreateCandidatePositiveResponseDataAttachmentRestrictionsTypesCVAnyOf.new(
  is_supported: null,
  min_amount: null,
  max_amount: null,
  max_file_size_bytes: null,
  accepted_mime_types: null
)
```

