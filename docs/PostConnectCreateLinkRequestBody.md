# Kombo::PostConnectCreateLinkRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **end_user_email** | **String** | The email of the user this link is meant for. |  |
| **end_user_organization_name** | **String** | The name of the user&#39;s organization. |  |
| **end_user_origin_id** | **String** | The id the user/organization has in your own database. | [optional] |
| **remote_environment** | **String** | If the tool you want to connect offers different environments, you can specify which one you want to connect to here. If you don&#39;t specify this, we&#39;ll assume you want to use the production environment. Note that this can only be used if you&#39;ve also specified a tool through &#x60;integration_tool&#x60;. | [optional] |
| **integration_category** | **String** | Category of the integration you want your customer to create. | [optional][default to &#39;HRIS&#39;] |
| **integration_tool** | **String** | Pre-define a tool this integration link can be used for. | [optional] |
| **language** | **String** | Language of the connection flow UI. | [optional][default to &#39;en&#39;] |
| **scope_config_id** | **String** | Specify a scope config that should be used for this integration. This is an advanced feature, only use it if you know what you&#39;re doing! | [optional] |
| **enable_filtering** | **Boolean** | Enable the [filtering feature](https://docs.kombo.dev/other/filtering) for the integration. HRIS only. | [optional][default to false] |
| **enable_field_mapping** | **Boolean** | Enable the [field mapping feature](https://docs.kombo.dev/hris/features/setup-flow/introduction#field-mapping) for this integration. | [optional][default to false] |
| **link_type** | **String** | The type of link you want to create. &#x60;EMBEDDED&#x60; is for the [embedded flow](../guides/connect/embedded-flow) using the Kombo Connect SDK (these links are valid for 1 hour) and &#x60;MAGIC_LINK&#x60; is for [magic links](../guides/connect/magic-links) which you send out manually to customers (there are valid for 1 year).  This defaults to &#x60;EMBEDDED&#x60;, which is our recommended method of implementing the connection flow for a seamless user experience. | [optional][default to &#39;EMBEDDED&#39;] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostConnectCreateLinkRequestBody.new(
  end_user_email: null,
  end_user_organization_name: null,
  end_user_origin_id: null,
  remote_environment: null,
  integration_category: null,
  integration_tool: null,
  language: null,
  scope_config_id: null,
  enable_filtering: null,
  enable_field_mapping: null,
  link_type: null
)
```

