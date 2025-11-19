# Kombo::PostAtsApplicationsApplicationIdRejectRequestBodyRemoteFieldsAllOfGreenhouse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rejection_email** | **Hash&lt;String, Object&gt;** | Additional data fields that we will pass through to the &#x60;rejection_email&#x60; field of Greenhouse&#39;s [reject application](https://developers.greenhouse.io/harvest.html#post-reject-application) endpoint. | [optional] |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostAtsApplicationsApplicationIdRejectRequestBodyRemoteFieldsAllOfGreenhouse.new(
  rejection_email: null
)
```

