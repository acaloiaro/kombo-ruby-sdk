# Kombo::GetAtsCandidatesCandidateIdAttachmentsPositiveResponseDataResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **application_id** | **String** | The Kombo ID of the application this attachment belongs to. When this is null, the attachment is not specific to any application but the candidate. |  |
| **candidate_id** | **String** | The Kombo ID of the candidate this attachment belongs to. |  |
| **type** | **String** |  |  |
| **remote_id** | **String** |  |  |
| **data_url** | **String** |  |  |
| **file_name** | **String** |  |  |
| **content_type** | **String** | The MIME type of the attachment. |  |
| **remote_created_at** | **Time** | The date when the attachment was created. |  |
| **remote_updated_at** | **Time** | The date when the attachment was last updated. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetAtsCandidatesCandidateIdAttachmentsPositiveResponseDataResultsInner.new(
  id: null,
  application_id: null,
  candidate_id: null,
  type: null,
  remote_id: null,
  data_url: null,
  file_name: null,
  content_type: null,
  remote_created_at: null,
  remote_updated_at: null
)
```

