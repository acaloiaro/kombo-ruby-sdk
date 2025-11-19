# Kombo::PostAtsCandidatesRequestBodyRemoteFieldsAllOfWorkday

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **candidate_data** | [**PostAtsCandidatesRequestBodyRemoteFieldsAllOfWorkdayCandidateData**](PostAtsCandidatesRequestBodyRemoteFieldsAllOfWorkdayCandidateData.md) |  | [optional] |
| **override_source_reference_wid** | **String** | Used to override the automatic source WID. | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostAtsCandidatesRequestBodyRemoteFieldsAllOfWorkday.new(
  candidate_data: null,
  override_source_reference_wid: null
)
```

