# Kombo::GetAtsActionsAtsCreateCandidatePositiveResponseDataAttachmentRestrictions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_size_bytes** | **Float** | The maximum total size of all attachments. If null, we don&#39; have information about the total size of all attachments. Make sure to consider the total request size limits of Kombo. |  |
| **types** | [**GetAtsActionsAtsCreateCandidatePositiveResponseDataAttachmentRestrictionsTypes**](GetAtsActionsAtsCreateCandidatePositiveResponseDataAttachmentRestrictionsTypes.md) |  |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetAtsActionsAtsCreateCandidatePositiveResponseDataAttachmentRestrictions.new(
  total_size_bytes: null,
  types: null
)
```

