# Kombo::PostHrisEmployeesRequestBodyRemoteFieldsAdpworkforcenow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **onboarding_template_code** | **String** | The onboarding template to be used for the created employee. View the possible values in the Kombo dashboard by clicking on the ADP Workforce Now integration and viewing the field report in the settings tab. |  |
| **applicant_payroll_profile_group_code** | **String** | The payroll group code (a.k.a. \&quot;Company Code\&quot;) to be used for the created employee. View the possible values in the Kombo dashboard by clicking on the ADP Workforce Now integration and viewing the field report in the settings tab. |  |
| **manager_position_id** | **String** | The position ID of the employment of the manager. Available as mappable custom field on employments. Not the employment ID or employment remote ID! | [optional] |
| **home_organization_unit_code** | **String** | The remote id of a Kombo group with type \&quot;DEPARTMENT\&quot; that will be used as the employee&#39;s home department. | [optional] |
| **personal_email** | **String** | The personal email for the employee. | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostHrisEmployeesRequestBodyRemoteFieldsAdpworkforcenow.new(
  onboarding_template_code: null,
  applicant_payroll_profile_group_code: null,
  manager_position_id: null,
  home_organization_unit_code: null,
  personal_email: null
)
```

