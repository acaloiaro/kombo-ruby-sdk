# Kombo::PostAtsCandidatesRequestBodyRemoteFieldsAllOfWorkdayCandidateDataJobApplicationDataResumeDataExperienceDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_name** | **String** |  |  |
| **title** | **String** |  |  |
| **location** | **String** |  | [optional] |
| **start_date** | **Time** | YYYY-MM-DDTHH:mm:ss.sssZ |  |
| **end_date** | **Time** | YYYY-MM-DDTHH:mm:ss.sssZ | [optional] |
| **currently_work_here** | **Boolean** |  | [optional] |
| **description** | **String** |  | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostAtsCandidatesRequestBodyRemoteFieldsAllOfWorkdayCandidateDataJobApplicationDataResumeDataExperienceDataInner.new(
  company_name: null,
  title: null,
  location: null,
  start_date: null,
  end_date: null,
  currently_work_here: null,
  description: null
)
```

