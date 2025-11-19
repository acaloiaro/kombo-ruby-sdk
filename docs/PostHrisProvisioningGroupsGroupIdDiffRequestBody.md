# Kombo::PostHrisProvisioningGroupsGroupIdDiffRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provisioned_users** | [**Array&lt;PostHrisProvisioningGroupsGroupIdDiffRequestBodyProvisionedUsersInner&gt;**](PostHrisProvisioningGroupsGroupIdDiffRequestBodyProvisionedUsersInner.md) | Array of the already provisioned users in your system. |  |
| **options** | [**PostHrisProvisioningGroupsGroupIdDiffRequestBodyOptions**](PostHrisProvisioningGroupsGroupIdDiffRequestBodyOptions.md) |  |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostHrisProvisioningGroupsGroupIdDiffRequestBody.new(
  provisioned_users: null,
  options: null
)
```

