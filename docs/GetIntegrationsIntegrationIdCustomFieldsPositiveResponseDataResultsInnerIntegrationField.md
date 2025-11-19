# Kombo::GetIntegrationsIntegrationIdCustomFieldsPositiveResponseDataResultsInnerIntegrationField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The integration field&#39;s unique ID |  |
| **key** | **String** | The key of the integration field in the remote system |  |
| **type** | **String** | The type of the integration field. There is a type to avoid collisions between DEFAULT fields and CUSTOM fields with the same key. |  |
| **label** | **String** | The label of the integration field in the remote system |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetIntegrationsIntegrationIdCustomFieldsPositiveResponseDataResultsInnerIntegrationField.new(
  id: null,
  key: null,
  type: null,
  label: null
)
```

