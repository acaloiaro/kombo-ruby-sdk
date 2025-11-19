# Kombo::PutAtsApplicationsApplicationIdStageRequestBodyRemoteFieldsGreenhousePostHeaders

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **on_behalf_of** | **String** | ID of the the user that will show up as having performed the action in Greenhouse. We already pass a value by default, but you can use this to override it. | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PutAtsApplicationsApplicationIdStageRequestBodyRemoteFieldsGreenhousePostHeaders.new(
  on_behalf_of: null
)
```

