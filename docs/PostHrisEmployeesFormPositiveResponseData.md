# Kombo::PostHrisEmployeesFormPositiveResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The Kombo id of the created employee. If null, we only created a pre-hire which shows up in the next sync after a successful onboarding. |  |
| **remote_id** | **String** | The raw ID of the created employee in the remote system. This is only populated when &#x60;id&#x60; is set (i.e., when a full employee was created). For pre-hires, use &#x60;prehire_id&#x60; instead. |  |
| **prehire_id** | **String** | The temporary ID returned by the remote system when creating a pre-hire. This ID may change or become invalid when the pre-hire becomes a full employee. Only populated when &#x60;id&#x60; is null. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostHrisEmployeesFormPositiveResponseData.new(
  id: null,
  remote_id: null,
  prehire_id: null
)
```

