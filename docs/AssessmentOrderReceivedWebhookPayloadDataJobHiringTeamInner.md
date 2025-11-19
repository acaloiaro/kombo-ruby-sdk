# Kombo::AssessmentOrderReceivedWebhookPayloadDataJobHiringTeamInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The team member&#39;s identifier in the integrated system. |  |
| **email** | **String** | The team member&#39;s email address. |  |
| **first_name** | **String** | The team member&#39;s first name. |  |
| **last_name** | **String** | The team member&#39;s last name. |  |
| **hiring_team_roles** | **Array&lt;String&gt;** | Array of the roles of the user for this specific job. Currently only &#x60;RECRUITER&#x60; and &#x60;HIRING_MANAGER&#x60; are mapped into our unified schema. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::AssessmentOrderReceivedWebhookPayloadDataJobHiringTeamInner.new(
  remote_id: null,
  email: null,
  first_name: null,
  last_name: null,
  hiring_team_roles: null
)
```

