# Kombo::IntegrationStateChangedWebhookPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for this webhook event |  |
| **type** | **String** | Type of the webhook event |  |
| **data** | [**IntegrationStateChangedWebhookPayloadData**](IntegrationStateChangedWebhookPayloadData.md) |  |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::IntegrationStateChangedWebhookPayload.new(
  id: null,
  type: null,
  data: null
)
```

