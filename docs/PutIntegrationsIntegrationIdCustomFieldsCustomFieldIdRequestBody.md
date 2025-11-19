# Kombo::PutIntegrationsIntegrationIdCustomFieldsCustomFieldIdRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_field_id** | **String** | The integration field&#39;s unique ID which the custom field should be mapped to. Null to remove a mapping. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PutIntegrationsIntegrationIdCustomFieldsCustomFieldIdRequestBody.new(
  integration_field_id: null
)
```

