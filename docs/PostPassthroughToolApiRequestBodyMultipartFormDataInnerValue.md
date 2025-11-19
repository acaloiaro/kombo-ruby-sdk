# Kombo::PostPassthroughToolApiRequestBodyMultipartFormDataInnerValue

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'kombo_client'

Kombo::PostPassthroughToolApiRequestBodyMultipartFormDataInnerValue.openapi_one_of
# =>
# [
#   :'PostPassthroughToolApiRequestBodyMultipartFormDataInnerValueOneOf',
#   :'String'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'kombo_client'

Kombo::PostPassthroughToolApiRequestBodyMultipartFormDataInnerValue.build(data)
# => #<PostPassthroughToolApiRequestBodyMultipartFormDataInnerValueOneOf:0x00007fdd4aab02a0>

Kombo::PostPassthroughToolApiRequestBodyMultipartFormDataInnerValue.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PostPassthroughToolApiRequestBodyMultipartFormDataInnerValueOneOf`
- `String`
- `nil` (if no type matches)

