# Kombo::PutAtsApplicationsApplicationIdStageRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage_id** | **String** | The Kombo ID of the stage to move the application to. This stage must be allowed for the job that the application is connected to. Get available stages from the &#x60;stages&#x60; property on the job, not from the deprecated application-stages endpoint. |  |
| **remote_fields** | [**PutAtsApplicationsApplicationIdStageRequestBodyRemoteFields**](PutAtsApplicationsApplicationIdStageRequestBodyRemoteFields.md) |  | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PutAtsApplicationsApplicationIdStageRequestBody.new(
  stage_id: null,
  remote_fields: null
)
```

