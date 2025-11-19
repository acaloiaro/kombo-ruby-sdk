# Kombo::GetIntegrationsIntegrationIdCustomFieldsPositiveResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **results** | [**Array&lt;GetIntegrationsIntegrationIdCustomFieldsPositiveResponseDataResultsInner&gt;**](GetIntegrationsIntegrationIdCustomFieldsPositiveResponseDataResultsInner.md) |  |  |
| **next_cursor** | **String** | **(⚠️ Deprecated - Use &#x60;next&#x60; instead.)** Cursor string that can be passed to the &#x60;cursor&#x60; query parameter to get the next page. If this is &#x60;null&#x60;, then there are no more pages. |  |
| **_next** | **String** | Cursor string that can be passed to the &#x60;cursor&#x60; query parameter to get the next page. If this is &#x60;null&#x60;, then there are no more pages. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetIntegrationsIntegrationIdCustomFieldsPositiveResponseData.new(
  results: null,
  next_cursor: null,
  _next: null
)
```

