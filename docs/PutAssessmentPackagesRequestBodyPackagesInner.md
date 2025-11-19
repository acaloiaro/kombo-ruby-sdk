# Kombo::PutAssessmentPackagesRequestBodyPackagesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | A unique identifier for the assessment package. |  |
| **type** | **String** |  |  |
| **name** | **String** | The name of the assessment package. |  |
| **description** | **String** | Description about the package. Some ATSs will display this in their UI. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PutAssessmentPackagesRequestBodyPackagesInner.new(
  id: null,
  type: null,
  name: null,
  description: null
)
```

