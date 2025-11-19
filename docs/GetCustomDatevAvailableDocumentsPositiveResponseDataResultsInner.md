# Kombo::GetCustomDatevAvailableDocumentsPositiveResponseDataResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_type** | **String** | The document&#39;s type. |  |
| **available_for_employees** | [**Array&lt;GetCustomDatevAvailableDocumentsPositiveResponseDataResultsInnerAvailableForEmployeesInner&gt;**](GetCustomDatevAvailableDocumentsPositiveResponseDataResultsInnerAvailableForEmployeesInner.md) | List of employees this document is available for. |  |
| **is_company_document** | **Boolean** | Is true if the document is a company document. |  |

## Example

```ruby
require 'kombo_client'

instance = Kombo::GetCustomDatevAvailableDocumentsPositiveResponseDataResultsInner.new(
  document_type: null,
  available_for_employees: null,
  is_company_document: null
)
```

