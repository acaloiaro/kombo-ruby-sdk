# Kombo::AssessmentOrderReceivedWebhookPayloadDataCandidate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The candidate&#39;s email address. |  |
| **first_name** | **String** | The candidate&#39;s first name. | [optional] |
| **last_name** | **String** | The candidate&#39;s last name. | [optional] |
| **phone** | **String** | The candidate&#39;s phone number. | [optional] |
| **remote_id** | **String** | The candidate&#39;s identifier in the integrated system. | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::AssessmentOrderReceivedWebhookPayloadDataCandidate.new(
  email: null,
  first_name: null,
  last_name: null,
  phone: null,
  remote_id: null
)
```

