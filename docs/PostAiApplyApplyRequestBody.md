# Kombo::PostAiApplyApplyRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **submission_token** | **String** | JWT token obtained from the POST /postings/:id/inquire endpoint. Valid for 12 hours. |  |
| **candidate_email** | **String** | The email address of the candidate. This is used for deduplication (preventing duplicate applications from the same candidate) and internal tracking purposes. This field is required but should not be displayed to the candidate on your application form - you should provide this from your own system. |  |
| **_query_params** | **Hash&lt;String, String&gt;** | Query parameters to be appended to the job posting URL when applying. | [optional] |
| **screening_question_answers** | [**Array&lt;PostAiApplyApplyRequestBodyScreeningQuestionAnswersInner&gt;**](PostAiApplyApplyRequestBodyScreeningQuestionAnswersInner.md) | Array of screening question answers. The answers need to match exactly with the questions you received on the POST /postings/:id/inquire endpoint. Otherwise, the application will be rejected. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostAiApplyApplyRequestBody.new(
  submission_token: null,
  candidate_email: null,
  _query_params: null,
  screening_question_answers: null
)
```

