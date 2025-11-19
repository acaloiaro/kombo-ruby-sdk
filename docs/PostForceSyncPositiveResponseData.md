# Kombo::PostForceSyncPositiveResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **already_queued** | **Boolean** | We only allow 1 concurrent sync to be running or queued. |  |
| **sync_id** | **String** | ID of the newly-created or already-queued-or-running sync. |  |
| **type** | **String** | The type of the triggered sync. May differ from request, if the integration does not support delta syncs or if another sync is already running. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostForceSyncPositiveResponseData.new(
  already_queued: null,
  sync_id: null,
  type: null
)
```

