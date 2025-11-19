# Kombo::ConnectionFlowFailedWebhookPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for this webhook event |  |
| **type** | **String** | Type of the webhook event |  |
| **data** | [**ConnectionFlowFailedWebhookPayloadData**](ConnectionFlowFailedWebhookPayloadData.md) |  |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::ConnectionFlowFailedWebhookPayload.new(
  id: null,
  type: null,
  data: null
)
```

