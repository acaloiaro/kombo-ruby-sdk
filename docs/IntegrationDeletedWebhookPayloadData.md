# Kombo::IntegrationDeletedWebhookPayloadData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the deleted integration. |  |
| **tool** | **String** | The name of the integrated tool. |  |
| **category** | **String** | The category of the integration. |  |
| **end_user** | [**ConnectionFlowFailedWebhookPayloadDataEndUser**](ConnectionFlowFailedWebhookPayloadDataEndUser.md) |  |  |
| **deleted_at** | **Time** | ISO 8601 timestamp when the integration was deleted. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::IntegrationDeletedWebhookPayloadData.new(
  id: null,
  tool: null,
  category: null,
  end_user: null,
  deleted_at: null
)
```

