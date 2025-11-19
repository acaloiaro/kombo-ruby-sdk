# Kombo::PostAtsCandidatesRequestBodyApplication

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_id** | **String** | The Kombo ID or Remote ID of the Job this candidate should apply to. If you want to use the ID of the integrated system (remote_id) you need to prefix the ID with \&quot;remote:\&quot;. You can use the remote ID if you do not want to sync jobs. |  |
| **stage_id** | **String** | Stage this candidate should be in. If left out, the default stage for this job will be used. | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostAtsCandidatesRequestBodyApplication.new(
  job_id: null,
  stage_id: null
)
```

