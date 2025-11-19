# Kombo::SyncFinishedWebhookPayloadData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sync_id** | **String** | The unique identifier of the sync operation. |  |
| **sync_state** | **String** | The final state of the sync operation (e.g., &#x60;SUCCEEDED&#x60;, &#x60;FAILED&#x60;). |  |
| **sync_started_at** | **Time** | ISO 8601 timestamp when the sync operation started. |  |
| **sync_ended_at** | **Time** | ISO 8601 timestamp when the sync operation completed. |  |
| **sync_duration_seconds** | **Integer** | Duration of the sync operation in seconds. |  |
| **integration_id** | **String** | The unique identifier of the integration. |  |
| **integration_tool** | **String** | The name of the integrated tool (e.g., \&quot;personio\&quot;, \&quot;greenhouse\&quot;). |  |
| **integration_category** | **String** | The category of the integration (HRIS, ATS, or ASSESSMENT). |  |
| **end_user** | [**ConnectionFlowFailedWebhookPayloadDataEndUser**](ConnectionFlowFailedWebhookPayloadDataEndUser.md) |  |  |
| **log_url** | **String** | URL to view detailed logs for the operation. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::SyncFinishedWebhookPayloadData.new(
  sync_id: null,
  sync_state: null,
  sync_started_at: null,
  sync_ended_at: null,
  sync_duration_seconds: null,
  integration_id: null,
  integration_tool: null,
  integration_category: null,
  end_user: null,
  log_url: null
)
```

