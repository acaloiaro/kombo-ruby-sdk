# Kombo::Schema2AnyOf6

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** |  |  |
| **required** | **Boolean** |  |  |
| **description** | **String** |  | [optional] |
| **unified_key** | **String** |  | [optional] |
| **type** | **String** |  |  |
| **properties** | [**Hash&lt;String, Schema1Value&gt;**](Schema1Value.md) |  |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::Schema2AnyOf6.new(
  label: null,
  required: null,
  description: null,
  unified_key: null,
  type: null,
  properties: null
)
```

