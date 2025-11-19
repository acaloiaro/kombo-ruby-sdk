# Kombo::Schema2AnyOf

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

## Example

```ruby
require 'kombo_client'

instance = Kombo::Schema2AnyOf.new(
  label: null,
  required: null,
  description: null,
  unified_key: null,
  type: null,
  min_length: null,
  max_length: null,
  reg_exp: null
)
```

