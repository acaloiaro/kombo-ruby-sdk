# Kombo::PostPassthroughToolApiRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **method** | **String** | The HTTP method (e.g., &#x60;GET&#x60;) of the request. |  |
| **path** | **String** | The path of the endpoint you want to call. We automatically prepend the base URL of the API (all base URLs are documented in the endpoint description). |  |
| **headers** | **Hash&lt;String, String&gt;** | The headers to send with the request. Note that we automatically supply any authentication-related headers. | [optional] |
| **params** | **Hash&lt;String, String&gt;** | The query parameters to send in addition to the ones in the &#x60;path&#x60;. | [optional] |
| **data** | **Object** |  | [optional] |
| **response_as_base64** | **Boolean** | If set to &#x60;true&#x60;, the response will be returned as a base64-encoded string. This is useful for binary data (e.g., PDFs). | [optional] |
| **multipart_form_data** | [**Array&lt;PostPassthroughToolApiRequestBodyMultipartFormDataInner&gt;**](PostPassthroughToolApiRequestBodyMultipartFormDataInner.md) |  | [optional] |
| **api_options** | **Hash&lt;String, String&gt;** | Custom options interpreted by the passthrough API adapter you&#39;ve selected. These options are not documented right now as they&#39;re only for very advanced use cases. | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostPassthroughToolApiRequestBody.new(
  method: null,
  path: null,
  headers: null,
  params: null,
  data: null,
  response_as_base64: null,
  multipart_form_data: null,
  api_options: null
)
```

