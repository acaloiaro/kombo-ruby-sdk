# Kombo::PostAtsApplicationsApplicationIdAttachmentsRequestBodyRemoteFieldsAllOfOracle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **override_document_category** | **String** | Allows you to override the document category for the attachment. | [optional] |
| **multi_post_to_all_current_applications** | **Boolean** | If true, the attachment will be posted to all current applications for the candidate. | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostAtsApplicationsApplicationIdAttachmentsRequestBodyRemoteFieldsAllOfOracle.new(
  override_document_category: null,
  multi_post_to_all_current_applications: null
)
```

