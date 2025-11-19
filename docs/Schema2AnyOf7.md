# Kombo::Schema2AnyOf7

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** |  |  |
| **required** | **Boolean** |  |  |
| **description** | **String** |  | [optional] |
| **unified_key** | **String** |  | [optional] |
| **type** | **String** |  |  |
| **item_type** | [**Schema2**](Schema2.md) |  |  |
| **min_items** | **Float** |  | [optional] |
| **max_items** | **Float** |  | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::Schema2AnyOf7.new(
  label: null,
  required: null,
  description: null,
  unified_key: null,
  type: null,
  item_type: null,
  min_items: null,
  max_items: null
)
```

