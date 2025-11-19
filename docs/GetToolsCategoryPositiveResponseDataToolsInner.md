# Kombo::GetToolsCategoryPositiveResponseDataToolsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **label** | **String** |  |  |
| **internal_label** | **String** | Internal label that can help you debug specific variants of the integration. Only show the &#x60;label&#x60; to your users. |  |
| **assets** | [**GetToolsCategoryPositiveResponseDataToolsInnerAssets**](GetToolsCategoryPositiveResponseDataToolsInnerAssets.md) |  |  |
| **paid_api_details_markdown** | **String** | Markdown formatted text that describes details about the paid API. &#x60;null&#x60; if the tool is not paid. |  |
| **fast_track_details_markdown** | **String** | Markdown formatted text that describes details about the fast track process. &#x60;null&#x60; if the fast track process is not available. |  |
| **partner_only_details_markdown** | **String** | Markdown formatted text that describes partnership requirements. &#x60;null&#x60; if the tool does not require a partnership. |  |
| **connection_guide_url** | **String** | URL to the connection guide for this tool. &#x60;null&#x60; if no connection guide is available. |  |
| **coverage** | [**GetToolsCategoryPositiveResponseDataToolsInnerCoverage**](GetToolsCategoryPositiveResponseDataToolsInnerCoverage.md) |  |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetToolsCategoryPositiveResponseDataToolsInner.new(
  id: null,
  label: null,
  internal_label: null,
  assets: null,
  paid_api_details_markdown: null,
  fast_track_details_markdown: null,
  partner_only_details_markdown: null,
  connection_guide_url: null,
  coverage: null
)
```

