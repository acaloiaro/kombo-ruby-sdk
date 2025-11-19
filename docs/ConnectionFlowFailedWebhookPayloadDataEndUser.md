# Kombo::ConnectionFlowFailedWebhookPayloadDataEndUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization_name** | **String** | The name of the organization that owns the integration. |  |
| **creator_email** | **String** | The email address of the user who created the integration. |  |
| **origin_id** | **String** | The unique identifier of the organization in the integrated system. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::ConnectionFlowFailedWebhookPayloadDataEndUser.new(
  organization_name: null,
  creator_email: null,
  origin_id: null
)
```

