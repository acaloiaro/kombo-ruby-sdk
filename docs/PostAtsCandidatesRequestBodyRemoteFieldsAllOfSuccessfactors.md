# Kombo::PostAtsCandidatesRequestBodyRemoteFieldsAllOfSuccessfactors

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **candidate** | **Hash&lt;String, Object&gt;** | Fields that we will pass through to SuccessFactor&#39;s &#x60;Candidate&#x60; object. | [optional] |
| **job_application** | **Hash&lt;String, Object&gt;** | Fields that we will pass through to SuccessFactor&#39;s &#x60;JobApplication&#x60; object. | [optional] |
| **copy_job_application_attachments** | **Boolean** | If set to true, we will copy custom attachments from the JobApplication to the Candidate. | [optional] |
| **update_existing_candidate** | **Boolean** | When the candidate already exists, whether to update the Candidate with the remote fields found under the Candidate entity. | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostAtsCandidatesRequestBodyRemoteFieldsAllOfSuccessfactors.new(
  candidate: null,
  job_application: null,
  copy_job_application_attachments: null,
  update_existing_candidate: null
)
```

