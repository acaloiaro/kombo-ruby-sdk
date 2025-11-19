# Kombo::Schema1Value

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** |  |  |
| **required** | **Boolean** |  |  |
| **description** | **String** |  | [optional] |
| **unified_key** | **String** |  | [optional] |
| **type** | **String** |  |  |
| **min_length** | **Float** |  | [optional] |
| **max_length** | **Float** |  | [optional] |
| **reg_exp** | **String** |  | [optional] |
| **min** | **Float** |  | [optional] |
| **max** | **Float** |  | [optional] |
| **options** | [**Schema2AnyOf3Options**](Schema2AnyOf3Options.md) |  |  |
| **min_items** | **Float** |  | [optional] |
| **max_items** | **Float** |  | [optional] |
| **properties** | [**Hash&lt;String, Schema1Value&gt;**](Schema1Value.md) |  |  |
| **item_type** | [**Schema2**](Schema2.md) |  |  |
| **file_restrictions** | [**Schema2AnyOf8FileRestrictions**](Schema2AnyOf8FileRestrictions.md) |  |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::Schema1Value.new(
  label: null,
  required: null,
  description: null,
  unified_key: null,
  type: null,
  min_length: null,
  max_length: null,
  reg_exp: null,
  min: null,
  max: null,
  options: null,
  min_items: null,
  max_items: null,
  properties: null,
  item_type: null,
  file_restrictions: null
)
```

