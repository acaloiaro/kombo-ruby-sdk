# Kombo::PostAtsCandidatesRequestBodyRemoteFieldsAllOfSmartrecruiters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **candidate_with_questions** | **Hash&lt;String, Object&gt;** | **(⚠️ Deprecated - Use the &#x60;candidate&#x60; field instead.)** Fields that we will pass through to the SmartRecruiters&#39;s &#x60;Candidate&#x60; object when created with screening question answers. This API is used: https://developers.smartrecruiters.com/reference/createcandidate-1 | [optional] |
| **candidate_without_questions** | **Hash&lt;String, Object&gt;** | **(⚠️ Deprecated - Use the &#x60;candidate&#x60; field instead.)** Fields that we will pass through to the SmartRecruiters&#39;s &#x60;Candidate&#x60; object when created with screening question answers. This API is used: https://developers.smartrecruiters.com/reference/candidatesaddtojob-1 | [optional] |
| **candidate** | **Hash&lt;String, Object&gt;** | Fields that we will pass through to the SmartRecruiters&#39;s &#x60;Candidate&#x60; object. This API is used: https://developers.smartrecruiters.com/reference/createcandidate-1 | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostAtsCandidatesRequestBodyRemoteFieldsAllOfSmartrecruiters.new(
  candidate_with_questions: null,
  candidate_without_questions: null,
  candidate: null
)
```

