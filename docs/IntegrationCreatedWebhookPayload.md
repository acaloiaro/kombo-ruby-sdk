# Kombo::IntegrationCreatedWebhookPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for this webhook event |  |
| **type** | **String** | Type of the webhook event |  |
| **data** | [**IntegrationCreatedWebhookPayloadData**](IntegrationCreatedWebhookPayloadData.md) |  |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::IntegrationCreatedWebhookPayload.new(
  id: null,
  type: null,
  data: null
)
```

