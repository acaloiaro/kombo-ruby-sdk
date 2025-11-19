# Kombo::PostAtsApplicationsApplicationIdRejectRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rejection_reason_id** | **String** | The Kombo ID of the rejection reason. |  |
| **note** | **String** | A optional free text rejection note. Passed through if possible. | [optional] |
| **remote_fields** | [**PostAtsApplicationsApplicationIdRejectRequestBodyRemoteFields**](PostAtsApplicationsApplicationIdRejectRequestBodyRemoteFields.md) |  | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostAtsApplicationsApplicationIdRejectRequestBody.new(
  rejection_reason_id: null,
  note: null,
  remote_fields: null
)
```

