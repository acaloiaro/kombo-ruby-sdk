# Kombo::ConnectionFlowFailedWebhookPayloadData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_tool** | **String** | The name of the integrated tool (e.g., \&quot;personio\&quot;, \&quot;greenhouse\&quot;). |  |
| **integration_category** | **String** | The category of the integration (HRIS, ATS, or ASSESSMENT). |  |
| **end_user** | [**ConnectionFlowFailedWebhookPayloadDataEndUser**](ConnectionFlowFailedWebhookPayloadDataEndUser.md) |  |  |
| **log_url** | **String** | URL to view detailed logs for the operation. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::ConnectionFlowFailedWebhookPayloadData.new(
  integration_tool: null,
  integration_category: null,
  end_user: null,
  log_url: null
)
```

