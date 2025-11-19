# Kombo::GetIntegrationsIntegrationIdPositiveResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **tool** | [**GetIntegrationsIntegrationIdPositiveResponseDataTool**](GetIntegrationsIntegrationIdPositiveResponseDataTool.md) |  |  |
| **category** | **String** |  |  |
| **status** | **String** | The current status of the integration.  - &#x60;ACTIVE&#x60;: The integration is syncing data as expected. - &#x60;INVALID&#x60;: The integration has stopped syncing data because of invalid credentials. To fix this, reach out to your customer to [reconnect the integration](../guides/integration-states#credentials-invalid). - &#x60;INACTIVE&#x60;: The integration has stopped syncing as it&#39;s been manually set to inactive. You can [enable it again](../guides/integration-states#inactive) in the integration&#39;s page. |  |
| **setup_status** | **String** | The setup_status is used in conjunction with the filtering and field mapping features. If these are enabled in the connection flow, the integration will start in an \&quot;INCOMPLETE\&quot; state and move to \&quot;COMPLETE\&quot; once all steps are finished.  - &#x60;INCOMPLETE&#x60;: Setup is still in progress. Some steps aren’t finished, so no data is available yet. Syncs only run as needed for setup. - &#x60;FINAL_SYNC_PENDING&#x60;: Setup is complete, and the final sync is running. Data will be available after this sync is done. - &#x60;COMPLETED&#x60;: Setup is fully finished, and the integration is ready to use. |  |
| **end_user** | [**GetIntegrationsIntegrationIdPositiveResponseDataEndUser**](GetIntegrationsIntegrationIdPositiveResponseDataEndUser.md) |  |  |
| **scope_config** | [**GetIntegrationsIntegrationIdPositiveResponseDataScopeConfig**](GetIntegrationsIntegrationIdPositiveResponseDataScopeConfig.md) |  |  |
| **created_at** | **Time** | YYYY-MM-DDTHH:mm:ss.sssZ |  |
| **beta** | **Boolean** |  |  |
| **read_models** | [**Array&lt;GetIntegrationsIntegrationIdPositiveResponseDataReadModelsInner&gt;**](GetIntegrationsIntegrationIdPositiveResponseDataReadModelsInner.md) |  |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetIntegrationsIntegrationIdPositiveResponseData.new(
  id: null,
  tool: null,
  category: null,
  status: null,
  setup_status: null,
  end_user: null,
  scope_config: null,
  created_at: null,
  beta: null,
  read_models: null
)
```

