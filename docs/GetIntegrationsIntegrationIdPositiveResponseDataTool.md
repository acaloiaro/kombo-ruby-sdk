# Kombo::GetIntegrationsIntegrationIdPositiveResponseDataTool

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the connected tool in Kombo (e.g. &#x60;factorial&#x60;). |  |
| **label** | **String** |  |  |
| **internal_label** | **String** | Internal label that can help you debug specific variants of the integration. Only show the &#x60;label&#x60; to your users. |  |
| **logo_url** | **String** | URL to an SVG logo of the connected tool. The logo usually contains the tool name. |  |
| **icon_url** | **String** | URL to a square SVG icon of the connected tool. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetIntegrationsIntegrationIdPositiveResponseDataTool.new(
  id: null,
  label: null,
  internal_label: null,
  logo_url: null,
  icon_url: null
)
```

