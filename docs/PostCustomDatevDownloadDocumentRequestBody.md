# Kombo::PostCustomDatevDownloadDocumentRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounting_month** | **Time** | The month to request the document for. |  |
| **document_type** | **String** | Brutto/Netto (LOBN)  Lohnsteuerbescheinigung (german/english) (LSTB/LSTE)  SV-Nachweis (SVNW)  A1-Bescheinigung (ABEG)  Antragsbestätigung A1-Bescheinigung (AANB)  Buchungsbeleg (BUBE)  Lohnjournal (german/english) (LOJO/LJOE)  Lohnsteueranmeldung (LSTA)  Beitragsnachweis (KBNW)  Beitragsnachweis-Erläuterung (SBNW)  Übersicht Zahlungen (ZAKF)  DÜ Zahlungen (PRZA)  Barauszahlungswerte (ZABR)  Überzahlungen-Werte (ZAUW)  Personalkostenübersicht (german/english) (LOPS/LOPE)  Kostenstellenwerte (KOST)  Kostenträgerwerte (KOTR)  Lohnartenwerte einfach/erweitert (LOWE/LOPN)  Lohnkonto (LKTO)  Personalreport (LORE)  Mitarbeiterstammdaten (PDAT)  Pfändungswerte (PFAN)  Darlehenswerte (DAWE)  Wertguthaben je Arbeitnehmer (WEAN) |  |
| **employee_id** | **String** |  |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::PostCustomDatevDownloadDocumentRequestBody.new(
  accounting_month: null,
  document_type: null,
  employee_id: null
)
```

