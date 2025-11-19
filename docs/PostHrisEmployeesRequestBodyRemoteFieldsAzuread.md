# Kombo::PostHrisEmployeesRequestBodyRemoteFieldsAzuread

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **password** | **String** | Azure / entra requires a password to be set when creating a user. The user has to use the password on his initial sign-in and will be forced to change the password once signed in. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostHrisEmployeesRequestBodyRemoteFieldsAzuread.new(
  password: null
)
```

