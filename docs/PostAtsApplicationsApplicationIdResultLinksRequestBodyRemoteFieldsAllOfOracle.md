# Kombo::PostAtsApplicationsApplicationIdResultLinksRequestBodyRemoteFieldsAllOfOracle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **override_document_category** | **String** | Allows you to override the document category for the url. (Default: MISC) | [optional] |
| **multi_post_to_all_current_applications** | **Boolean** | If true, the result link will be posted to all current applications for the candidate. | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostAtsApplicationsApplicationIdResultLinksRequestBodyRemoteFieldsAllOfOracle.new(
  override_document_category: null,
  multi_post_to_all_current_applications: null
)
```

