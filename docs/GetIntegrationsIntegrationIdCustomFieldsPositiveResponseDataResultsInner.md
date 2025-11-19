# Kombo::GetIntegrationsIntegrationIdCustomFieldsPositiveResponseDataResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID of the field |  |
| **key** | **String** | The key of the custom field as it will be used in the custom_field object of the corresponding model |  |
| **integration_field** | [**GetIntegrationsIntegrationIdCustomFieldsPositiveResponseDataResultsInnerIntegrationField**](GetIntegrationsIntegrationIdCustomFieldsPositiveResponseDataResultsInnerIntegrationField.md) |  |  |
| **model** | **String** | The model the field is associated with |  |
| **label** | **String** | The label of the custom field |  |
| **description** | **String** | The description of the custom field |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetIntegrationsIntegrationIdCustomFieldsPositiveResponseDataResultsInner.new(
  id: null,
  key: null,
  integration_field: null,
  model: null,
  label: null,
  description: null
)
```

