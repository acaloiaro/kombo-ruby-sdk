# Kombo::IntegrationCreatedWebhookPayloadData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the newly created integration. |  |
| **tool** | **String** | The name of the integrated tool. |  |
| **category** | **String** | The category of the integration. |  |
| **end_user** | [**ConnectionFlowFailedWebhookPayloadDataEndUser**](ConnectionFlowFailedWebhookPayloadDataEndUser.md) |  |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::IntegrationCreatedWebhookPayloadData.new(
  id: null,
  tool: null,
  category: null,
  end_user: null
)
```

