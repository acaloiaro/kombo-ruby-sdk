# Kombo::PostAtsApplicationsApplicationIdResultLinksRequestBodyDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_field_name_prefix** | **String** | That will be added to the attribute labels if they are used for custom fields. If you specify &#x60;Acme:&#x60; as the prefix, the custom field will be named &#x60;Acme: Score&#x60;. Putting in the name of your company/product is a good idea. |  |
| **attributes** | [**Array&lt;PostAtsApplicationsApplicationIdResultLinksRequestBodyDetailsAttributesInner&gt;**](PostAtsApplicationsApplicationIdResultLinksRequestBodyDetailsAttributesInner.md) |  |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostAtsApplicationsApplicationIdResultLinksRequestBodyDetails.new(
  custom_field_name_prefix: null,
  attributes: null
)
```

