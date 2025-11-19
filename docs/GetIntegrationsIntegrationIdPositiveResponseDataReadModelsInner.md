# Kombo::GetIntegrationsIntegrationIdPositiveResponseDataReadModelsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the model (e.g. hris_employees). |  |
| **label** | **String** | Label of the model (e.g. Employees). |  |
| **is_available** | **Boolean** | Whether the datapoint is available and enabled and not opted out of. |  |
| **coverage_status** | **String** | The status of a datapoint of an integrated tool:  - &#x60;SUPPORTED&#x60;: the tool supports the datapoint and it can be used through Kombo. - &#x60;UNSUPPORTED&#x60;: the tool does not support the datapoint. - &#x60;NOT_IMPLEMENTED&#x60;: tool supports the datapoint but it was not integrated by Kombo for a given reason (see coverage grid). - &#x60;UNKNOWN&#x60;: the datapoint is not integrated yet and Kombo has no information about it&#39;s availability in the tool. |  |
| **scope_config_setting** | **String** | The setting of the datapoint in the scope config that you configured in the Kombo dashboard. |  |
| **opted_out_by_customer** | **Boolean** | Whether the datapoint is opted out by your customer in the connection flow. |  |
| **fields** | [**Array&lt;GetIntegrationsIntegrationIdPositiveResponseDataReadModelsInnerFieldsInner&gt;**](GetIntegrationsIntegrationIdPositiveResponseDataReadModelsInnerFieldsInner.md) |  |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetIntegrationsIntegrationIdPositiveResponseDataReadModelsInner.new(
  id: null,
  label: null,
  is_available: null,
  coverage_status: null,
  scope_config_setting: null,
  opted_out_by_customer: null,
  fields: null
)
```

