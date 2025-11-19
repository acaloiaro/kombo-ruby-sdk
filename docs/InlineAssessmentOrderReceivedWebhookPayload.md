# Kombo::InlineAssessmentOrderReceivedWebhookPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for this webhook event |  |
| **type** | **String** | Type of the webhook event |  |
| **data** | [**AssessmentOrderReceivedWebhookPayloadData**](AssessmentOrderReceivedWebhookPayloadData.md) |  |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::InlineAssessmentOrderReceivedWebhookPayload.new(
  id: null,
  type: null,
  data: null
)
```

