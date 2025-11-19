# Kombo::PostAiApplyPostingsPostingIdInquirePositiveResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_form** | [**Array&lt;PostAiApplyPostingsPostingIdInquirePositiveResponseDataApplicationFormInner&gt;**](PostAiApplyPostingsPostingIdInquirePositiveResponseDataApplicationFormInner.md) |  |  |
| **submission_token** | **String** | JWT token for submitting the application. Valid for 12 hours from generation. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostAiApplyPostingsPostingIdInquirePositiveResponseData.new(
  application_form: null,
  submission_token: null
)
```

