# Kombo::PostAtsJobsJobIdApplicationsRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage_id** | **String** | Stage this candidate should be in. If left out, the default stage for this job will be used. You can obtain the possible &#x60;stage_id&#x60;s from the &#x60;get-jobs&#x60; endpoint. | [optional] |
| **candidate** | [**PostAtsCandidatesRequestBodyCandidate**](PostAtsCandidatesRequestBodyCandidate.md) |  |  |
| **attachments** | [**Array&lt;PostAtsApplicationsApplicationIdAttachmentsRequestBodyAttachment&gt;**](PostAtsApplicationsApplicationIdAttachmentsRequestBodyAttachment.md) | Array of the attachments you would like to upload. The first CV in the attachments will be treated as the resume of the candidate when the tool allows previewing a resume. | [optional] |
| **source** | [**PostAtsCandidatesRequestBodySource**](PostAtsCandidatesRequestBodySource.md) |  | [optional] |
| **sourced_by** | [**PostAtsCandidatesRequestBodySourcedBy**](PostAtsCandidatesRequestBodySourcedBy.md) |  | [optional] |
| **gdpr_consent** | [**PostAtsCandidatesRequestBodyGdprConsent**](PostAtsCandidatesRequestBodyGdprConsent.md) |  | [optional] |
| **remote_fields** | [**PostAtsCandidatesRequestBodyRemoteFields**](PostAtsCandidatesRequestBodyRemoteFields.md) |  | [optional] |
| **screening_question_answers** | [**Array&lt;PostAtsCandidatesRequestBodyScreeningQuestionAnswersInner&gt;**](PostAtsCandidatesRequestBodyScreeningQuestionAnswersInner.md) | Array of answers to screening questions. Currently, not all question types are supported, and unsupported ones will not be submitted.  The available questions for a job can be retrieved from the get jobs endpoint. The answers will be validated based on the format of the questions. Make sure to follow this schema to avoid errors. | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostAtsJobsJobIdApplicationsRequestBody.new(
  stage_id: null,
  candidate: null,
  attachments: null,
  source: null,
  sourced_by: null,
  gdpr_consent: null,
  remote_fields: null,
  screening_question_answers: null
)
```

