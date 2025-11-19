# Kombo::AiApplyJobPostingStatusUpdatedWebhookPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for this webhook event |  |
| **type** | **String** | Type of the webhook event |  |
| **data** | [**AiApplyJobPostingStatusUpdatedWebhookPayloadData**](AiApplyJobPostingStatusUpdatedWebhookPayloadData.md) |  |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::AiApplyJobPostingStatusUpdatedWebhookPayload.new(
  id: null,
  type: null,
  data: null
)
```

