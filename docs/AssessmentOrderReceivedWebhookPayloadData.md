# Kombo::AssessmentOrderReceivedWebhookPayloadData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the assessment order. |  |
| **package_id** | **String** | The identifier of the assessment package. |  |
| **status** | **String** | The current status of the assessment order. |  |
| **integration_id** | **String** | The unique identifier of the integration. |  |
| **candidate** | [**AssessmentOrderReceivedWebhookPayloadDataCandidate**](AssessmentOrderReceivedWebhookPayloadDataCandidate.md) |  |  |
| **application** | [**AssessmentOrderReceivedWebhookPayloadDataApplication**](AssessmentOrderReceivedWebhookPayloadDataApplication.md) |  |  |
| **job** | [**AssessmentOrderReceivedWebhookPayloadDataJob**](AssessmentOrderReceivedWebhookPayloadDataJob.md) |  |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::AssessmentOrderReceivedWebhookPayloadData.new(
  id: null,
  package_id: null,
  status: null,
  integration_id: null,
  candidate: null,
  application: null,
  job: null
)
```

