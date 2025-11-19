# Kombo::PostAtsApplicationsApplicationIdNotesRequestBodyRemoteFieldsAllOfRecruitee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **visibility** | **Object** |  | [optional] |
| **is_json** | **Boolean** | Whether the note is in a stringified JSON format. If true, content should contain a valid JSON as per the [Recruitee API documentation](https://docs.recruitee.com/reference/candidatesidnotes) (body_json field). If false we add the note as a plain text. | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostAtsApplicationsApplicationIdNotesRequestBodyRemoteFieldsAllOfRecruitee.new(
  visibility: null,
  is_json: null
)
```

