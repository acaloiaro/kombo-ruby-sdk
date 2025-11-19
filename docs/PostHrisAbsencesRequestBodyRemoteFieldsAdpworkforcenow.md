# Kombo::PostHrisAbsencesRequestBodyRemoteFieldsAdpworkforcenow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **employment_id** | **String** | [Required] The employment ID of the employee that the absence will be added to. | [optional] |
| **paid_leave** | **Boolean** | Whether the absence is paid or not. | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostHrisAbsencesRequestBodyRemoteFieldsAdpworkforcenow.new(
  employment_id: null,
  paid_leave: null
)
```

