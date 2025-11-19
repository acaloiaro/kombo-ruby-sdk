# Kombo::GetConnectIntegrationByTokenTokenPositiveResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tool** | **String** |  |  |
| **id** | **String** |  |  |
| **end_user_origin_id** | **String** |  |  |
| **end_user_organization_name** | **String** |  |  |
| **end_user_email** | **String** |  |  |
| **setup_status** | **String** | The setup_status is used in conjunction with the filtering and field mapping features. If these are enabled in the connection flow, the integration will start in an \&quot;INCOMPLETE\&quot; state and move to \&quot;COMPLETE\&quot; once all steps are finished.  - &#x60;INCOMPLETE&#x60;: Setup is still in progress. Some steps aren’t finished, so no data is available yet. Syncs only run as needed for setup. - &#x60;FINAL_SYNC_PENDING&#x60;: Setup is complete, and the final sync is running. Data will be available after this sync is done. - &#x60;COMPLETED&#x60;: Setup is fully finished, and the integration is ready to use. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetConnectIntegrationByTokenTokenPositiveResponseData.new(
  tool: null,
  id: null,
  end_user_origin_id: null,
  end_user_organization_name: null,
  end_user_email: null,
  setup_status: null
)
```

