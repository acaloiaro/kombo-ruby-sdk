# Kombo::GetCustomDatevSystemInformationPositiveResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **consultant_number** | **Float** | The consultant number used for this DATEV integration (BeraterNr). |  |
| **client_number** | **Float** | The client number used for this DATEV integration (MandantenNr). |  |
| **target_system** | **String** | The target system&#39;s name (Ziel). |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetCustomDatevSystemInformationPositiveResponseData.new(
  consultant_number: null,
  client_number: null,
  target_system: null
)
```

