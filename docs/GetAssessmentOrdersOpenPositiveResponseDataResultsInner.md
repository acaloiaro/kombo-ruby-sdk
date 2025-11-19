# Kombo::GetAssessmentOrdersOpenPositiveResponseDataResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the assessment order. |  |
| **package_id** | **String** | The identifier of the assessment package. |  |
| **candidate** | [**GetAssessmentOrdersOpenPositiveResponseDataResultsInnerCandidate**](GetAssessmentOrdersOpenPositiveResponseDataResultsInnerCandidate.md) |  |  |
| **application** | [**GetAssessmentOrdersOpenPositiveResponseDataResultsInnerApplication**](GetAssessmentOrdersOpenPositiveResponseDataResultsInnerApplication.md) |  |  |
| **job** | [**GetAssessmentOrdersOpenPositiveResponseDataResultsInnerJob**](GetAssessmentOrdersOpenPositiveResponseDataResultsInnerJob.md) |  |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetAssessmentOrdersOpenPositiveResponseDataResultsInner.new(
  id: null,
  package_id: null,
  candidate: null,
  application: null,
  job: null
)
```

