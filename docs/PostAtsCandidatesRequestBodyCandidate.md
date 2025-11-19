# Kombo::PostAtsCandidatesRequestBodyCandidate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | The first name of the candidate. |  |
| **last_name** | **String** | The last name of the candidate. |  |
| **email_address** | **String** | The primary email address this application will be created with. |  |
| **additional_email_addresses** | [**Array&lt;PostAtsCandidatesRequestBodyCandidateAdditionalEmailAddressesInner&gt;**](PostAtsCandidatesRequestBodyCandidateAdditionalEmailAddressesInner.md) |  | [optional] |
| **company** | **String** | The company where the candidate is currently working. | [optional] |
| **title** | **String** | The current job title of the candidate. | [optional] |
| **phone_number** | **String** | The phone number of the candidate. | [optional] |
| **additional_phone_numbers** | [**Array&lt;PostAtsCandidatesRequestBodyCandidateAdditionalPhoneNumbersInner&gt;**](PostAtsCandidatesRequestBodyCandidateAdditionalPhoneNumbersInner.md) |  | [optional] |
| **location** | [**PostAtsCandidatesRequestBodyCandidateLocation**](PostAtsCandidatesRequestBodyCandidateLocation.md) |  | [optional] |
| **gender** | **String** | The gender of the candidate. Must be one of &#x60;MALE&#x60;, &#x60;FEMALE&#x60;, or &#x60;OTHER&#x60;. | [optional] |
| **availability_date** | **Time** | The date the candidate is available to start working. | [optional] |
| **salary_expectations** | [**PostAtsCandidatesRequestBodyCandidateSalaryExpectations**](PostAtsCandidatesRequestBodyCandidateSalaryExpectations.md) |  | [optional] |
| **social_links** | [**Array&lt;PostAtsCandidatesRequestBodyCandidateSocialLinksInner&gt;**](PostAtsCandidatesRequestBodyCandidateSocialLinksInner.md) | A list of social media links of the candidate. The links must be valid URLs. | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostAtsCandidatesRequestBodyCandidate.new(
  first_name: null,
  last_name: null,
  email_address: null,
  additional_email_addresses: null,
  company: null,
  title: null,
  phone_number: null,
  additional_phone_numbers: null,
  location: null,
  gender: null,
  availability_date: null,
  salary_expectations: null,
  social_links: null
)
```

