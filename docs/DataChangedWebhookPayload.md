# Kombo::DataChangedWebhookPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for this webhook event |  |
| **type** | **String** | Type of the webhook event |  |
| **data** | [**DataChangedWebhookPayloadData**](DataChangedWebhookPayloadData.md) |  |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::DataChangedWebhookPayload.new(
  id: null,
  type: null,
  data: null
)
```

