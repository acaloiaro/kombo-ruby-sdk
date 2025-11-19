# Kombo::GetAtsJobsPositiveResponseDataResultsInnerScreeningQuestionsInnerFormatAnyOf3OptionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The Kombo ID of this question option. Use this ID to specify the answer to this question. |  |
| **remote_id** | **String** | ID in the connected ATS. This might be null as some systems only use the name to identify the option. | [optional] |
| **name** | **String** | Content of the question option. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetAtsJobsPositiveResponseDataResultsInnerScreeningQuestionsInnerFormatAnyOf3OptionsInner.new(
  id: null,
  remote_id: null,
  name: null
)
```

