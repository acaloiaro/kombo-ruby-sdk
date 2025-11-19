# Kombo::PostHrisEmployeesRequestBodyRemoteFieldsSilae

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **siret** | **String** | The siret of the company. The siret can be found as the remote ID of a Silae legal entity. | [optional] |
| **employee** | **Hash&lt;String, Object&gt;** | Fields that we will passed through to Silae &#x60;Employee&#x60; object. | [optional] |
| **employment** | **Hash&lt;String, Object&gt;** | Fields that we will passed through to Silae &#x60;Employment&#x60; object. | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostHrisEmployeesRequestBodyRemoteFieldsSilae.new(
  siret: null,
  employee: null,
  employment: null
)
```

