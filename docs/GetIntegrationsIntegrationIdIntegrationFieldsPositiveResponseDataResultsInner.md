# Kombo::GetIntegrationsIntegrationIdIntegrationFieldsPositiveResponseDataResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID of the field. |  |
| **key** | **String** | The key of the field in the remote system. |  |
| **model** | **String** | The model the field is associated with. |  |
| **type** | **String** | The type of the integration field. There is a type to avoid collisions between DEFAULT fields and CUSTOM fields with the same key. |  |
| **label** | **String** | The label of the field in the remote system. |  |
| **is_passthrough_enabled** | **Boolean** | Whether the field is included in the integrations_fields array of the corresponding model. |  |
| **is_writable** | **Boolean** | This field is related to a deprecated feature and means nothing, but is kept for backwards compatibility. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetIntegrationsIntegrationIdIntegrationFieldsPositiveResponseDataResultsInner.new(
  id: null,
  key: null,
  model: null,
  type: null,
  label: null,
  is_passthrough_enabled: null,
  is_writable: null
)
```

