# Kombo::PostAtsCandidatesRequestBodyGdprConsent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expires_at** | **Time** | Until when the candidate has granted the company they&#39;re applying to permission to process their personal data. | [optional] |
| **given** | **Boolean** | Whether the candidate has given consent. | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostAtsCandidatesRequestBodyGdprConsent.new(
  expires_at: null,
  given: null
)
```

