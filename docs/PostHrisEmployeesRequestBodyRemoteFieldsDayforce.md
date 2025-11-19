# Kombo::PostHrisEmployeesRequestBodyRemoteFieldsDayforce

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **social_security_number** | **String** | The social security number of the employee |  |
| **pay_type** | **String** | The pay type of the employee. This needs to be a valid XRefCode from Dayforce. |  |
| **pay_class** | **String** | The pay class of the employee. This needs to be a valid XRefCode from Dayforce. |  |
| **pay_group** | **String** | The pay group of the employee. This needs to be a valid XRefCode from Dayforce. |  |
| **base_rate** | **Float** | The base rate of the employee. |  |
| **role** | **String** | The role of the employee. This needs to be a valid XRefCode from Dayforce. |  |
| **location** | **String** | The location of the employee. This needs to be a valid XRefCode from Dayforce. |  |
| **department** | **String** | The department of the employee. This needs to be a valid XRefCode from Dayforce. |  |
| **job** | **String** | The job of the employee. This needs to be a valid XRefCode from Dayforce. |  |
| **country** | **String** | The country of the employee. This needs to be a valid XRefCode from Dayforce. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostHrisEmployeesRequestBodyRemoteFieldsDayforce.new(
  social_security_number: null,
  pay_type: null,
  pay_class: null,
  pay_group: null,
  base_rate: null,
  role: null,
  location: null,
  department: null,
  job: null,
  country: null
)
```

