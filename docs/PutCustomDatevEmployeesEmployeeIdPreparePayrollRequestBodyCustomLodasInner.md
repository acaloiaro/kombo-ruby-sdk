# Kombo::PutCustomDatevEmployeesEmployeeIdPreparePayrollRequestBodyCustomLodasInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | This amount value will be mapped to Datev \&quot;Wert\&quot; field. |  |
| **lohnart** | **Float** | Choose a valid Lodas Lohnart. |  |
| **bearbeitungsschluessel** | **Float** | Choose a valid Lodas Bearbeitungsschlüssel. We list the valid Bearbeitungsschlüssel [here](https://storage.googleapis.com/kombo-assets/integrations/datev/lodas_bs.json). |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PutCustomDatevEmployeesEmployeeIdPreparePayrollRequestBodyCustomLodasInner.new(
  amount: null,
  lohnart: null,
  bearbeitungsschluessel: null
)
```

