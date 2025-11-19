# Kombo::InlineObject2Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Some errors include an error code that can be used to identify their cause. See the [Error Handling Docs](https://docs.kombo.dev/guides/errors) for more information. For your error handling logic please use the error &#x60;code&#x60; instead of other properties (e.g. message, http status code, ...). |  |
| **title** | **String** | A static, human-readable label. |  |
| **message** | **String** | A dynamic, detailed description of what went wrong in this specific instance. |  |
| **log_url** | **String** | The log page in the Kombo UI lists every interaction with full details. If you need assistance, share that link with our support team. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::InlineObject2Error.new(
  code: ATS.JOB_CLOSED,
  title: null,
  message: null,
  log_url: null
)
```

