# Kombo::Schema2AnyOf3OptionsAnyOfEntriesInnerRemoteId

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'kombo_client'

Kombo::Schema2AnyOf3OptionsAnyOfEntriesInnerRemoteId.openapi_one_of
# =>
# [
#   :'Float',
#   :'String'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'kombo_client'

Kombo::Schema2AnyOf3OptionsAnyOfEntriesInnerRemoteId.build(data)
# => #<Float:0x00007fdd4aab02a0>

Kombo::Schema2AnyOf3OptionsAnyOfEntriesInnerRemoteId.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Float`
- `String`
- `nil` (if no type matches)

