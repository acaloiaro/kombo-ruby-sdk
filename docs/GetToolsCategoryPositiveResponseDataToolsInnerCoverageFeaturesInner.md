# Kombo::GetToolsCategoryPositiveResponseDataToolsInnerCoverageFeaturesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **label** | **String** |  |  |
| **coverage_status** | **String** | The status of a datapoint of an integrated tool:  - &#x60;SUPPORTED&#x60;: the tool supports the datapoint and it can be used through Kombo. - &#x60;UNSUPPORTED&#x60;: the tool does not support the datapoint. - &#x60;NOT_IMPLEMENTED&#x60;: tool supports the datapoint but it was not integrated by Kombo for a given reason (see coverage grid). - &#x60;UNKNOWN&#x60;: the datapoint is not integrated yet and Kombo has no information about it&#39;s availability in the tool. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetToolsCategoryPositiveResponseDataToolsInnerCoverageFeaturesInner.new(
  id: null,
  label: null,
  coverage_status: null
)
```

