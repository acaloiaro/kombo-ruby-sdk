# Kombo::CustomEndpointsApi

All URIs are relative to *https://api.kombo.dev/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_custom_datev_available_documents**](CustomEndpointsApi.md#get_custom_datev_available_documents) | **GET** /custom/datev/available-documents | Retrieve available documents |
| [**get_custom_datev_check_document_permission**](CustomEndpointsApi.md#get_custom_datev_check_document_permission) | **GET** /custom/datev/check-document-permission | Verify service is enabled |
| [**get_custom_datev_check_eau_permission**](CustomEndpointsApi.md#get_custom_datev_check_eau_permission) | **GET** /custom/datev/check-eau-permission | Verify service is enabled |
| [**get_custom_datev_check_write_permission**](CustomEndpointsApi.md#get_custom_datev_check_write_permission) | **GET** /custom/datev/check-write-permission | Verify service is enabled |
| [**get_custom_datev_data_pushes**](CustomEndpointsApi.md#get_custom_datev_data_pushes) | **GET** /custom/datev/data-pushes | Get DATEV data pushes |
| [**get_custom_datev_eau_requests_eau_id**](CustomEndpointsApi.md#get_custom_datev_eau_requests_eau_id) | **GET** /custom/datev/eau-requests/{eau_id} | Query the status of the eAU request |
| [**get_custom_datev_system_information**](CustomEndpointsApi.md#get_custom_datev_system_information) | **GET** /custom/datev/system-information | Get DATEV system information |
| [**post_custom_datev_download_document**](CustomEndpointsApi.md#post_custom_datev_download_document) | **POST** /custom/datev/download-document | Download Payroll Document |
| [**post_custom_datev_employees_employee_id_download_document**](CustomEndpointsApi.md#post_custom_datev_employees_employee_id_download_document) | **POST** /custom/datev/employees/{employee_id}/download-document | Download Payroll Document |
| [**post_custom_datev_employees_employee_id_eau_requests**](CustomEndpointsApi.md#post_custom_datev_employees_employee_id_eau_requests) | **POST** /custom/datev/employees/{employee_id}/eau-requests | Create eAU Request |
| [**post_custom_datev_passthrough**](CustomEndpointsApi.md#post_custom_datev_passthrough) | **POST** /custom/datev/passthrough | Write raw DATEV ASCII file |
| [**post_custom_datev_push_data_general**](CustomEndpointsApi.md#post_custom_datev_push_data_general) | **POST** /custom/datev/push-data/general | Push general data to DATEV |
| [**post_custom_datev_push_data_payroll**](CustomEndpointsApi.md#post_custom_datev_push_data_payroll) | **POST** /custom/datev/push-data/payroll | Push payroll data to DATEV |
| [**post_custom_silae_employees_employee_id_payroll_supplements**](CustomEndpointsApi.md#post_custom_silae_employees_employee_id_payroll_supplements) | **POST** /custom/silae/employees/{employee_id}/payroll-supplements | Write Payroll Supplement |
| [**put_custom_datev_employees_employee_id_compensations**](CustomEndpointsApi.md#put_custom_datev_employees_employee_id_compensations) | **PUT** /custom/datev/employees/{employee_id}/compensations | Set DATEV compensations |
| [**put_custom_datev_employees_employee_id_prepare_payroll**](CustomEndpointsApi.md#put_custom_datev_employees_employee_id_prepare_payroll) | **PUT** /custom/datev/employees/{employee_id}/prepare-payroll | Prepare DATEV Payroll |


## get_custom_datev_available_documents

> <GetCustomDatevAvailableDocumentsPositiveResponse> get_custom_datev_available_documents(x_integration_id, period)

Retrieve available documents

Use this endpoint to get all available documents for a specific period.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::CustomEndpointsApi.new
x_integration_id = 'datev:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
period = 'period_example' # String | Provide the period in the format YYYY-MM-DD for which to check for available documents.

begin
  # Retrieve available documents
  result = api_instance.get_custom_datev_available_documents(x_integration_id, period)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->get_custom_datev_available_documents: #{e}"
end
```

#### Using the get_custom_datev_available_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCustomDatevAvailableDocumentsPositiveResponse>, Integer, Hash)> get_custom_datev_available_documents_with_http_info(x_integration_id, period)

```ruby
begin
  # Retrieve available documents
  data, status_code, headers = api_instance.get_custom_datev_available_documents_with_http_info(x_integration_id, period)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCustomDatevAvailableDocumentsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->get_custom_datev_available_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **period** | **String** | Provide the period in the format YYYY-MM-DD for which to check for available documents. |  |

### Return type

[**GetCustomDatevAvailableDocumentsPositiveResponse**](GetCustomDatevAvailableDocumentsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_custom_datev_check_document_permission

> <GetCustomDatevCheckDocumentPermissionPositiveResponse> get_custom_datev_check_document_permission(x_integration_id)

Verify service is enabled

This endpoint returns the available document types for this DATEV integration.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::CustomEndpointsApi.new
x_integration_id = 'datev:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.

begin
  # Verify service is enabled
  result = api_instance.get_custom_datev_check_document_permission(x_integration_id)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->get_custom_datev_check_document_permission: #{e}"
end
```

#### Using the get_custom_datev_check_document_permission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCustomDatevCheckDocumentPermissionPositiveResponse>, Integer, Hash)> get_custom_datev_check_document_permission_with_http_info(x_integration_id)

```ruby
begin
  # Verify service is enabled
  data, status_code, headers = api_instance.get_custom_datev_check_document_permission_with_http_info(x_integration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCustomDatevCheckDocumentPermissionPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->get_custom_datev_check_document_permission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |

### Return type

[**GetCustomDatevCheckDocumentPermissionPositiveResponse**](GetCustomDatevCheckDocumentPermissionPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_custom_datev_check_eau_permission

> <GetCustomDatevCheckEauPermissionPositiveResponse> get_custom_datev_check_eau_permission(x_integration_id)

Verify service is enabled

This endpoint validates that this DATEV integration is ready to use the eAU feature.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::CustomEndpointsApi.new
x_integration_id = 'datev:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.

begin
  # Verify service is enabled
  result = api_instance.get_custom_datev_check_eau_permission(x_integration_id)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->get_custom_datev_check_eau_permission: #{e}"
end
```

#### Using the get_custom_datev_check_eau_permission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCustomDatevCheckEauPermissionPositiveResponse>, Integer, Hash)> get_custom_datev_check_eau_permission_with_http_info(x_integration_id)

```ruby
begin
  # Verify service is enabled
  data, status_code, headers = api_instance.get_custom_datev_check_eau_permission_with_http_info(x_integration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCustomDatevCheckEauPermissionPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->get_custom_datev_check_eau_permission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |

### Return type

[**GetCustomDatevCheckEauPermissionPositiveResponse**](GetCustomDatevCheckEauPermissionPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_custom_datev_check_write_permission

> <GetCustomDatevCheckWritePermissionPositiveResponse> get_custom_datev_check_write_permission(x_integration_id)

Verify service is enabled

This endpoint returns whether you can write to this DATEV integration.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::CustomEndpointsApi.new
x_integration_id = 'datev:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.

begin
  # Verify service is enabled
  result = api_instance.get_custom_datev_check_write_permission(x_integration_id)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->get_custom_datev_check_write_permission: #{e}"
end
```

#### Using the get_custom_datev_check_write_permission_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCustomDatevCheckWritePermissionPositiveResponse>, Integer, Hash)> get_custom_datev_check_write_permission_with_http_info(x_integration_id)

```ruby
begin
  # Verify service is enabled
  data, status_code, headers = api_instance.get_custom_datev_check_write_permission_with_http_info(x_integration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCustomDatevCheckWritePermissionPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->get_custom_datev_check_write_permission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |

### Return type

[**GetCustomDatevCheckWritePermissionPositiveResponse**](GetCustomDatevCheckWritePermissionPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_custom_datev_data_pushes

> <GetCustomDatevDataPushesPositiveResponse> get_custom_datev_data_pushes(x_integration_id)

Get DATEV data pushes

Returns all \"DATEV Data Pushes\" of the last 2 months. You can use this endpoint to give your users transparency about submitted \"ASCII-Files\" and their status. Each data push can contain multiple files that were submitted.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::CustomEndpointsApi.new
x_integration_id = 'datev:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.

begin
  # Get DATEV data pushes
  result = api_instance.get_custom_datev_data_pushes(x_integration_id)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->get_custom_datev_data_pushes: #{e}"
end
```

#### Using the get_custom_datev_data_pushes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCustomDatevDataPushesPositiveResponse>, Integer, Hash)> get_custom_datev_data_pushes_with_http_info(x_integration_id)

```ruby
begin
  # Get DATEV data pushes
  data, status_code, headers = api_instance.get_custom_datev_data_pushes_with_http_info(x_integration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCustomDatevDataPushesPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->get_custom_datev_data_pushes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |

### Return type

[**GetCustomDatevDataPushesPositiveResponse**](GetCustomDatevDataPushesPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_custom_datev_eau_requests_eau_id

> <GetCustomDatevEauRequestsEauIdPositiveResponse> get_custom_datev_eau_requests_eau_id(x_integration_id, eau_id)

Query the status of the eAU request

This endpoint queries the status of the eAU request for the given DATEV integration.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::CustomEndpointsApi.new
x_integration_id = 'datev:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
eau_id = 'eau_id_example' # String | GET /custom/datev/eau-requests/:eau_id Parameter

begin
  # Query the status of the eAU request
  result = api_instance.get_custom_datev_eau_requests_eau_id(x_integration_id, eau_id)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->get_custom_datev_eau_requests_eau_id: #{e}"
end
```

#### Using the get_custom_datev_eau_requests_eau_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCustomDatevEauRequestsEauIdPositiveResponse>, Integer, Hash)> get_custom_datev_eau_requests_eau_id_with_http_info(x_integration_id, eau_id)

```ruby
begin
  # Query the status of the eAU request
  data, status_code, headers = api_instance.get_custom_datev_eau_requests_eau_id_with_http_info(x_integration_id, eau_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCustomDatevEauRequestsEauIdPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->get_custom_datev_eau_requests_eau_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **eau_id** | **String** | GET /custom/datev/eau-requests/:eau_id Parameter |  |

### Return type

[**GetCustomDatevEauRequestsEauIdPositiveResponse**](GetCustomDatevEauRequestsEauIdPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_custom_datev_system_information

> <GetCustomDatevSystemInformationPositiveResponse> get_custom_datev_system_information(x_integration_id)

Get DATEV system information

This endpoint returns BeraterNr (consultant_number), MandantenNr (client_number) and the payroll system (LODAS or Lohn und Gehalt). Useful to generate a DATEV ASCII file for the passthrough endpoint.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::CustomEndpointsApi.new
x_integration_id = 'datev:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.

begin
  # Get DATEV system information
  result = api_instance.get_custom_datev_system_information(x_integration_id)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->get_custom_datev_system_information: #{e}"
end
```

#### Using the get_custom_datev_system_information_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCustomDatevSystemInformationPositiveResponse>, Integer, Hash)> get_custom_datev_system_information_with_http_info(x_integration_id)

```ruby
begin
  # Get DATEV system information
  data, status_code, headers = api_instance.get_custom_datev_system_information_with_http_info(x_integration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCustomDatevSystemInformationPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->get_custom_datev_system_information_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |

### Return type

[**GetCustomDatevSystemInformationPositiveResponse**](GetCustomDatevSystemInformationPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_custom_datev_download_document

> <PostCustomDatevDownloadDocumentPositiveResponse> post_custom_datev_download_document(x_integration_id, opts)

Download Payroll Document

Download a document from DATEV  <Note>   This endpoint requires the permission **Manage documents** to be enabled in [your scope config](/scopes). </Note>  ### Example Request Body  ```json {   \"accounting_month\": \"2001-12-01\",   \"document_type\": \"LOJE\",   \"employee_id\": null } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::CustomEndpointsApi.new
x_integration_id = 'datev:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  post_custom_datev_download_document_request_body: Kombo::PostCustomDatevDownloadDocumentRequestBody.new({accounting_month: Time.now, document_type: 'AANB', employee_id: 'employee_id_example'}) # PostCustomDatevDownloadDocumentRequestBody | POST /custom/datev/download-document Request body
}

begin
  # Download Payroll Document
  result = api_instance.post_custom_datev_download_document(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->post_custom_datev_download_document: #{e}"
end
```

#### Using the post_custom_datev_download_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostCustomDatevDownloadDocumentPositiveResponse>, Integer, Hash)> post_custom_datev_download_document_with_http_info(x_integration_id, opts)

```ruby
begin
  # Download Payroll Document
  data, status_code, headers = api_instance.post_custom_datev_download_document_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostCustomDatevDownloadDocumentPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->post_custom_datev_download_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **post_custom_datev_download_document_request_body** | [**PostCustomDatevDownloadDocumentRequestBody**](PostCustomDatevDownloadDocumentRequestBody.md) | POST /custom/datev/download-document Request body | [optional] |

### Return type

[**PostCustomDatevDownloadDocumentPositiveResponse**](PostCustomDatevDownloadDocumentPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_custom_datev_employees_employee_id_download_document

> <PostCustomDatevEmployeesEmployeeIdDownloadDocumentPositiveResponse> post_custom_datev_employees_employee_id_download_document(x_integration_id, employee_id, opts)

Download Payroll Document

Download a document from DATEV  <Note>   This endpoint requires the permission **Manage documents** to be enabled in [your scope config](/scopes). </Note>  ### Example Request Body  ```json {   \"accounting_month\": \"2001-12-01\",   \"document_type\": \"LOJE\" } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::CustomEndpointsApi.new
x_integration_id = 'datev:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
employee_id = 'employee_id_example' # String | POST /custom/datev/employees/:employee_id/download-document Parameter
opts = {
  post_custom_datev_employees_employee_id_download_document_request_body: Kombo::PostCustomDatevEmployeesEmployeeIdDownloadDocumentRequestBody.new({accounting_month: Time.now, document_type: 'AANB'}) # PostCustomDatevEmployeesEmployeeIdDownloadDocumentRequestBody | POST /custom/datev/employees/:employee_id/download-document Request body
}

begin
  # Download Payroll Document
  result = api_instance.post_custom_datev_employees_employee_id_download_document(x_integration_id, employee_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->post_custom_datev_employees_employee_id_download_document: #{e}"
end
```

#### Using the post_custom_datev_employees_employee_id_download_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostCustomDatevEmployeesEmployeeIdDownloadDocumentPositiveResponse>, Integer, Hash)> post_custom_datev_employees_employee_id_download_document_with_http_info(x_integration_id, employee_id, opts)

```ruby
begin
  # Download Payroll Document
  data, status_code, headers = api_instance.post_custom_datev_employees_employee_id_download_document_with_http_info(x_integration_id, employee_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostCustomDatevEmployeesEmployeeIdDownloadDocumentPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->post_custom_datev_employees_employee_id_download_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **employee_id** | **String** | POST /custom/datev/employees/:employee_id/download-document Parameter |  |
| **post_custom_datev_employees_employee_id_download_document_request_body** | [**PostCustomDatevEmployeesEmployeeIdDownloadDocumentRequestBody**](PostCustomDatevEmployeesEmployeeIdDownloadDocumentRequestBody.md) | POST /custom/datev/employees/:employee_id/download-document Request body | [optional] |

### Return type

[**PostCustomDatevEmployeesEmployeeIdDownloadDocumentPositiveResponse**](PostCustomDatevEmployeesEmployeeIdDownloadDocumentPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_custom_datev_employees_employee_id_eau_requests

> <PostCustomDatevEmployeesEmployeeIdEauRequestsPositiveResponse> post_custom_datev_employees_employee_id_eau_requests(x_integration_id, employee_id, opts)

Create eAU Request

Create a request for an electronic certificate of incapacity for work (eAU).  <Note>   This endpoint requires the permission **Manage eAU** to be enabled in [your scope config](/scopes). </Note>  ### Example Request Body  ```json {   \"start_work_incapacity\": \"2022-01-01\" } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::CustomEndpointsApi.new
x_integration_id = 'datev:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
employee_id = 'remote:12312' # String | ID of the employee that should be updated. You can use their Kombo `id` or their ID in the remote system by prefixing it with `remote:` (e.g., `remote:12312`)
opts = {
  post_custom_datev_employees_employee_id_eau_requests_request_body: Kombo::PostCustomDatevEmployeesEmployeeIdEauRequestsRequestBody.new({start_work_incapacity: 'start_work_incapacity_example'}) # PostCustomDatevEmployeesEmployeeIdEauRequestsRequestBody | POST /custom/datev/employees/:employee_id/eau-requests Request body
}

begin
  # Create eAU Request
  result = api_instance.post_custom_datev_employees_employee_id_eau_requests(x_integration_id, employee_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->post_custom_datev_employees_employee_id_eau_requests: #{e}"
end
```

#### Using the post_custom_datev_employees_employee_id_eau_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostCustomDatevEmployeesEmployeeIdEauRequestsPositiveResponse>, Integer, Hash)> post_custom_datev_employees_employee_id_eau_requests_with_http_info(x_integration_id, employee_id, opts)

```ruby
begin
  # Create eAU Request
  data, status_code, headers = api_instance.post_custom_datev_employees_employee_id_eau_requests_with_http_info(x_integration_id, employee_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostCustomDatevEmployeesEmployeeIdEauRequestsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->post_custom_datev_employees_employee_id_eau_requests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **employee_id** | **String** | ID of the employee that should be updated. You can use their Kombo &#x60;id&#x60; or their ID in the remote system by prefixing it with &#x60;remote:&#x60; (e.g., &#x60;remote:12312&#x60;) |  |
| **post_custom_datev_employees_employee_id_eau_requests_request_body** | [**PostCustomDatevEmployeesEmployeeIdEauRequestsRequestBody**](PostCustomDatevEmployeesEmployeeIdEauRequestsRequestBody.md) | POST /custom/datev/employees/:employee_id/eau-requests Request body | [optional] |

### Return type

[**PostCustomDatevEmployeesEmployeeIdEauRequestsPositiveResponse**](PostCustomDatevEmployeesEmployeeIdEauRequestsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_custom_datev_passthrough

> <PostCustomDatevPassthroughPositiveResponse> post_custom_datev_passthrough(x_integration_id, opts)

Write raw DATEV ASCII file

This action allows to send an arbitrary ASCII file directly to DATEV LODAS or Lohn und Gehalt. Kombo adds validation for the file format but not on the content. This action allows you to implement any use case that you might have with DATEV payroll ASCII imports.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::CustomEndpointsApi.new
x_integration_id = 'datev:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  post_custom_datev_passthrough_request_body: Kombo::PostCustomDatevPassthroughRequestBody.new({file_content: 'file_content_example', accounting_month: Time.now, target_system: 'LODAS', file_type: 'STAMMDATEN', file_name: 'file_name_example'}) # PostCustomDatevPassthroughRequestBody | POST /custom/datev/passthrough Request body
}

begin
  # Write raw DATEV ASCII file
  result = api_instance.post_custom_datev_passthrough(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->post_custom_datev_passthrough: #{e}"
end
```

#### Using the post_custom_datev_passthrough_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostCustomDatevPassthroughPositiveResponse>, Integer, Hash)> post_custom_datev_passthrough_with_http_info(x_integration_id, opts)

```ruby
begin
  # Write raw DATEV ASCII file
  data, status_code, headers = api_instance.post_custom_datev_passthrough_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostCustomDatevPassthroughPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->post_custom_datev_passthrough_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **post_custom_datev_passthrough_request_body** | [**PostCustomDatevPassthroughRequestBody**](PostCustomDatevPassthroughRequestBody.md) | POST /custom/datev/passthrough Request body | [optional] |

### Return type

[**PostCustomDatevPassthroughPositiveResponse**](PostCustomDatevPassthroughPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_custom_datev_push_data_general

> <PostCustomDatevPushDataGeneralPositiveResponse> post_custom_datev_push_data_general(x_integration_id, opts)

Push general data to DATEV

Uploads the currently relevant general data (employees, compensations, and time offs) to DATEV. This will create so called ASCII files that the accountant has to import in DATEV. You can call this endpoint to implement an on-demand sync to DATEV, for example if you want to offer your users a button to do that in your application.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::CustomEndpointsApi.new
x_integration_id = 'datev:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  body: { ... } # Object | POST /custom/datev/push-data/general Request body
}

begin
  # Push general data to DATEV
  result = api_instance.post_custom_datev_push_data_general(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->post_custom_datev_push_data_general: #{e}"
end
```

#### Using the post_custom_datev_push_data_general_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostCustomDatevPushDataGeneralPositiveResponse>, Integer, Hash)> post_custom_datev_push_data_general_with_http_info(x_integration_id, opts)

```ruby
begin
  # Push general data to DATEV
  data, status_code, headers = api_instance.post_custom_datev_push_data_general_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostCustomDatevPushDataGeneralPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->post_custom_datev_push_data_general_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **body** | **Object** | POST /custom/datev/push-data/general Request body | [optional] |

### Return type

[**PostCustomDatevPushDataGeneralPositiveResponse**](PostCustomDatevPushDataGeneralPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_custom_datev_push_data_payroll

> <PostCustomDatevPushDataPayrollPositiveResponse> post_custom_datev_push_data_payroll(x_integration_id, opts)

Push payroll data to DATEV

Uploads the currently relevant payroll data (supplements) to DATEV. This will create so called ASCII files that the accountant has to import in DATEV. After finishing the payroll preparation or after correcting payroll, you can call this.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::CustomEndpointsApi.new
x_integration_id = 'datev:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  post_custom_datev_push_data_payroll_request_body: Kombo::PostCustomDatevPushDataPayrollRequestBody.new({payroll_month: Time.now}) # PostCustomDatevPushDataPayrollRequestBody | POST /custom/datev/push-data/payroll Request body
}

begin
  # Push payroll data to DATEV
  result = api_instance.post_custom_datev_push_data_payroll(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->post_custom_datev_push_data_payroll: #{e}"
end
```

#### Using the post_custom_datev_push_data_payroll_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostCustomDatevPushDataPayrollPositiveResponse>, Integer, Hash)> post_custom_datev_push_data_payroll_with_http_info(x_integration_id, opts)

```ruby
begin
  # Push payroll data to DATEV
  data, status_code, headers = api_instance.post_custom_datev_push_data_payroll_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostCustomDatevPushDataPayrollPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->post_custom_datev_push_data_payroll_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **post_custom_datev_push_data_payroll_request_body** | [**PostCustomDatevPushDataPayrollRequestBody**](PostCustomDatevPushDataPayrollRequestBody.md) | POST /custom/datev/push-data/payroll Request body | [optional] |

### Return type

[**PostCustomDatevPushDataPayrollPositiveResponse**](PostCustomDatevPushDataPayrollPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_custom_silae_employees_employee_id_payroll_supplements

> <PostCustomSilaeEmployeesEmployeeIdPayrollSupplementsPositiveResponse> post_custom_silae_employees_employee_id_payroll_supplements(x_integration_id, employee_id, opts)

Write Payroll Supplement

Write a payroll supplement to Silae using the supplement code.  <Note>   This endpoint requires the permission **Manage payroll** to be enabled in [your scope config](/scopes). </Note>  ### Example Request Body  ```json {   \"employee_id\": \"EvLV61zdahkN4ftPJbmPCkdv\",   \"supplement_code\": \"200\",   \"effective_date\": \"2024-01-14\",   \"element_amount\": 6 } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::CustomEndpointsApi.new
x_integration_id = 'silae:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
employee_id = 'EvLV61zdahkN4ftPJbmPCkdv' # String | ID of the employee that should be updated. You can use their Kombo `id` or their ID in the remote system by prefixing it with `remote:` (e.g., `remote:12312`)
opts = {
  post_custom_silae_employees_employee_id_payroll_supplements_request_body: Kombo::PostCustomSilaeEmployeesEmployeeIdPayrollSupplementsRequestBody.new({supplement_code: 'supplement_code_example', effective_date: Time.now}) # PostCustomSilaeEmployeesEmployeeIdPayrollSupplementsRequestBody | POST /custom/silae/employees/:employee_id/payroll-supplements Request body
}

begin
  # Write Payroll Supplement
  result = api_instance.post_custom_silae_employees_employee_id_payroll_supplements(x_integration_id, employee_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->post_custom_silae_employees_employee_id_payroll_supplements: #{e}"
end
```

#### Using the post_custom_silae_employees_employee_id_payroll_supplements_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostCustomSilaeEmployeesEmployeeIdPayrollSupplementsPositiveResponse>, Integer, Hash)> post_custom_silae_employees_employee_id_payroll_supplements_with_http_info(x_integration_id, employee_id, opts)

```ruby
begin
  # Write Payroll Supplement
  data, status_code, headers = api_instance.post_custom_silae_employees_employee_id_payroll_supplements_with_http_info(x_integration_id, employee_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostCustomSilaeEmployeesEmployeeIdPayrollSupplementsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->post_custom_silae_employees_employee_id_payroll_supplements_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **employee_id** | **String** | ID of the employee that should be updated. You can use their Kombo &#x60;id&#x60; or their ID in the remote system by prefixing it with &#x60;remote:&#x60; (e.g., &#x60;remote:12312&#x60;) |  |
| **post_custom_silae_employees_employee_id_payroll_supplements_request_body** | [**PostCustomSilaeEmployeesEmployeeIdPayrollSupplementsRequestBody**](PostCustomSilaeEmployeesEmployeeIdPayrollSupplementsRequestBody.md) | POST /custom/silae/employees/:employee_id/payroll-supplements Request body | [optional] |

### Return type

[**PostCustomSilaeEmployeesEmployeeIdPayrollSupplementsPositiveResponse**](PostCustomSilaeEmployeesEmployeeIdPayrollSupplementsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_custom_datev_employees_employee_id_compensations

> <PutCustomDatevEmployeesEmployeeIdCompensationsPositiveResponse> put_custom_datev_employees_employee_id_compensations(x_integration_id, employee_id, opts)

Set DATEV compensations

Sets the compensations for an employee on the specified effective date.   Other compensations will end at the effective date. That means, if you would like to add a compensation, you also have to include the compensations that you would like to keep.  <Note>   This endpoint requires the permission **Manage payroll** to be enabled in [your scope config](/scopes). </Note>  ### Example Request Body  ```json {   \"employee_id\": \"3bdhemmSP1TPQDGWtRveRot9\",   \"effective_date\": \"2022-12-01\",   \"compensations\": [     {       \"amount\": 4500,       \"currency\": \"EUR\",       \"period\": \"MONTH\",       \"lohnart\": 200     },     {       \"amount\": 30,       \"currency\": \"EUR\",       \"period\": \"HOUR\"     }   ] } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::CustomEndpointsApi.new
x_integration_id = 'datev:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
employee_id = '3bdhemmSP1TPQDGWtRveRot9' # String | ID of the employee that should be updated. You can use their Kombo `id` or their ID in the remote system by prefixing it with `remote:` (e.g., `remote:12312`)
opts = {
  put_custom_datev_employees_employee_id_compensations_request_body: Kombo::PutCustomDatevEmployeesEmployeeIdCompensationsRequestBody.new({effective_date: Time.now, compensations: [Kombo::PutCustomDatevEmployeesEmployeeIdCompensationsRequestBodyCompensationsInner.new({amount: 3.56, currency: 'EUR', period: 'HOUR'})]}) # PutCustomDatevEmployeesEmployeeIdCompensationsRequestBody | PUT /custom/datev/employees/:employee_id/compensations Request body
}

begin
  # Set DATEV compensations
  result = api_instance.put_custom_datev_employees_employee_id_compensations(x_integration_id, employee_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->put_custom_datev_employees_employee_id_compensations: #{e}"
end
```

#### Using the put_custom_datev_employees_employee_id_compensations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutCustomDatevEmployeesEmployeeIdCompensationsPositiveResponse>, Integer, Hash)> put_custom_datev_employees_employee_id_compensations_with_http_info(x_integration_id, employee_id, opts)

```ruby
begin
  # Set DATEV compensations
  data, status_code, headers = api_instance.put_custom_datev_employees_employee_id_compensations_with_http_info(x_integration_id, employee_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutCustomDatevEmployeesEmployeeIdCompensationsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->put_custom_datev_employees_employee_id_compensations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **employee_id** | **String** | ID of the employee that should be updated. You can use their Kombo &#x60;id&#x60; or their ID in the remote system by prefixing it with &#x60;remote:&#x60; (e.g., &#x60;remote:12312&#x60;) |  |
| **put_custom_datev_employees_employee_id_compensations_request_body** | [**PutCustomDatevEmployeesEmployeeIdCompensationsRequestBody**](PutCustomDatevEmployeesEmployeeIdCompensationsRequestBody.md) | PUT /custom/datev/employees/:employee_id/compensations Request body | [optional] |

### Return type

[**PutCustomDatevEmployeesEmployeeIdCompensationsPositiveResponse**](PutCustomDatevEmployeesEmployeeIdCompensationsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_custom_datev_employees_employee_id_prepare_payroll

> <PutCustomDatevEmployeesEmployeeIdPreparePayrollPositiveResponse> put_custom_datev_employees_employee_id_prepare_payroll(x_integration_id, employee_id, opts)

Prepare DATEV Payroll

What DATEV requires to prepare payroll is very specific and currently, as DATEV is not providing \"read\", this is not part of the unified model.  <Note>   This endpoint requires the permission **Manage payroll** to be enabled in [your scope config](/scopes). </Note>  ### Example Request Body  ```json {   \"employee_id\": \"EvLV61zdahkN4ftPJbmPCkdv\",   \"payroll_run\": {     \"date\": \"2022-05-01\"   },   \"fixed_payments\": [     {       \"amount\": 560,       \"lohnart\": 100     }   ],   \"hourly_payments\": [     {       \"hours\": 14,       \"lohnart\": 200     },     {       \"hours\": 16,       \"lohnart\": 232     }   ],   \"custom_lodas\": [     {       \"amount\": 8,       \"lohnart\": 300,       \"bearbeitungsschluessel\": 4     }   ] } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::CustomEndpointsApi.new
x_integration_id = 'datev:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
employee_id = 'EvLV61zdahkN4ftPJbmPCkdv' # String | ID of the employee that should be updated. You can use their Kombo `id` or their ID in the remote system by prefixing it with `remote:` (e.g., `remote:12312`)
opts = {
  put_custom_datev_employees_employee_id_prepare_payroll_request_body: Kombo::PutCustomDatevEmployeesEmployeeIdPreparePayrollRequestBody.new({payroll_run: Kombo::PutCustomDatevEmployeesEmployeeIdPreparePayrollRequestBodyPayrollRun.new({date: Time.now}), hourly_payments: [Kombo::PutCustomDatevEmployeesEmployeeIdPreparePayrollRequestBodyHourlyPaymentsInner.new({hours: 3.56, lohnart: 3.56})], fixed_payments: [Kombo::PutCustomDatevEmployeesEmployeeIdPreparePayrollRequestBodyFixedPaymentsInner.new({amount: 3.56, lohnart: 3.56})]}) # PutCustomDatevEmployeesEmployeeIdPreparePayrollRequestBody | PUT /custom/datev/employees/:employee_id/prepare-payroll Request body
}

begin
  # Prepare DATEV Payroll
  result = api_instance.put_custom_datev_employees_employee_id_prepare_payroll(x_integration_id, employee_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->put_custom_datev_employees_employee_id_prepare_payroll: #{e}"
end
```

#### Using the put_custom_datev_employees_employee_id_prepare_payroll_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutCustomDatevEmployeesEmployeeIdPreparePayrollPositiveResponse>, Integer, Hash)> put_custom_datev_employees_employee_id_prepare_payroll_with_http_info(x_integration_id, employee_id, opts)

```ruby
begin
  # Prepare DATEV Payroll
  data, status_code, headers = api_instance.put_custom_datev_employees_employee_id_prepare_payroll_with_http_info(x_integration_id, employee_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutCustomDatevEmployeesEmployeeIdPreparePayrollPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling CustomEndpointsApi->put_custom_datev_employees_employee_id_prepare_payroll_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **employee_id** | **String** | ID of the employee that should be updated. You can use their Kombo &#x60;id&#x60; or their ID in the remote system by prefixing it with &#x60;remote:&#x60; (e.g., &#x60;remote:12312&#x60;) |  |
| **put_custom_datev_employees_employee_id_prepare_payroll_request_body** | [**PutCustomDatevEmployeesEmployeeIdPreparePayrollRequestBody**](PutCustomDatevEmployeesEmployeeIdPreparePayrollRequestBody.md) | PUT /custom/datev/employees/:employee_id/prepare-payroll Request body | [optional] |

### Return type

[**PutCustomDatevEmployeesEmployeeIdPreparePayrollPositiveResponse**](PutCustomDatevEmployeesEmployeeIdPreparePayrollPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

