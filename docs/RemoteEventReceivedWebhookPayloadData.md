# Kombo::RemoteEventReceivedWebhookPayloadData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_id** | **String** | The unique identifier of the integration. |  |
| **integration_tool** | **String** | The name of the integrated tool (e.g., \&quot;personio\&quot;, \&quot;greenhouse\&quot;). |  |
| **integration_category** | **String** | The category of the integration (HRIS, ATS, or ASSESSMENT). |  |
| **end_user** | [**ConnectionFlowFailedWebhookPayloadDataEndUser**](ConnectionFlowFailedWebhookPayloadDataEndUser.md) |  |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::RemoteEventReceivedWebhookPayloadData.new(
  integration_id: null,
  integration_tool: null,
  integration_category: null,
  end_user: null
)
```

