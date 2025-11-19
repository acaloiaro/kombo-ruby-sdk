# Kombo::IntegrationDeletedWebhookPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for this webhook event |  |
| **type** | **String** | Type of the webhook event |  |
| **data** | [**IntegrationDeletedWebhookPayloadData**](IntegrationDeletedWebhookPayloadData.md) |  |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::IntegrationDeletedWebhookPayload.new(
  id: null,
  type: null,
  data: null
)
```

