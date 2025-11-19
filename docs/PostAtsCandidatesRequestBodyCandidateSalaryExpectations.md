# Kombo::PostAtsCandidatesRequestBodyCandidateSalaryExpectations

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **period** | **String** | The period of the salary expectations. Must be one of &#x60;MONTH&#x60; or &#x60;YEAR&#x60;. |  |
| **amount** | **Float** | The amount of the salary expectations. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostAtsCandidatesRequestBodyCandidateSalaryExpectations.new(
  period: null,
  amount: null
)
```

