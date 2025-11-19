# Kombo::UnifiedATSAssessmentBackgroundCheckAPIApi

All URIs are relative to *https://api.kombo.dev/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_assessment_orders_open**](UnifiedATSAssessmentBackgroundCheckAPIApi.md#get_assessment_orders_open) | **GET** /assessment/orders/open | Get open orders |
| [**get_assessment_packages**](UnifiedATSAssessmentBackgroundCheckAPIApi.md#get_assessment_packages) | **GET** /assessment/packages | Get packages |
| [**put_assessment_orders_assessment_order_id_result**](UnifiedATSAssessmentBackgroundCheckAPIApi.md#put_assessment_orders_assessment_order_id_result) | **PUT** /assessment/orders/{assessment_order_id}/result | Update order result |
| [**put_assessment_packages**](UnifiedATSAssessmentBackgroundCheckAPIApi.md#put_assessment_packages) | **PUT** /assessment/packages | Set packages |


## get_assessment_orders_open

> <GetAssessmentOrdersOpenPositiveResponse> get_assessment_orders_open(x_integration_id, opts)

Get open orders

Get all open assessment and background check orders of an integration.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAssessmentBackgroundCheckAPIApi.new
x_integration_id = 'recruitee:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789 # Integer | The number of results to return per page. Maximum is 250.
}

begin
  # Get open orders
  result = api_instance.get_assessment_orders_open(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAssessmentBackgroundCheckAPIApi->get_assessment_orders_open: #{e}"
end
```

#### Using the get_assessment_orders_open_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssessmentOrdersOpenPositiveResponse>, Integer, Hash)> get_assessment_orders_open_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get open orders
  data, status_code, headers = api_instance.get_assessment_orders_open_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssessmentOrdersOpenPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAssessmentBackgroundCheckAPIApi->get_assessment_orders_open_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |

### Return type

[**GetAssessmentOrdersOpenPositiveResponse**](GetAssessmentOrdersOpenPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_assessment_packages

> <GetAssessmentPackagesPositiveResponse> get_assessment_packages(x_integration_id)

Get packages

Get all available assessment and background check packages for an integration.  This is mainly intended for debugging. As you always need to submit the full list of available packages when using [\"set packages\"](/assessment/v1/put-packages), there shouldn't ever be a need to call this endpoint in production.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAssessmentBackgroundCheckAPIApi.new
x_integration_id = 'recruitee:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.

begin
  # Get packages
  result = api_instance.get_assessment_packages(x_integration_id)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAssessmentBackgroundCheckAPIApi->get_assessment_packages: #{e}"
end
```

#### Using the get_assessment_packages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAssessmentPackagesPositiveResponse>, Integer, Hash)> get_assessment_packages_with_http_info(x_integration_id)

```ruby
begin
  # Get packages
  data, status_code, headers = api_instance.get_assessment_packages_with_http_info(x_integration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAssessmentPackagesPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAssessmentBackgroundCheckAPIApi->get_assessment_packages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |

### Return type

[**GetAssessmentPackagesPositiveResponse**](GetAssessmentPackagesPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_assessment_orders_assessment_order_id_result

> <PutAssessmentOrdersAssessmentOrderIdResultPositiveResponse> put_assessment_orders_assessment_order_id_result(x_integration_id, assessment_order_id, opts)

Update order result

Updates an assessment or a background check order result.  ### Example Request Body  ```json {   \"status\": \"COMPLETED\",   \"score\": 90,   \"max_score\": 100,   \"result_url\": \"https://example.com\",   \"completed_at\": \"2023-04-04T00:00:00.000Z\",   \"attributes\": [     {       \"type\": \"TEXT\",       \"label\": \"Role fit\",       \"value\": \"Excellent\"     },     {       \"type\": \"SUB_RESULT\",       \"id\": \"<YOUR_INTERNAL_ID_OF_THE_TEST>\",       \"label\": \"Personality test\",       \"score\": {         \"value\": 97,         \"max\": 100       },       \"status\": \"COMPLETED\"     }   ],   \"attachments\": [     {       \"name\": \"Assessment Report.pdf\",       \"data\": \"SGkgdGhlcmUsIEtvbWJvIGlzIGN1cnJlbnRseSBoaXJpbmcgZW5naW5lZXJzIHRoYXQgbG92ZSB0byB3b3JrIG9uIGRldmVsb3BlciBwcm9kdWN0cy4=\",       \"content_type\": \"application/pdf\"     }   ] } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAssessmentBackgroundCheckAPIApi.new
x_integration_id = 'recruitee:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
assessment_order_id = 'GRKdd9dibYKKCrmGRSMJf3wu' # String | PUT /assessment/orders/:assessment_order_id/result Parameter
opts = {
  put_assessment_orders_assessment_order_id_result_request_body: Kombo::PutAssessmentOrdersAssessmentOrderIdResultRequestBody.new({status: 'COMPLETED', result_url: 'result_url_example'}) # PutAssessmentOrdersAssessmentOrderIdResultRequestBody | PUT /assessment/orders/:assessment_order_id/result Request body
}

begin
  # Update order result
  result = api_instance.put_assessment_orders_assessment_order_id_result(x_integration_id, assessment_order_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAssessmentBackgroundCheckAPIApi->put_assessment_orders_assessment_order_id_result: #{e}"
end
```

#### Using the put_assessment_orders_assessment_order_id_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAssessmentOrdersAssessmentOrderIdResultPositiveResponse>, Integer, Hash)> put_assessment_orders_assessment_order_id_result_with_http_info(x_integration_id, assessment_order_id, opts)

```ruby
begin
  # Update order result
  data, status_code, headers = api_instance.put_assessment_orders_assessment_order_id_result_with_http_info(x_integration_id, assessment_order_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAssessmentOrdersAssessmentOrderIdResultPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAssessmentBackgroundCheckAPIApi->put_assessment_orders_assessment_order_id_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **assessment_order_id** | **String** | PUT /assessment/orders/:assessment_order_id/result Parameter |  |
| **put_assessment_orders_assessment_order_id_result_request_body** | [**PutAssessmentOrdersAssessmentOrderIdResultRequestBody**](PutAssessmentOrdersAssessmentOrderIdResultRequestBody.md) | PUT /assessment/orders/:assessment_order_id/result Request body | [optional] |

### Return type

[**PutAssessmentOrdersAssessmentOrderIdResultPositiveResponse**](PutAssessmentOrdersAssessmentOrderIdResultPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_assessment_packages

> <PutAssessmentPackagesPositiveResponse> put_assessment_packages(x_integration_id, opts)

Set packages

Set packages  Replaces the list of available assessment and or background check packages.  Packages that have been previously submitted through this endpoint but aren't included again will be marked as deleted.  ### Example Request Body  ```json {   \"packages\": [     {       \"id\": \"1001\",       \"type\": \"SKILLS_TEST\",       \"name\": \"TypeScript\",       \"description\": \"TypeScript coding skills assessments\"     },     {       \"id\": \"1002\",       \"type\": \"VIDEO_INTERVIEW\",       \"name\": \"Video Interview\",       \"description\": \"Video interview to assess communication skills\"     }   ] } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAssessmentBackgroundCheckAPIApi.new
x_integration_id = 'recruitee:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  put_assessment_packages_request_body: Kombo::PutAssessmentPackagesRequestBody.new({packages: [Kombo::PutAssessmentPackagesRequestBodyPackagesInner.new({id: 'id_example', type: 'BEHAVIORAL', name: 'name_example', description: 'description_example'})]}) # PutAssessmentPackagesRequestBody | PUT /assessment/packages Request body
}

begin
  # Set packages
  result = api_instance.put_assessment_packages(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAssessmentBackgroundCheckAPIApi->put_assessment_packages: #{e}"
end
```

#### Using the put_assessment_packages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAssessmentPackagesPositiveResponse>, Integer, Hash)> put_assessment_packages_with_http_info(x_integration_id, opts)

```ruby
begin
  # Set packages
  data, status_code, headers = api_instance.put_assessment_packages_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAssessmentPackagesPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAssessmentBackgroundCheckAPIApi->put_assessment_packages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **put_assessment_packages_request_body** | [**PutAssessmentPackagesRequestBody**](PutAssessmentPackagesRequestBody.md) | PUT /assessment/packages Request body | [optional] |

### Return type

[**PutAssessmentPackagesPositiveResponse**](PutAssessmentPackagesPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

