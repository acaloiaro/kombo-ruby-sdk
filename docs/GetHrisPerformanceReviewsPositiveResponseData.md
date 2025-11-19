# Kombo::GetHrisPerformanceReviewsPositiveResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_next** | **String** | Cursor string that can be passed to the &#x60;cursor&#x60; query parameter to get the next page. If this is &#x60;null&#x60;, then there are no more pages. |  |
| **results** | [**Array&lt;GetHrisPerformanceReviewsPositiveResponseDataResultsInner&gt;**](GetHrisPerformanceReviewsPositiveResponseDataResultsInner.md) |  |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetHrisPerformanceReviewsPositiveResponseData.new(
  _next: null,
  results: null
)
```

