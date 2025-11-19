# Kombo::PostAtsCandidatesRequestBodyRemoteFieldsAllOfRecruiteeCandidate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cover_letter_text** | **String** | The cover letter text as a string. This will be visible on the main candidate page. Can be provided together with the &#x60;cover_letter&#x60; attachment, which will end up in a separate &#x60;file&#x60; section. | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostAtsCandidatesRequestBodyRemoteFieldsAllOfRecruiteeCandidate.new(
  cover_letter_text: null
)
```

