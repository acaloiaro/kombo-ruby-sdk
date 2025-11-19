# Kombo::SyncFinishedWebhookPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for this webhook event |  |
| **type** | **String** | Type of the webhook event |  |
| **data** | [**SyncFinishedWebhookPayloadData**](SyncFinishedWebhookPayloadData.md) |  |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::SyncFinishedWebhookPayload.new(
  id: null,
  type: null,
  data: null
)
```

