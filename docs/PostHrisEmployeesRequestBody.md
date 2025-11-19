# Kombo::PostHrisEmployeesRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | The first name of the employee. |  |
| **last_name** | **String** | The last name of the employee. |  |
| **work_email** | **String** | The email address of the employee to be created. For tools where the personal email address is required, we map this input to the personal email. This is documented on a per-tool basis. | [optional] |
| **gender** | **String** | The gender of the employee. | [optional] |
| **job_title** | **String** | The title of the position this person is working in. | [optional] |
| **home_address** | [**PostHrisEmployeesRequestBodyHomeAddress**](PostHrisEmployeesRequestBodyHomeAddress.md) |  | [optional] |
| **date_of_birth** | **Time** | The employee&#39;s date of birth. This is a plain date (i.e., &#x60;yyyy-MM-dd&#x60;), all time information is discarded. | [optional] |
| **mobile_phone_number** | **String** |  | [optional] |
| **home_phone_number** | **String** |  | [optional] |
| **nationality** | **String** | The uppercase two-letter ISO country (e.g., &#x60;DE&#x60;). For systems that use codes in formats other than &#x60;ISO 3166-1 alpha-2&#x60;, Kombo transforms the ISO Codes to the appropriate value. | [optional] |
| **start_date** | **Time** | Start date of the employee. Also considered to be the hire date. This is a plain date (i.e., &#x60;yyyy-MM-dd&#x60;), all time information is discarded. | [optional] |
| **legal_entity_id** | **String** | The Kombo ID of the legal entity the employee should be in. This field is required for certain integrations. | [optional] |
| **location_id** | **String** | The Kombo ID of the location the employee should be in. This field is required for certain integrations. | [optional] |
| **remote_fields** | [**PostHrisEmployeesRequestBodyRemoteFields**](PostHrisEmployeesRequestBodyRemoteFields.md) |  | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostHrisEmployeesRequestBody.new(
  first_name: null,
  last_name: null,
  work_email: null,
  gender: null,
  job_title: null,
  home_address: null,
  date_of_birth: null,
  mobile_phone_number: null,
  home_phone_number: null,
  nationality: null,
  start_date: null,
  legal_entity_id: null,
  location_id: null,
  remote_fields: null
)
```

