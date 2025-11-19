# Kombo::GetCustomDatevDataPushesPositiveResponseDataDataPushesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** | Type of the executed data push. |  |
| **created_at** | **Time** | Date when the push-data endpoint was called. |  |
| **upload_jobs** | [**Array&lt;GetCustomDatevDataPushesPositiveResponseDataDataPushesInnerUploadJobsInner&gt;**](GetCustomDatevDataPushesPositiveResponseDataDataPushesInnerUploadJobsInner.md) | List of all the submitted files. This can include multiple files if data was edited for multiple months. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetCustomDatevDataPushesPositiveResponseDataDataPushesInner.new(
  id: null,
  type: null,
  created_at: null,
  upload_jobs: null
)
```

