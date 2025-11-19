# Kombo::AssessmentOrderReceivedWebhookPayloadDataJob

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The job&#39;s identifier in the integrated system. | [optional] |
| **name** | **String** | The job title. | [optional] |
| **location** | [**AssessmentOrderReceivedWebhookPayloadDataJobLocation**](AssessmentOrderReceivedWebhookPayloadDataJobLocation.md) |  | [optional] |
| **hiring_team** | [**Array&lt;AssessmentOrderReceivedWebhookPayloadDataJobHiringTeamInner&gt;**](AssessmentOrderReceivedWebhookPayloadDataJobHiringTeamInner.md) | The hiring team allows you to sync users into your system who can access the job and its applications. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::AssessmentOrderReceivedWebhookPayloadDataJob.new(
  remote_id: null,
  name: null,
  location: null,
  hiring_team: null
)
```

