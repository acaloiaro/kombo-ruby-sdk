# Kombo::PostPassthroughToolApiPositiveResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The full URL of the request that we automatically assemble for you based on the specified &#x60;api&#x60;, the specified &#x60;path&#x60;, and the integration&#39;s auth credentials. You can use this to debug path-related issues (e.g., the API returning 404 errors). |  |
| **status** | **Integer** | The HTTP status code returned from the remote system. |  |
| **headers** | [**Hash&lt;String, PostPassthroughToolApiPositiveResponseDataHeadersValue&gt;**](PostPassthroughToolApiPositiveResponseDataHeadersValue.md) | The HTTP headers returned from the remote system. |  |
| **data** | **Object** |  | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostPassthroughToolApiPositiveResponseData.new(
  url: null,
  status: null,
  headers: null,
  data: null
)
```

