# Kombo::PostHrisSkillsRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the skill |  |
| **levels** | **Array&lt;String&gt;** | List of available skill levels (e.g., [\&quot;Beginner\&quot;, \&quot;Intermediate\&quot;, \&quot;Advanced\&quot;]) | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostHrisSkillsRequestBody.new(
  name: null,
  levels: null
)
```

