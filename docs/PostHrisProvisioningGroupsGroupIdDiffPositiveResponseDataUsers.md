# Kombo::PostHrisProvisioningGroupsGroupIdDiffPositiveResponseDataUsers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to_provision** | [**Array&lt;PostHrisProvisioningGroupsGroupIdDiffPositiveResponseDataUsersToProvisionInner&gt;**](PostHrisProvisioningGroupsGroupIdDiffPositiveResponseDataUsersToProvisionInner.md) | The users we&#39;ve found in the HR systems who match the provisioning filters but haven&#39;t been provisioned in your system yet. |  |
| **to_deprovision** | [**Array&lt;PostHrisProvisioningGroupsGroupIdDiffPositiveResponseDataUsersToDeprovisionInner&gt;**](PostHrisProvisioningGroupsGroupIdDiffPositiveResponseDataUsersToDeprovisionInner.md) | The users who&#39;ve been provisioned in your system but couldn&#39;t be found in the HR system or don&#39;t match the provisioning filters. |  |
| **already_provisioned** | [**Array&lt;PostHrisProvisioningGroupsGroupIdDiffPositiveResponseDataUsersAlreadyProvisionedInner&gt;**](PostHrisProvisioningGroupsGroupIdDiffPositiveResponseDataUsersAlreadyProvisionedInner.md) | The users who are in the HR system and match the provisioning filters but have already been provisioned in your system. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostHrisProvisioningGroupsGroupIdDiffPositiveResponseDataUsers.new(
  to_provision: null,
  to_deprovision: null,
  already_provisioned: null
)
```

