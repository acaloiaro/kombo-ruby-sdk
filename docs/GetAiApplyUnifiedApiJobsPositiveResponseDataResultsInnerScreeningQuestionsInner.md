# Kombo::GetAiApplyUnifiedApiJobsPositiveResponseDataResultsInnerScreeningQuestionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **remote_id** | **String** |  |  |
| **title** | **String** |  |  |
| **description** | **String** |  |  |
| **format** | [**GetAtsJobsPositiveResponseDataResultsInnerScreeningQuestionsInnerFormat**](GetAtsJobsPositiveResponseDataResultsInnerScreeningQuestionsInnerFormat.md) |  | [optional] |
| **category** | **String** |  |  |
| **index** | **Integer** |  | [optional] |
| **required** | **Boolean** |  |  |
| **precondition_question_id** | **String** |  | [optional] |
| **precondition_options** | [**GetAiApplyUnifiedApiJobsPositiveResponseDataResultsInnerScreeningQuestionsInnerPreconditionOptions**](GetAiApplyUnifiedApiJobsPositiveResponseDataResultsInnerScreeningQuestionsInnerPreconditionOptions.md) |  | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetAiApplyUnifiedApiJobsPositiveResponseDataResultsInnerScreeningQuestionsInner.new(
  id: null,
  remote_id: null,
  title: null,
  description: null,
  format: null,
  category: null,
  index: null,
  required: null,
  precondition_question_id: null,
  precondition_options: null
)
```

