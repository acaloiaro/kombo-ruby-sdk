# Kombo::PostAtsCandidatesRequestBodyScreeningQuestionAnswersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **question_id** | **String** | ID of the question returned by the Kombo API. We&#39;ll report a warning in the logs if the question can&#39;t be found on the job. |  |
| **answer** | [**PostAtsCandidatesRequestBodyScreeningQuestionAnswersInnerAnswer**](PostAtsCandidatesRequestBodyScreeningQuestionAnswersInnerAnswer.md) |  |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostAtsCandidatesRequestBodyScreeningQuestionAnswersInner.new(
  question_id: null,
  answer: null
)
```

