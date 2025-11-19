# Kombo::PostIntegrationsIntegrationIdRelinkRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **language** | **String** | Language of the connection flow UI. | [optional][default to &#39;en&#39;] |
| **scope_config_id** | **String** | Specify a scope config which the integration will start using once the reconnection flow has been completed.  This can be useful if you want to update the permissions of an integration, but only want the change to take effect once the user has updated their API credentials to prevent sync issues. | [optional] |
| **link_type** | **String** | The type of link you want to create. &#x60;EMBEDDED&#x60; is for the [embedded flow](../guides/connect/embedded-flow) using the Kombo Connect SDK (these links are valid for 1 hour) and &#x60;MAGIC_LINK&#x60; is for [magic links](../guides/connect/magic-links) which you send out manually to customers (there are valid for 1 year).  This defaults to &#x60;EMBEDDED&#x60;, which is our recommended method of implementing the connection flow for a seamless user experience. | [optional][default to &#39;EMBEDDED&#39;] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostIntegrationsIntegrationIdRelinkRequestBody.new(
  language: null,
  scope_config_id: null,
  link_type: null
)
```

