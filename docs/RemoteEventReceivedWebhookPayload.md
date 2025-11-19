# Kombo::RemoteEventReceivedWebhookPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for this webhook event |  |
| **type** | **String** | Type of the webhook event |  |
| **data** | [**RemoteEventReceivedWebhookPayloadData**](RemoteEventReceivedWebhookPayloadData.md) |  |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::RemoteEventReceivedWebhookPayload.new(
  id: null,
  type: null,
  data: null
)
```

