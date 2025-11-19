# Kombo::PostHrisEmployeesPositiveResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  |  |
| **data** | [**PostHrisEmployeesPositiveResponseData**](PostHrisEmployeesPositiveResponseData.md) |  |  |
| **warnings** | [**Array&lt;PostPassthroughToolApiPositiveResponseWarningsInner&gt;**](PostPassthroughToolApiPositiveResponseWarningsInner.md) | These are the interaction warnings that are shown in the dashboard. They are meant to provide debug information to you. We recommend logging them to the console. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostHrisEmployeesPositiveResponse.new(
  status: null,
  data: null,
  warnings: null
)
```

