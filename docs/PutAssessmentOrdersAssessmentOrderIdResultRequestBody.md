# Kombo::PutAssessmentOrdersAssessmentOrderIdResultRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Status of the assessment.  **Please note the &#x60;status&#x60; can only be updated to a different value if its current value is &#x60;OPEN&#x60;.** |  |
| **result_url** | **String** |  |  |
| **completed_at** | **Time** | YYYY-MM-DDTHH:mm:ss.sssZ  **Please make sure this value is provided when the &#x60;status&#x60; is of the type &#x60;COMPLETED&#x60; or &#x60;CANCELLED&#x60;.** | [optional] |
| **score** | **Float** |  | [optional] |
| **max_score** | **Float** |  | [optional] |
| **attributes** | [**Array&lt;PutAssessmentOrdersAssessmentOrderIdResultRequestBodyAttributesInner&gt;**](PutAssessmentOrdersAssessmentOrderIdResultRequestBodyAttributesInner.md) | An array of additional attributes that you would like to submit as a part of the assessment result.  - If an ATS only supports writing text attributes, we will transform non &#x60;TEXT&#x60; attributes into formatted plain text values. | [optional] |
| **attachments** | [**Array&lt;PostPassthroughToolApiRequestBodyMultipartFormDataInnerValueOneOf&gt;**](PostPassthroughToolApiRequestBodyMultipartFormDataInnerValueOneOf.md) | An array of attachments containing the assessment result. | [optional] |
| **remote_fields** | [**PutAssessmentOrdersAssessmentOrderIdResultRequestBodyRemoteFields**](PutAssessmentOrdersAssessmentOrderIdResultRequestBodyRemoteFields.md) |  | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PutAssessmentOrdersAssessmentOrderIdResultRequestBody.new(
  status: null,
  result_url: null,
  completed_at: null,
  score: null,
  max_score: null,
  attributes: null,
  attachments: null,
  remote_fields: null
)
```

