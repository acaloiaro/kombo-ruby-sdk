# Kombo::GetHrisEmployeesPositiveResponseDataResultsInnerIntegrationFieldsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The globally unique ID of this object. |  |
| **key** | **String** | The key of the field in the remote system. |  |
| **type** | **String** | - &#x60;DEFAULT&#x60;: static fields in the remote system. - &#x60;CUSTOM&#x60;: fields that are created/editable by the user. |  |
| **value** | [**Null**](Null.md) | The field&#39;s value. | [optional] |
| **label** | **String** | The label of the field. (not always available) |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetHrisEmployeesPositiveResponseDataResultsInnerIntegrationFieldsInner.new(
  id: null,
  key: null,
  type: null,
  value: null,
  label: null
)
```

