# Kombo::PostAiApplyPostingsPostingIdInquirePositiveResponseDataApplicationFormInnerAnyOfDisplayWhenAnswerEquals

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'kombo_client'

Kombo::PostAiApplyPostingsPostingIdInquirePositiveResponseDataApplicationFormInnerAnyOfDisplayWhenAnswerEquals.openapi_one_of
# =>
# [
#   :'Array<String>',
#   :'Boolean',
#   :'Float',
#   :'PostAiApplyPostingsPostingIdInquirePositiveResponseDataApplicationFormInnerAnyOfDisplayWhenAnswerEqualsOneOf',
#   :'String'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'kombo_client'

Kombo::PostAiApplyPostingsPostingIdInquirePositiveResponseDataApplicationFormInnerAnyOfDisplayWhenAnswerEquals.build(data)
# => #<Array<String>:0x00007fdd4aab02a0>

Kombo::PostAiApplyPostingsPostingIdInquirePositiveResponseDataApplicationFormInnerAnyOfDisplayWhenAnswerEquals.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Array<String>`
- `Boolean`
- `Float`
- `PostAiApplyPostingsPostingIdInquirePositiveResponseDataApplicationFormInnerAnyOfDisplayWhenAnswerEqualsOneOf`
- `String`
- `nil` (if no type matches)

