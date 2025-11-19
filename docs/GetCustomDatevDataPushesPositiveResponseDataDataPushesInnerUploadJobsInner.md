# Kombo::GetCustomDatevDataPushesPositiveResponseDataDataPushesInnerUploadJobsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **file_name** | **String** |  |  |
| **state** | **String** | If we were not able to send the file to DATEV, we will set the state \&quot;FAILED\&quot;. The other values are synced from DATEV for the respective import jobs. |  |
| **file** | **String** | Actual content of the file. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetCustomDatevDataPushesPositiveResponseDataDataPushesInnerUploadJobsInner.new(
  id: null,
  file_name: null,
  state: null,
  file: null
)
```

