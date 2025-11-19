# Kombo::PostAtsCandidatesCandidateIdResultLinksRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | If the system allows us to display a display name for the link, we will use this label. |  |
| **url** | **String** | URL of the link. |  |
| **details** | [**PostAtsApplicationsApplicationIdResultLinksRequestBodyDetails**](PostAtsApplicationsApplicationIdResultLinksRequestBodyDetails.md) |  | [optional] |
| **remote_fields** | [**PostAtsApplicationsApplicationIdResultLinksRequestBodyRemoteFields**](PostAtsApplicationsApplicationIdResultLinksRequestBodyRemoteFields.md) |  | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostAtsCandidatesCandidateIdResultLinksRequestBody.new(
  label: null,
  url: null,
  details: null,
  remote_fields: null
)
```

