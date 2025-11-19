# Kombo::PostAtsCandidatesRequestBodySourcedBy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The Kombo ID or Remote ID of the User. Use the Kombo ID directly, or prefix the remote ID with \&quot;remote:\&quot; to reference the user by their ID in the remote system. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostAtsCandidatesRequestBodySourcedBy.new(
  user_id: null
)
```

