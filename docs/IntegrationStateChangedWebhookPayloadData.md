# Kombo::IntegrationStateChangedWebhookPayloadData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_tool** | **String** | The name of the integrated tool (e.g., \&quot;personio\&quot;, \&quot;greenhouse\&quot;). |  |
| **integration_id** | **String** | The unique identifier of the integration. |  |
| **integration_category** | **String** | The category of the integration (HRIS, ATS, or ASSESSMENT). |  |
| **end_user** | [**ConnectionFlowFailedWebhookPayloadDataEndUser**](ConnectionFlowFailedWebhookPayloadDataEndUser.md) |  |  |
| **qa_status** | **String** | The quality assurance status of the integration. |  |
| **state** | **String** | The current state of the integration. |  |
| **updated_at** | **Time** | ISO 8601 timestamp when the integration state was last updated. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::IntegrationStateChangedWebhookPayloadData.new(
  integration_tool: null,
  integration_id: null,
  integration_category: null,
  end_user: null,
  qa_status: null,
  state: null,
  updated_at: null
)
```

