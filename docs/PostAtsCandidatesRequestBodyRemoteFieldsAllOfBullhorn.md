# Kombo::PostAtsCandidatesRequestBodyRemoteFieldsAllOfBullhorn

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **candidate** | **Hash&lt;String, Object&gt;** | Fields that we will pass through to Bullhorn&#39;s &#x60;Candidate&#x60; object. | [optional] |
| **job_submission** | **Hash&lt;String, Object&gt;** | Fields that we will pass through to Bullhorn&#39;s &#x60;JobSubmission&#x60; object. | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostAtsCandidatesRequestBodyRemoteFieldsAllOfBullhorn.new(
  candidate: null,
  job_submission: null
)
```

