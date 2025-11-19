# Kombo::GetCustomDatevEauRequestsEauIdPositiveResponseDataRawFeedbacksFromHealthInsuranceInnerIncapacityForWork

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_work_incapacity_employer** | **String** | yyyy-MM-dd date provided in the initial request. |  |
| **start_work_incapacity_au** | **String** | yyyy-MM-dd start date of the AU. |  |
| **end_work_incapacity_au** | **String** | yyyy-MM-dd expected end date of the AU. |  |
| **actual_end_work_incapacity_au** | **String** | yyyy-MM-dd actual end date after the hospitalization report was received. | [optional] |
| **date_of_diagnosis** | **String** | yyyy-MM-dd date of diagnosis |  |
| **flag_current_work_incapacity** | **Float** | Flag: 0 &#x3D; unknown Flag: 1 &#x3D; Health insurance not responsible Flag: 2 &#x3D; incapacity for work Flag: 3 &#x3D; hospitalisation Flag: 4 &#x3D; eAU or hospitalisation-report is not existing Flag: 5 &#x3D; rehabilitation prevention Flag: 6 &#x3D; inpatient hospital treatment Flag: 7 &#x3D; in verification Flag: 8 &#x3D; other evidence available Flag: 9 &#x3D; forwarding procedure |  |
| **accident_at_work** | **Boolean** | If the accident is a work accident according to § 295 Para. 1 SGB V. |  |
| **assignment_accident_insurance_doctor** | **Boolean** | Indication of whether the insured person has been assigned to the accident insurance doctor. |  |
| **other_accident** | **Boolean** | If the accident is the result of another accident according to § 295 Para. 1 SGB V. |  |
| **start_hospitalisation** | **String** | [DEPRECATED] yyyy-MM-dd start date of the hospitalization. | [optional] |
| **end_hospitalisation** | **String** | [DEPRECATED] yyyy-MM-dd end date of the actual hospitalization. | [optional] |
| **initial_certificate** | **Boolean** | Whether the certificate is initial or a follow up certificate. |  |
| **automatic_feedback_until** | **String** | yyyy-MM-dd date until the health insurance will update this requests status. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetCustomDatevEauRequestsEauIdPositiveResponseDataRawFeedbacksFromHealthInsuranceInnerIncapacityForWork.new(
  start_work_incapacity_employer: null,
  start_work_incapacity_au: null,
  end_work_incapacity_au: null,
  actual_end_work_incapacity_au: null,
  date_of_diagnosis: null,
  flag_current_work_incapacity: null,
  accident_at_work: null,
  assignment_accident_insurance_doctor: null,
  other_accident: null,
  start_hospitalisation: null,
  end_hospitalisation: null,
  initial_certificate: null,
  automatic_feedback_until: null
)
```

