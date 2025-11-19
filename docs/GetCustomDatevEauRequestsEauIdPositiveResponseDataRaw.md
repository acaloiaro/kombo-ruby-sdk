# Kombo::GetCustomDatevEauRequestsEauIdPositiveResponseDataRaw

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source** | **String** | DATEV source system system (LuG or LODAS). |  |
| **start_work_incapacity** | **String** | 2022-01-13 |  |
| **collaboration_identifier** | **String** | Internal DATEV identifier. | [optional] |
| **feedbacks_from_health_insurance** | [**Array&lt;GetCustomDatevEauRequestsEauIdPositiveResponseDataRawFeedbacksFromHealthInsuranceInner&gt;**](GetCustomDatevEauRequestsEauIdPositiveResponseDataRawFeedbacksFromHealthInsuranceInner.md) |  |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetCustomDatevEauRequestsEauIdPositiveResponseDataRaw.new(
  source: null,
  start_work_incapacity: null,
  collaboration_identifier: null,
  feedbacks_from_health_insurance: null
)
```

