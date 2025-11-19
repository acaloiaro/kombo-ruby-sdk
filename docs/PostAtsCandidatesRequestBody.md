# Kombo::PostAtsCandidatesRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **candidate** | [**PostAtsCandidatesRequestBodyCandidate**](PostAtsCandidatesRequestBodyCandidate.md) |  |  |
| **application** | [**PostAtsCandidatesRequestBodyApplication**](PostAtsCandidatesRequestBodyApplication.md) |  |  |
| **screening_question_answers** | [**Array&lt;PostAtsCandidatesRequestBodyScreeningQuestionAnswersInner&gt;**](PostAtsCandidatesRequestBodyScreeningQuestionAnswersInner.md) | Array of answers to screening questions. Currently, not all question types are supported, and unsupported ones will not be submitted.  The available questions for a job can be retrieved from the get jobs endpoint. The answers will be validated based on the format of the questions. Make sure to follow this schema to avoid errors. | [optional] |
| **attachments** | [**Array&lt;PostAtsApplicationsApplicationIdAttachmentsRequestBodyAttachment&gt;**](PostAtsApplicationsApplicationIdAttachmentsRequestBodyAttachment.md) | An array of the attachments you would like upload. | [optional] |
| **source** | [**PostAtsCandidatesRequestBodySource**](PostAtsCandidatesRequestBodySource.md) |  | [optional] |
| **sourced_by** | [**PostAtsCandidatesRequestBodySourcedBy**](PostAtsCandidatesRequestBodySourcedBy.md) |  | [optional] |
| **gdpr_consent** | [**PostAtsCandidatesRequestBodyGdprConsent**](PostAtsCandidatesRequestBodyGdprConsent.md) |  | [optional] |
| **remote_fields** | [**PostAtsCandidatesRequestBodyRemoteFields**](PostAtsCandidatesRequestBodyRemoteFields.md) |  | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostAtsCandidatesRequestBody.new(
  candidate: null,
  application: null,
  screening_question_answers: null,
  attachments: null,
  source: null,
  sourced_by: null,
  gdpr_consent: null,
  remote_fields: null
)
```

