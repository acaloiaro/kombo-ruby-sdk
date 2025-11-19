# Kombo::DataChangedWebhookPayloadData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_id** | **String** | The unique identifier of the integration. |  |
| **integration_tool** | **String** | The name of the integrated tool (e.g., \&quot;personio\&quot;, \&quot;greenhouse\&quot;). |  |
| **integration_category** | **String** | The category of the integration (HRIS, ATS, or ASSESSMENT). |  |
| **changed_models** | [**Array&lt;DataChangedWebhookPayloadDataChangedModelsInner&gt;**](DataChangedWebhookPayloadDataChangedModelsInner.md) | List of data models and connections for which one or more records were created, updated, or deleted. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::DataChangedWebhookPayloadData.new(
  integration_id: null,
  integration_tool: null,
  integration_category: null,
  changed_models: null
)
```

