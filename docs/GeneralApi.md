# Kombo::GeneralApi

All URIs are relative to *https://api.kombo.dev/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_integrations_integration_id**](GeneralApi.md#delete_integrations_integration_id) | **DELETE** /integrations/{integration_id} | Delete integration |
| [**get_check_api_key**](GeneralApi.md#get_check_api_key) | **GET** /check-api-key | Check API key |
| [**get_integrations_integration_id**](GeneralApi.md#get_integrations_integration_id) | **GET** /integrations/{integration_id} | Get integration details |
| [**get_integrations_integration_id_custom_fields**](GeneralApi.md#get_integrations_integration_id_custom_fields) | **GET** /integrations/{integration_id}/custom-fields | Get custom fields with current mappings |
| [**get_integrations_integration_id_integration_fields**](GeneralApi.md#get_integrations_integration_id_integration_fields) | **GET** /integrations/{integration_id}/integration-fields | Get integration fields |
| [**get_lms_courses**](GeneralApi.md#get_lms_courses) | **GET** /lms/courses | Get courses |
| [**get_lms_users**](GeneralApi.md#get_lms_users) | **GET** /lms/users | Get users |
| [**get_tools_category**](GeneralApi.md#get_tools_category) | **GET** /tools/{category} | Get tools |
| [**patch_integrations_integration_id_integration_fields_integration_field_id**](GeneralApi.md#patch_integrations_integration_id_integration_fields_integration_field_id) | **PATCH** /integrations/{integration_id}/integration-fields/{integration_field_id} | Updates an integration fields passthrough setting |
| [**patch_lms_progress_progress_id**](GeneralApi.md#patch_lms_progress_progress_id) | **PATCH** /lms/progress/{progress_id} | Update progress |
| [**post_force_sync**](GeneralApi.md#post_force_sync) | **POST** /force-sync | Trigger sync |
| [**post_integrations_integration_id_relink**](GeneralApi.md#post_integrations_integration_id_relink) | **POST** /integrations/{integration_id}/relink | Create reconnection link |
| [**post_lms_content**](GeneralApi.md#post_lms_content) | **POST** /lms/content | Add content to course |
| [**post_lms_courses**](GeneralApi.md#post_lms_courses) | **POST** /lms/courses | Create course |
| [**post_lms_progress**](GeneralApi.md#post_lms_progress) | **POST** /lms/progress | Create progress |
| [**post_passthrough_tool_api**](GeneralApi.md#post_passthrough_tool_api) | **POST** /passthrough/{tool}/{api} | Send passthrough request |
| [**put_integrations_integration_id_custom_fields_custom_field_id**](GeneralApi.md#put_integrations_integration_id_custom_fields_custom_field_id) | **PUT** /integrations/{integration_id}/custom-fields/{custom_field_id} | Put custom field mappings |


## delete_integrations_integration_id

> <DeleteIntegrationsIntegrationIdPositiveResponse> delete_integrations_integration_id(integration_id, opts)

Delete integration

Delete the specified integration. **⚠️ This can not be undone!**

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::GeneralApi.new
integration_id = 'integration_id_example' # String | DELETE /integrations/:integration_id Parameter
opts = {
  body: { ... } # Object | DELETE /integrations/:integration_id Request body
}

begin
  # Delete integration
  result = api_instance.delete_integrations_integration_id(integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->delete_integrations_integration_id: #{e}"
end
```

#### Using the delete_integrations_integration_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteIntegrationsIntegrationIdPositiveResponse>, Integer, Hash)> delete_integrations_integration_id_with_http_info(integration_id, opts)

```ruby
begin
  # Delete integration
  data, status_code, headers = api_instance.delete_integrations_integration_id_with_http_info(integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteIntegrationsIntegrationIdPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->delete_integrations_integration_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_id** | **String** | DELETE /integrations/:integration_id Parameter |  |
| **body** | **Object** | DELETE /integrations/:integration_id Request body | [optional] |

### Return type

[**DeleteIntegrationsIntegrationIdPositiveResponse**](DeleteIntegrationsIntegrationIdPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_check_api_key

> <GetCheckApiKeyPositiveResponse> get_check_api_key

Check API key

Check whether your API key is working properly.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::GeneralApi.new

begin
  # Check API key
  result = api_instance.get_check_api_key
  p result
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->get_check_api_key: #{e}"
end
```

#### Using the get_check_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCheckApiKeyPositiveResponse>, Integer, Hash)> get_check_api_key_with_http_info

```ruby
begin
  # Check API key
  data, status_code, headers = api_instance.get_check_api_key_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCheckApiKeyPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->get_check_api_key_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetCheckApiKeyPositiveResponse**](GetCheckApiKeyPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_integrations_integration_id

> <GetIntegrationsIntegrationIdPositiveResponse> get_integrations_integration_id(integration_id)

Get integration details

Get the specified integration with everything you need to display it to your customer.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::GeneralApi.new
integration_id = 'integration_id_example' # String | GET /integrations/:integration_id Parameter

begin
  # Get integration details
  result = api_instance.get_integrations_integration_id(integration_id)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->get_integrations_integration_id: #{e}"
end
```

#### Using the get_integrations_integration_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIntegrationsIntegrationIdPositiveResponse>, Integer, Hash)> get_integrations_integration_id_with_http_info(integration_id)

```ruby
begin
  # Get integration details
  data, status_code, headers = api_instance.get_integrations_integration_id_with_http_info(integration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIntegrationsIntegrationIdPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->get_integrations_integration_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_id** | **String** | GET /integrations/:integration_id Parameter |  |

### Return type

[**GetIntegrationsIntegrationIdPositiveResponse**](GetIntegrationsIntegrationIdPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_integrations_integration_id_custom_fields

> <GetIntegrationsIntegrationIdCustomFieldsPositiveResponse> get_integrations_integration_id_custom_fields(integration_id, opts)

Get custom fields with current mappings

Get all custom fields available on the specified integration. **This includes the mapping to the corresponding integration field if applicable*

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::GeneralApi.new
integration_id = 'integration_id_example' # String | GET /integrations/:integration_id/custom-fields Parameter
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789 # Integer | The number of results to return per page. Maximum is 250.
}

begin
  # Get custom fields with current mappings
  result = api_instance.get_integrations_integration_id_custom_fields(integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->get_integrations_integration_id_custom_fields: #{e}"
end
```

#### Using the get_integrations_integration_id_custom_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIntegrationsIntegrationIdCustomFieldsPositiveResponse>, Integer, Hash)> get_integrations_integration_id_custom_fields_with_http_info(integration_id, opts)

```ruby
begin
  # Get custom fields with current mappings
  data, status_code, headers = api_instance.get_integrations_integration_id_custom_fields_with_http_info(integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIntegrationsIntegrationIdCustomFieldsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->get_integrations_integration_id_custom_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_id** | **String** | GET /integrations/:integration_id/custom-fields Parameter |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |

### Return type

[**GetIntegrationsIntegrationIdCustomFieldsPositiveResponse**](GetIntegrationsIntegrationIdCustomFieldsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_integrations_integration_id_integration_fields

> <GetIntegrationsIntegrationIdIntegrationFieldsPositiveResponse> get_integrations_integration_id_integration_fields(integration_id, opts)

Get integration fields

Get all fields available on the specified integration. **This includes the mapping to your custom fields**

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::GeneralApi.new
integration_id = 'integration_id_example' # String | GET /integrations/:integration_id/integration-fields Parameter
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789 # Integer | The number of results to return per page. Maximum is 2000.
}

begin
  # Get integration fields
  result = api_instance.get_integrations_integration_id_integration_fields(integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->get_integrations_integration_id_integration_fields: #{e}"
end
```

#### Using the get_integrations_integration_id_integration_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIntegrationsIntegrationIdIntegrationFieldsPositiveResponse>, Integer, Hash)> get_integrations_integration_id_integration_fields_with_http_info(integration_id, opts)

```ruby
begin
  # Get integration fields
  data, status_code, headers = api_instance.get_integrations_integration_id_integration_fields_with_http_info(integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIntegrationsIntegrationIdIntegrationFieldsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->get_integrations_integration_id_integration_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_id** | **String** | GET /integrations/:integration_id/integration-fields Parameter |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 2000. | [optional][default to 100] |

### Return type

[**GetIntegrationsIntegrationIdIntegrationFieldsPositiveResponse**](GetIntegrationsIntegrationIdIntegrationFieldsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lms_courses

> <GetLmsCoursesPositiveResponse> get_lms_courses(opts)

Get courses

Get courses    <Warning>**Closed Beta Feature:** This endpoint is currently in closed beta. We're testing it with selected customers before its public release. If you're interested in learning more or getting early access, please reach out.</Warning>    Retrieve all courses available in the LMS. Courses are structured learning programs that contain ordered content items and develop specific skills.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::GeneralApi.new
opts = {
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example', # String | Filter by a comma-separated list of remote IDs.
  title_contains: 'title_contains_example' # String | Filter by the `title` field. Can be used to find courses by keywords present in the course title.
}

begin
  # Get courses
  result = api_instance.get_lms_courses(opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->get_lms_courses: #{e}"
end
```

#### Using the get_lms_courses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLmsCoursesPositiveResponse>, Integer, Hash)> get_lms_courses_with_http_info(opts)

```ruby
begin
  # Get courses
  data, status_code, headers = api_instance.get_lms_courses_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLmsCoursesPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->get_lms_courses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |
| **title_contains** | **String** | Filter by the &#x60;title&#x60; field. Can be used to find courses by keywords present in the course title. | [optional] |

### Return type

[**GetLmsCoursesPositiveResponse**](GetLmsCoursesPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lms_users

> <GetLmsUsersPositiveResponse> get_lms_users(opts)

Get users

Get users    <Warning>**Closed Beta Feature:** This endpoint is currently in closed beta. We're testing it with selected customers before its public release. If you're interested in learning more or getting early access, please reach out.</Warning>    Retrieve all users from the LMS system. Users are learners who can enroll in and complete courses. The response includes their current progress across all enrolled courses.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::GeneralApi.new
opts = {
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example', # String | Filter by a comma-separated list of remote IDs.
  email: 'email_example', # String | Filter users by their work email address.
  status: Kombo::GetLmsUsersParameterStatus::ACTIVE # GetLmsUsersParameterStatus | Filter users by their current status.
}

begin
  # Get users
  result = api_instance.get_lms_users(opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->get_lms_users: #{e}"
end
```

#### Using the get_lms_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLmsUsersPositiveResponse>, Integer, Hash)> get_lms_users_with_http_info(opts)

```ruby
begin
  # Get users
  data, status_code, headers = api_instance.get_lms_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLmsUsersPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->get_lms_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |
| **email** | **String** | Filter users by their work email address. | [optional] |
| **status** | [**GetLmsUsersParameterStatus**](.md) | Filter users by their current status. | [optional] |

### Return type

[**GetLmsUsersPositiveResponse**](GetLmsUsersPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tools_category

> <GetToolsCategoryPositiveResponse> get_tools_category(category)

Get tools

Get a list of the tools (i.e., integrations) enabled in your environment.  This can (in combination with the `integration_tool` parameter of [the \"Create Link\" endpoint](/v1/post-create-link)) be used to, for example, display a custom list or grid of available integrations to your end users instead of exposing Kombo Connect's standard tool selector.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::GeneralApi.new
category = Kombo::GetToolsCategoryParameterCategory::HRIS # GetToolsCategoryParameterCategory | GET /tools/:category Parameter

begin
  # Get tools
  result = api_instance.get_tools_category(category)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->get_tools_category: #{e}"
end
```

#### Using the get_tools_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetToolsCategoryPositiveResponse>, Integer, Hash)> get_tools_category_with_http_info(category)

```ruby
begin
  # Get tools
  data, status_code, headers = api_instance.get_tools_category_with_http_info(category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetToolsCategoryPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->get_tools_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | [**GetToolsCategoryParameterCategory**](.md) | GET /tools/:category Parameter |  |

### Return type

[**GetToolsCategoryPositiveResponse**](GetToolsCategoryPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_integrations_integration_id_integration_fields_integration_field_id

> <PatchIntegrationsIntegrationIdIntegrationFieldsIntegrationFieldIdPositiveResponse> patch_integrations_integration_id_integration_fields_integration_field_id(integration_id, integration_field_id, opts)

Updates an integration fields passthrough setting

When enabled, the integration field will be passed as part of the `integration_fields` array on the specific model endpoint. Providing false will disable the passthrough for the specified field.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::GeneralApi.new
integration_id = 'integration_id' # String | PATCH /integrations/:integration_id/integration-fields/:integration_field_id Parameter
integration_field_id = 'integration_field_id' # String | PATCH /integrations/:integration_id/integration-fields/:integration_field_id Parameter
opts = {
  patch_integrations_integration_id_integration_fields_integration_field_id_request_body: Kombo::PatchIntegrationsIntegrationIdIntegrationFieldsIntegrationFieldIdRequestBody.new({enable_passthrough: false}) # PatchIntegrationsIntegrationIdIntegrationFieldsIntegrationFieldIdRequestBody | PATCH /integrations/:integration_id/integration-fields/:integration_field_id Request body
}

begin
  # Updates an integration fields passthrough setting
  result = api_instance.patch_integrations_integration_id_integration_fields_integration_field_id(integration_id, integration_field_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->patch_integrations_integration_id_integration_fields_integration_field_id: #{e}"
end
```

#### Using the patch_integrations_integration_id_integration_fields_integration_field_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PatchIntegrationsIntegrationIdIntegrationFieldsIntegrationFieldIdPositiveResponse>, Integer, Hash)> patch_integrations_integration_id_integration_fields_integration_field_id_with_http_info(integration_id, integration_field_id, opts)

```ruby
begin
  # Updates an integration fields passthrough setting
  data, status_code, headers = api_instance.patch_integrations_integration_id_integration_fields_integration_field_id_with_http_info(integration_id, integration_field_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PatchIntegrationsIntegrationIdIntegrationFieldsIntegrationFieldIdPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->patch_integrations_integration_id_integration_fields_integration_field_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_id** | **String** | PATCH /integrations/:integration_id/integration-fields/:integration_field_id Parameter |  |
| **integration_field_id** | **String** | PATCH /integrations/:integration_id/integration-fields/:integration_field_id Parameter |  |
| **patch_integrations_integration_id_integration_fields_integration_field_id_request_body** | [**PatchIntegrationsIntegrationIdIntegrationFieldsIntegrationFieldIdRequestBody**](PatchIntegrationsIntegrationIdIntegrationFieldsIntegrationFieldIdRequestBody.md) | PATCH /integrations/:integration_id/integration-fields/:integration_field_id Request body | [optional] |

### Return type

[**PatchIntegrationsIntegrationIdIntegrationFieldsIntegrationFieldIdPositiveResponse**](PatchIntegrationsIntegrationIdIntegrationFieldsIntegrationFieldIdPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## patch_lms_progress_progress_id

> <PatchLmsProgressProgressIdPositiveResponse> patch_lms_progress_progress_id(progress_id, opts)

Update progress

Update progress    <Warning>**Closed Beta Feature:** This endpoint is currently in closed beta. We're testing it with selected customers before its public release. If you're interested in learning more or getting early access, please reach out.</Warning>    Update an existing progress entry. Use this to record changes in status, scores, completion dates, or other learning metrics.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::GeneralApi.new
progress_id = 'progress_id_example' # String | The ID of the progress entry
opts = {
  patch_lms_progress_progress_id_request_body: Kombo::PatchLmsProgressProgressIdRequestBody.new # PatchLmsProgressProgressIdRequestBody | PATCH /lms/progress/:progress_id Request body
}

begin
  # Update progress
  result = api_instance.patch_lms_progress_progress_id(progress_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->patch_lms_progress_progress_id: #{e}"
end
```

#### Using the patch_lms_progress_progress_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PatchLmsProgressProgressIdPositiveResponse>, Integer, Hash)> patch_lms_progress_progress_id_with_http_info(progress_id, opts)

```ruby
begin
  # Update progress
  data, status_code, headers = api_instance.patch_lms_progress_progress_id_with_http_info(progress_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PatchLmsProgressProgressIdPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->patch_lms_progress_progress_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **progress_id** | **String** | The ID of the progress entry |  |
| **patch_lms_progress_progress_id_request_body** | [**PatchLmsProgressProgressIdRequestBody**](PatchLmsProgressProgressIdRequestBody.md) | PATCH /lms/progress/:progress_id Request body | [optional] |

### Return type

[**PatchLmsProgressProgressIdPositiveResponse**](PatchLmsProgressProgressIdPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_force_sync

> <PostForceSyncPositiveResponse> post_force_sync(x_integration_id, opts)

Trigger sync

Trigger a sync for a specific integration.  <Warning>Please note that it is **not** necessary nor recommended to call this endpoint periodically on your side. Kombo already performs periodic syncs for you and you should only trigger syncs yourself in special cases (like when a user clicks on a \"Sync\" button in your app).</Warning>

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::GeneralApi.new
x_integration_id = 'workday:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  post_force_sync_request_body: Kombo::PostForceSyncRequestBody.new # PostForceSyncRequestBody | POST /force-sync Request body
}

begin
  # Trigger sync
  result = api_instance.post_force_sync(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->post_force_sync: #{e}"
end
```

#### Using the post_force_sync_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostForceSyncPositiveResponse>, Integer, Hash)> post_force_sync_with_http_info(x_integration_id, opts)

```ruby
begin
  # Trigger sync
  data, status_code, headers = api_instance.post_force_sync_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostForceSyncPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->post_force_sync_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **post_force_sync_request_body** | [**PostForceSyncRequestBody**](PostForceSyncRequestBody.md) | POST /force-sync Request body | [optional] |

### Return type

[**PostForceSyncPositiveResponse**](PostForceSyncPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_integrations_integration_id_relink

> <PostIntegrationsIntegrationIdRelinkPositiveResponse> post_integrations_integration_id_relink(integration_id, opts)

Create reconnection link

Create a link that will allow the user to reconnect an integration. This is useful if you want to allow your users to update the credentials if the old ones for example expired.  Embed this the same way you would [embed the connect link](/connect/embedded-flow). By default, the link will be valid for 1 hour.  ### Example Request Body  ```json {   \"language\": \"en\",   \"scope_config_id\": \"9Pv6aCFwNDEzPNmwjSsY9SQx\",   \"link_type\": \"EMBEDDED\" } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::GeneralApi.new
integration_id = 'personio:93fCvorjZ2jas7ZekX1V1n5d' # String | POST /integrations/:integration_id/relink Parameter
opts = {
  post_integrations_integration_id_relink_request_body: Kombo::PostIntegrationsIntegrationIdRelinkRequestBody.new # PostIntegrationsIntegrationIdRelinkRequestBody | POST /integrations/:integration_id/relink Request body
}

begin
  # Create reconnection link
  result = api_instance.post_integrations_integration_id_relink(integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->post_integrations_integration_id_relink: #{e}"
end
```

#### Using the post_integrations_integration_id_relink_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostIntegrationsIntegrationIdRelinkPositiveResponse>, Integer, Hash)> post_integrations_integration_id_relink_with_http_info(integration_id, opts)

```ruby
begin
  # Create reconnection link
  data, status_code, headers = api_instance.post_integrations_integration_id_relink_with_http_info(integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostIntegrationsIntegrationIdRelinkPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->post_integrations_integration_id_relink_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_id** | **String** | POST /integrations/:integration_id/relink Parameter |  |
| **post_integrations_integration_id_relink_request_body** | [**PostIntegrationsIntegrationIdRelinkRequestBody**](PostIntegrationsIntegrationIdRelinkRequestBody.md) | POST /integrations/:integration_id/relink Request body | [optional] |

### Return type

[**PostIntegrationsIntegrationIdRelinkPositiveResponse**](PostIntegrationsIntegrationIdRelinkPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_lms_content

> <PostLmsContentPositiveResponse> post_lms_content(opts)

Add content to course

Add content to course    <Warning>**Closed Beta Feature:** This endpoint is currently in closed beta. We're testing it with selected customers before its public release. If you're interested in learning more or getting early access, please reach out.</Warning>    Add a new content item to a course. Content items are the building blocks of courses and can be videos, text materials, quizzes, or coaching sessions. They will be added to the end of the course's ordered content list.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::GeneralApi.new
opts = {
  post_lms_content_request_body: Kombo::PostLmsContentRequestBody.new({course_id: 'course_id_example', title: 'title_example', type: 'COACHING'}) # PostLmsContentRequestBody | POST /lms/content Request body
}

begin
  # Add content to course
  result = api_instance.post_lms_content(opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->post_lms_content: #{e}"
end
```

#### Using the post_lms_content_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostLmsContentPositiveResponse>, Integer, Hash)> post_lms_content_with_http_info(opts)

```ruby
begin
  # Add content to course
  data, status_code, headers = api_instance.post_lms_content_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostLmsContentPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->post_lms_content_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_lms_content_request_body** | [**PostLmsContentRequestBody**](PostLmsContentRequestBody.md) | POST /lms/content Request body | [optional] |

### Return type

[**PostLmsContentPositiveResponse**](PostLmsContentPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_lms_courses

> <PostLmsCoursesPositiveResponse> post_lms_courses(opts)

Create course

Create course    <Warning>**Closed Beta Feature:** This endpoint is currently in closed beta. We're testing it with selected customers before its public release. If you're interested in learning more or getting early access, please reach out.</Warning>    Create a new course in the LMS with a title, description, and associated skills. Content items can be added separately using the content endpoints.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::GeneralApi.new
opts = {
  post_lms_courses_request_body: Kombo::PostLmsCoursesRequestBody.new({title: 'title_example'}) # PostLmsCoursesRequestBody | POST /lms/courses Request body
}

begin
  # Create course
  result = api_instance.post_lms_courses(opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->post_lms_courses: #{e}"
end
```

#### Using the post_lms_courses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostLmsCoursesPositiveResponse>, Integer, Hash)> post_lms_courses_with_http_info(opts)

```ruby
begin
  # Create course
  data, status_code, headers = api_instance.post_lms_courses_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostLmsCoursesPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->post_lms_courses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_lms_courses_request_body** | [**PostLmsCoursesRequestBody**](PostLmsCoursesRequestBody.md) | POST /lms/courses Request body | [optional] |

### Return type

[**PostLmsCoursesPositiveResponse**](PostLmsCoursesPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_lms_progress

> <PostLmsProgressPositiveResponse> post_lms_progress(opts)

Create progress

Create progress    <Warning>**Closed Beta Feature:** This endpoint is currently in closed beta. We're testing it with selected customers before its public release. If you're interested in learning more or getting early access, please reach out.</Warning>    Create a new progress entry for a user in a course. This records enrollment, completion, scores, and other learning metrics.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::GeneralApi.new
opts = {
  post_lms_progress_request_body: Kombo::PostLmsProgressRequestBody.new({course_id: 'course_id_example', user_id: 'user_id_example', progress_id: 'progress_id_example', status: 'ENROLLED', enrollment_date: 'enrollment_date_example'}) # PostLmsProgressRequestBody | POST /lms/progress Request body
}

begin
  # Create progress
  result = api_instance.post_lms_progress(opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->post_lms_progress: #{e}"
end
```

#### Using the post_lms_progress_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostLmsProgressPositiveResponse>, Integer, Hash)> post_lms_progress_with_http_info(opts)

```ruby
begin
  # Create progress
  data, status_code, headers = api_instance.post_lms_progress_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostLmsProgressPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->post_lms_progress_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_lms_progress_request_body** | [**PostLmsProgressRequestBody**](PostLmsProgressRequestBody.md) | POST /lms/progress Request body | [optional] |

### Return type

[**PostLmsProgressPositiveResponse**](PostLmsProgressPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_passthrough_tool_api

> <PostPassthroughToolApiPositiveResponse> post_passthrough_tool_api(x_integration_id, tool, api, opts)

Send passthrough request

Send a request to the specified integration's native API.  At Kombo we put a lot of work into making sure that our unified API covers all our customers' use cases and that they never have to think about integration-specific logic again. There are cases, however, where our customers want to build features that are very integration-specific. That's where this endpoint comes in.  Pass in details about the request you want to make to the integration's API and we'll forward it for you. We'll also take care of setting the right base URL and authenticating your requests.  To get started, please pick the relevant API (some tools provide multiple to due different base URLs or authentication schemes) from the table below and pass in the `{tool}/{api}` identifier as part of the path.  |Integration|`{tool}/{api}`|Description| |---|---|---| |Personio|`personio/personnel`|Personio's [Personnel Data API](https://developer.personio.de/reference/get_company-employees). We automatically authenticate all requests using the client ID and secret and use `https://api.personio.de/v1` as the base URL.| |Personio|`personio/personnelv2`|Personio's [V2 Personnel Data API](https://developer.personio.de/v2.0/reference/introduction). We automatically authenticate all requests using the client ID and secret and use `https://api.personio.de/v2` as the base URL.| |Workday|`workday/soap`|[Workday's SOAP API](https://community.workday.com/sites/default/files/file-hosting/productionapi/index.html). We automatically authenticate all requests. Set `data` to your raw xml string. Use `/` as your `path`, as we will always send requests to `https://\\{domain\\}/ccx/service/\\{tenant\\}/\\{service_name\\}`. Set your `method` to `POST`. You need to specify the `api_options` object and set `service_name` to the name of the service you want to call. Find all available services [here](https://community.workday.com/sites/default/files/file-hosting/productionapi/versions/v41.0/index.html). The string that you submit as `data` will be the content of the `soapenv:Body` tag in the request. You can set the `service_version` to any valid Workday service version (the default is `38.2`).| |Workday|`workday/rest`|[Workday's REST API](https://community.workday.com/sites/default/files/file-hosting/restapi/index.html). We automatically authenticate all requests and use the correct Workday REST base URL for your tenant. The base URL follows the format: https://\\{domain\\}/api/\\{service_name\\}/\\{version\\}/\\{tenant\\}. You can specify any valid REST endpoint and method. See the Workday REST API documentation for available endpoints. You must specify the `api_options` object and set `service_name` to the name of the service you want to call. You can also specify the `version` (e.g., \"v1\", \"v2\"); if omitted, it defaults to \"v1\".| |SAP SuccessFactors|`successfactors/odata-v2`|[SuccessFactors' OData V2 API](https://help.sap.com/doc/74597e67f54d4f448252bad4c2b601c9/2211/en-US/SF_HCM_OData_API_REF_en.pdf). We automatically authenticate all requests and use `https://\\{api_domain\\}\\{path?\\}/odata/v2` as the base URL (the optional `\\{path\\}` is used when connecting via proxied/gateway domains).| |SmartRecruiters|`smartrecruiters/default`|Smartrecruiters [API](https://developers.smartrecruiters.com/reference/apply-api). We automatically authenticate all requests using OAuth and use `https://api.smartrecruiters.com` as the base URL.| |SmartRecruiters|`smartrecruiters/default`|Smartrecruiters [API](https://developers.smartrecruiters.com/reference/apply-api). We automatically authenticate all requests using the credentials supplied by the customer and use `https://api.smartrecruiters.com` as the base URL.| |Factorial|`factorial/api`|Factorial's [API](https://apidoc.factorialhr.com/). We automatically authenticate all requests and use `https://api.factorialhr.com/api` or `https://api.demo.factorial.dev/api` as the base URL, depending on the connected instance.| |Oracle Recruiting Cloud|`oraclerecruiting/rest`|[Oracles's REST API](https://docs.oracle.com/en/cloud/saas/human-resources/24d/farws/rest-endpoints.html). We automatically authenticate all requests and use 'https://\\{company_url\\}' as the base url.| |Oracle Recruiting Cloud|`oraclerecruiting/rest`|[Oracle's REST API](https://docs.oracle.com/en/cloud/saas/human-resources/24d/farws/rest-endpoints.html). We automatically authenticate all requests and use 'https://\\{company_url\\}' as the base url.| |Lever|`lever/v1`|[Lever's v1 API](https://hire.lever.co/developer/documentation). We automatically authenticate all requests using the partner credentials which have been configured in the Lever tool settings (this uses Kombo's partner credentials by default).| |iCIMS|`icims/default`|[iCIMS Default API](https://developer-community.icims.com/). We automatically authenticate all requests and use `https://api.icims.com/customers/\\{customer_id\\}` as the base url.| |Recruitee|`recruitee/default`|The [Recruitee API](https://api.recruitee.com/docs/index.html). We automatically authenticate all requests and use `https://api.recruitee.com/c/\\{company_id\\}` as the base URL.| |RecruiterFlow|`recruiterflow/v1`|RecruiterFlow API [docs](https://docs.recruiterflow.com/). We automatically authenticate all requests using the RF-Api-Key header and use `https://api.recruiterflow.com` as the base URL.| |Greenhouse|`greenhouse/harvest`|Greenhouse [Harvest API](https://developers.greenhouse.io/harvest.html). We automatically authenticate all requests using the API key and use `https://harvest.greenhouse.io/v1` as the base URL.| |Greenhouse Job Board|`greenhousejobboard/boards-api`|[Greenhouse Job Board API](https://developers.greenhouse.io/job-board). We automatically authenticate all requests and use 'https://boards-api.greenhouse.io/v1/boards/\\{job_board_token\\}' as the base URL. Optionally, you can provide a custom job_board_token to use a different job board.| |Teamtailor|`teamtailor/v1`|Teamtailor's [JSON-API](https://docs.teamtailor.com/). We authenticate all request with the Teamtailor API key and use the base URL `https://api.teamtailor.com/v1`.| |Teamtailor Job Boards|`teamtailorjobboards/direct-apply`|Teamtailor's [Job Board Direct Apply API](https://partner.teamtailor.com/job_boards/direct_apply/#direct-apply). We automatically authenticate all requests and use `https://5qbn6o9x4h.execute-api.eu-west-1.amazonaws.com/production` as the base URL. All requests are automatically signed with HMAC-SHA256 signature.| |Ashby|`ashby/v1`|Ashby's [V1 API](https://developers.ashbyhq.com/reference/introduction). We automatically authenticate all requests with the provided credentials and use `https://api.ashbyhq.com` as the base URL. Please note that Ashby uses an RPC-style API. Please check [the Ashby API documentation](https://developers.ashbyhq.com/reference/introduction) for details on how to use it.| |CEGID TalentSoft FrontOffice|`talentsoft/v2`|Cegid Talentsoft Recruiting FrontOffice [API](https://developers.cegid.com/api-details). We automatically authenticate all requests using the provided credentials and use `https://\\{domain\\}/api/v2` as the base URL.| |CEGID TalentSoft Customer|`talentsoftcustomer/v1`|Cegid Talentsoft Recruiting FrontOffice API: [API Documentation](https://developers.cegid.com/api-details#api=cegid-talentsoft-recruiting-frontoffice) We automatically authenticate all requests and use `https://\\{customer_subdomain\\}.talent-soft.com/api/v1` as the base URL.| |Talention|`talention/v1`|Talention's API. We automatically authenticate all requests and use `https://\\{api_domain\\}/tms/\\{account_id\\}/external/api/1.0` as the base URL. Documentation is provided privately by Talention. Contact Kombo support for assistance with specific endpoints.| |Onlyfy|`onlyfy/v1`|Onlyfy's [Public v1 REST API](https://onlyfy.io/doc/v1#section/Introduction). We automatically authenticate all requests using the `apikey` header and use `https://api.prescreenapp.io/v1` as the base URL.| |Personio|`personio/recruiting`|Personio's [Recruiting API](https://developer.personio.de/reference/get_company-employees). We automatically authenticate all requests using the Recruiting access token and use `https://api.personio.de/v1/recruiting` as the base URL.| |Personio|`personio/recruitingV2`|Personio's [V2 Recruiting API](https://developer.personio.de/reference/get_v2-recruiting-applications). We automatically authenticate all requests using the Recruiting access token, send the `Beta` header and use `https://api.personio.de/v2/recruiting` as the base URL.| |Personio|`personio/jobboard`|API endpoints exposed on Personio's public job board pages ([currently just the XML feed](https://developer.personio.de/reference/get_xml)). We automatically use the right `https://\\{company\\}.jobs.personio.de` base URL.| |UKG Pro|`ukgpro/recruting`|[UKG Pro's Recruiting API](https://developer.ukg.com/hcm/reference/retrieveapplications). We automatically authenticate all requests and use  `https://\\{hostname\\}/talent/recruiting/v2/\\{tenantalias\\}/api` as the base URL.| |UKG Pro|`ukgpro/default`|[UKG Pro's HRIS API](https://developer.ukg.com/hcm/reference/get_personnel-v1-person-details). We automatically authenticate all requests and use  `https://\\{hostname\\}` as the base URL.| |UKG Ready|`ukgready/api`|UKG Ready [API](https://secure.saashr.com/ta/docs/rest/public/). We automatically authenticate all requests using the provided credentials and use `https://\\{api_domain\\}` as the base URL.| |UKG Ready|`ukgready/api`|UKG Ready [API](https://secure.saashr.com/ta/docs/rest/public/). We automatically authenticate all requests using the provided credentials and use `https://\\{api_domain\\}` as the base URL.| |ADP Workforce Now|`adpworkforcenow/default`|[ADP Workforce Now API v2](https://developers.adp.com/build/api-explorer/hcm-offrg-wfn). We automatically authenticate all requests and use the correct subdomain.| |Taleo|`taleo/soap`|[Taleo's API](https://docs.oracle.com/en/cloud/saas/taleo-enterprise/23b/otwsu/c-taleoapi.html). We automatically authenticate all requests and use 'https://\\{your-subdomain\\}.taleo.net/enterprise/soap' as base URL.| |rexx systems|`rexx/default`|Rexx's HRIS export API. There is only one endpoint: `Get /`| |AFAS Software|`afas/api`|AFAS' [API](https://connect.afas.nl/rest/get). We automatically authenticate all requests and use `https://\\{domain\\}/ProfitRestServices` as the base URL.| |BambooHR|`bamboohr/v1`|BambooHR's [API](https://documentation.bamboohr.com/reference/get-employee). We automatically authenticate all requests using the customer credentials `https://api.bamboohr.com/api/gateway.php/\\{subdomain\\}/v1` as the base URL.| |Bullhorn|`bullhorn/default`|[Bullhorn's API](https://bullhorn.github.io/rest-api-docs/index.html). We automatically use the right `https://rest.bullhornstaffing.com/rest-services/\\{corpToken\\}` base URL.| |Workable|`workable/v1`|Workable's [API](https://workable.readme.io/reference/generate-an-access-token). We automatically authenticate all requests using the client ID and secret and use `https://\\{subdomain\\}.\\{environment\\}.com/spi/v3` as the base URL.| |PayFit|`payfitcustomer/api`|PayFit [Partner API](https://developers.payfit.io/reference). We automatically authenticate all requests using the provided API key and use `https://partner-api.payfit.com` as the base URL.| |PayFit|`payfitpartner/partner-api`|PayFit [Partner API](https://developers.payfit.io/reference). We automatically authenticate all requests using the OAuth access token and use `https://partner-api.payfit.com` as the base URL.| |Jobvite|`jobvite/api`|We automatically authenticate all requests and use 'https://api.jobvite.com/api/v2' as the base URL.| |Employment Hero|`employmenthero/default`|EmploymentHero [API](https://developer.employmenthero.com/api-references/#icon-book-open-introduction). We automatically authenticate all requests using the credentials supplied by the customer and use `https://api.employmenthero.com/api` as the base URL.| |Fountain|`fountain/v2`|Fountain's [Hire API](https://developer.fountain.com/reference/get_v2-applicants). We automatically authenticate all requests and use `https://api.fountain.com/v2` as the base URL.| |Fourth|`fourth/uk-employee`|Fourth [UK Employee API](https://developer.fourth.com/en-gb/docs/uk-employee-api/reference) We automatically authenticate all requests and use `https://api.fourth.com/hr/organisations/\\{organisation_id\\}/` as the base URL. We also enforce the required query params for all requests.| |Kenjo|`kenjo/api`|Kenjo's [API](https://kenjo.readme.io/reference/generate-the-api-key). We automatically authenticate all requests using the API key and use `https://api.kenjo.io/` as the base URL.| |HeavenHR|`heavenhr/v2`|[HeavenHR API](https://api.heavenhr.com/). We automatically authenticate all requests using the provided credentials and use `https://api.heavenhr.com/api/v2` as the base URL.| |HiBob|`hibob/v1`|[HibBob's v1 API](https://apidocs.hibob.com/reference/get_people). We automatically authenticate all requests using the service user credentials (or, for old integrations, the API key) and use `https://api.hibob.com/v1` as the base URL.| |HiBob|`hibob/hire`|[HiBob's Hire API](https://apidocs.hibob.com/docs/how-to-integrate-with-ats-hire-api). We automatically authenticate all requests using the hire service user credentials. The base URL is configured during the integration setup.| |Softgarden|`softgarden/frontend-v3`|[Softgarden's Frontend API v3](https://dev.softgarden.de/frontend-v3/. We automatically authenticate all requests and use 'https://api.softgarden.io/api/rest' as base URL.| |Softgarden|`softgarden/apply-api`|[Softgarden's Apply API](https://dev.softgarden.de/apply-api/). We automatically authenticate all requests and use 'https://jobdb.softgarden.de/jobdb/public' as base URL.| |Cezanne HR|`cezannehr/dataservice`|[CezanneHR's v7 dataservice API](https://api.cezannehr.com/).We automatically authenticate all requests and use the base URL `https://subdomain.cezanneondemand.com/cezanneondemand/v7/dataservice.svc`| |Microsoft Entra ID|`entraid/v1`|[AzureAD's API](https://learn.microsoft.com/en-us/graph/api/resources/identity-network-access-overview?view=graph-rest-1.0). We automatically authenticate all requests.| |Microsoft Azure AD|`azuread/v1`|[AzureAD's API](https://learn.microsoft.com/en-us/graph/api/resources/identity-network-access-overview?view=graph-rest-1.0). We automatically authenticate all requests.| |Google Workspace|`googleworkspace/people`|[Googles's API](https://developers.google.com/people/api/rest). We automatically authenticate all requests and use 'https://people.googleapis.com' as the base URL.| |Google Workspace|`googleworkspace/admin`|[Googles's API](https://developers.google.com/admin-sdk/directory/reference/rest). We automatically authenticate all requests and use 'https://admin.googleapis.com' as the base URL.| |Nmbrs|`nmbrs/soap`|[Nmbrs SOAP API](https://api.nmbrs.nl/soap/v3/). We automatically authenticate all requests and use `https://api.nmbrs.nl/soap/v3/` as the base URL. Set `data` to your raw XML string (the content that will be placed inside the `\\<soap:Body\\>` tag). Use `/` as your `path`, as we will always send requests to `https://api.nmbrs.nl/soap/v3/\\{service_name\\}.asmx`. Set your `method` to `POST`. You need to specify the `api_options` object and set `service_name` to the name of the service you want to call. Available services include `EmployeeService` and `CompanyService`.| |Pinpoint|`pinpoint/v1`|Pinpoint's [JSON:API](https://developers.pinpointhq.com/docs). We automatically authenticate all requests using the `X-API-KEY` header and use `https://\\{subdomain\\}.pinpointhq.com/api/v1` as the base URL.| |d.vinci|`dvinci/rest-api`|The [DVinci REST API](https://static.dvinci-easy.com/files/d.vinci%20rest-api.html). All requests are authenticated by Kombo and use `https://\\{dvinci_domain\\}/restApi/` as the base URL.| |d.vinci|`dvinci/apply-api`|The [DVinci Apply API](https://static.dvinci-easy.com/files/d.vinci%20application-apply-api.html). All requests are authenticated by Kombo and use `https://\\{dvinci_domain\\}/p/\\{portal_path\\}/` as the base URL.| |d.vinci admin|`dvinciadmin/rest-api`|[DVinci REST API](https://static.dvinci-easy.com/files/d.vinci%20rest-api.html).| |d.vinci admin|`dvinciadmin/odata-api`|[DVinci ODATA API](https://dvinci.freshdesk.com/en/support/solutions/articles/75000059523-odata-reporting-api).| |JOIN|`join/v2`|Join's [V2 API](https://docs.join.com/reference/getting-started). We automatically authenticate all requests and use `https://api.join.com/v2` as the base URL.| |Deel|`deel/api`|Deel's [API](https://developer.deel.com/reference/). We automatically authenticate all requests using the provided credentials and use `https://\\{api_domain\\}/rest` as the base URL.| |Remote|`remotecom/default`|Remote's [API](https://remote.com/resources/api/getting-started). We automatically authenticate all requests using provided credentials.| |IRIS Cascade|`iriscascade/v2`|IRIS Cascade HR [API](https://swagger.hrapi.co.uk/). We automatically authenticate all requests using the provided credentials and use `https://api.iris.co.uk/hr/v2` as the base URL.| |Okta|`okta/v1`|[Okta's API](https://developer.okta.com/docs/api/openapi/okta-management/management/tag/ApiServiceIntegrations/). We automatically authenticate all request ans use 'https://\\<your-okta-domain\\>/api/v1' as the base URL.| |Sage HR|`sagehr/api`|Sage HR's [API](https://developer.sage.com/hr/reference/api-ref). We automatically authenticate all requests and use `https://\\{subdomain\\}.sage.hr/api` as the base URL.| |Sage People|`sagepeople/salesforce-rest-api`|Sage People is built on Salesforce's [API](https://developer.salesforce.com/docs/atlas.en-us.api_rest.meta/api_rest/intro_what_is_rest_api.htm). We automatically authenticate all requests and use `https://\\{customer_name\\}.my.salesforce.com/` as the base URL.| |Humaans|`humaans/api`|Humaans' [API](https://docs.humaans.io/api/). We automatically authenticate all requests using the API key and use `https://app.humaans.io/api` as the base URL.| |TRAFFIT|`traffit/v2`|Traffit's [v2 API](https://api.traffit.com). We authenticate all requests with the Traffit API key and use the base URL `https://yourdomain.traffit.com/api/integration/v2`.| |eRecruiter|`erecruiter/api`|[eRecruiter's API](https://api.erecruiter.net/swagger/ui/index). We automatically authenticate all requests and use `https://\\{domain\\}/Api` as the base URL.| |Eurécia|`eurecia/api`|Eurécia [REST API](https://api.eurecia.com/eurecia/fw/swagger/index.html#/) We automatically authenticate all requests and use `https://\\{domain\\}/eurecia/rest` as the base URL.| |Abacus Umantis|`abacusumantis/v1`|[Umantis API v1](https://recruitingapp-91005709.umantis.com/api/v1/swagger-ui). We automatically authenticate all requests and use `https://\\{subdomain\\}.umantis.com/api/v1` as the base URL.| |Haufe Umantis|`umantis/v1`|[Umantis API v1](https://recruitingapp-91005709.umantis.com/api/v1/swagger-ui). We automatically authenticate all requests and use `https://\\{subdomain\\}.umantis.com/api/v1` as the base URL.| |Jobylon|`jobylon/push`|The [Jobylon Push API](https://developer.jobylon.com/push-api-and-webhooks/). We automatically authenticate all requests and use `https://\\{subdomain\\}.jobylon.com/p1` as the base URL.| |Jobylon|`jobylon/feed`|The [Jobylon Feed API](https://developer.jobylon.com/feed-api/). We automatically authenticate all requests and use `https://\\{subdomain\\}.jobylon.com/feeds/\\{job_hash\\}` as the base URL.| |Oracle HCM|`oraclehcm/api`|Oracle HCM Cloud [REST API](https://docs.oracle.com/en/cloud/saas/human-resources/24d/farws/index.html). We automatically authenticate all requests and use `https://\\{domain\\}/` as the base URL, where domain is your Oracle Cloud domain.| |Taleez|`taleez/0`|[Taleez's API](https://api.taleez.com/swagger-ui/index.html). We automatically authenticate all requests and use `https://api.taleez.com/0` as the base URL.| |HR WORKS|`hrworks/v2`|HRWorks's v2 [API](https://developers.hrworks.de/2.0/endpoints). We automatically authenticate all requests using the customer credentials.| |Abacus|`abacus/api`|Abacus [REST API](https://apihub.abacus.ch/). We automatically authenticate all requests and use `https://\\{\\{abacusUrl\\}\\}/api/entity/v1/mandants/\\{\\{mandantId\\}\\}` as the base URL.| |Zoho Recruit|`zohorecruit/v2`|Zoho Recruit's [V2 API](https://www.zoho.com/recruit/developer-guide/apiv2/modules-api.html). We automatically authenticate all requests and use `https://recruit.\\{domain\\}/recruit/v2` as the base URL.| |AlexisHR|`alexishr/v1`|[AlexisHR's v1 API](https://docs.alexishr.com/) We automatically authenticate all requests and use `https://\\{subdomain\\}.alexishr.com` as base URL.| |Simployer|`simployer/v1`|[AlexisHR's v1 API](https://docs.alexishr.com/) We automatically authenticate all requests and use `https://\\{subdomain\\}.alexishr.com` as base URL.| |Eploy|`eploy/api`|Eploy's [API](https://www.eploy.com/resources/developers/api-documentation/). We automatically authenticate all requests and use `https://\\{subdomain\\}.eploy.net/api` as the base URL.| |JobDiva|`jobdiva/api`|We automatically authenticate all requests and use `https://api.jobdiva.com` as the base URL.| |Visma Peple|`peple/hrm`|[Visma Payroll Reporting API](https://api.analytics1.hrm.visma.net/docs/openapi.html). We automatically authenticate all requests using the client credentials and use 'https://api.analytics1.hrm.visma.net' as the base URL.| |Visma YouServe|`youserve/learning`|Visma YouServe [Learning API](https://youserve-domain-api.github.io/SwaggerUI/learning.html). We automatically authenticate all requests using OAuth 2.0 with the provided credentials and use `https://api.youserve.nl/learning/v1.0` as the base URL.| |Dayforce|`dayforce/V1`|[Dayforce's API](https://developers.dayforce.com/Build/Home.aspx). We automatically authenticate all requests and use `\\{\\{baseUrl\\}\\}/Api/\\{\\{clientNamespace\\}\\}/V1` as the base URL| |Hansalog|`hansalog/vision`|Hansalog's [Vision API](https://hansalog-vision.document360.io/docs/). We automatically authenticate all requests and use `https://\\{subdomain\\}.hansalog-cloud.de/vision` as the base URL.| |Lattice|`lattice/passthrough`|Lattice's [API](https://developers.lattice.com/v2/docs/base-url-1). We automatically authenticate all requests using OAuth credentials with `https://api.latticehq.com` as the base URL.| |Lattice|`lattice/talent`|Lattice's [Talent API](https://developers.lattice.com/docs/introduction-1). We automatically authenticate all requests using OAuth credentials with `https://api.latticehq.com` as the base URL.| |Paylocity|`paylocity/default`|[Paylocity's Weblink API](https://developer.paylocity.com/integrations/reference/authentication-weblink). We automatically authenticate all requests and use 'https://\\{api|dc1demogw\\}.paylocity.com/' as the base URL.| |Paylocity|`paylocity/next-gen`|[Paylocity's NextGen API](https://developer.paylocity.com/integrations/reference/authentication). We automatically authenticate all requests and use 'https://dc1prodgwext.paylocity.com/' as the base URL.| |Paycor|`paycor/v1`|[Paycors's v1 API](https://developers.paycor.com/explore#section/Getting-Started). We automatically authenticate all requests and use 'https://apis.paycor.com'.| |Paycom|`paycom/v1`|Paycom's REST API. We automatically authenticate all requests using the provided SID and API Token and use `https://api.paycomonline.net/v4/rest/index.php/api/v1` as the base URL.| |Insperity|`insperity/api`|Insperity [APIs](https://developer.insperity.com/) We automatically authenticate all requests and use `https://api.insperity.com` as the base URL. For staging environments, we use `https://apistage.insperity.com`. Note that all requests require the company ID to be specified in the path or body.| |Paychex|`paychex/api`|Paychex [REST API](https://developer.paychex.com/documentation). We automatically authenticate all requests and use `https://api.paychex.com` as the base URL.| |Avature|`avature/custom-api`|Avatures's Custom API. Call `Get /openapi` to retrieve the specific custom API schema. We automatically authenticate all requests and use the instance specific custom API URL as the base URL.| |Apploi|`apploi/rest-api`|The [Apploi API](https://integrate.apploi.com/). We automatically authenticate all requests and use `https://partners.apploi.com/` as the base URL.| |Phenom|`phenom/rest-api`|The [Phenom API](https://developer.phenom.com/). We automatically authenticate all requests and use `https://api-stg.phenompro.com` as the base URL.| |Rippling|`rippling/api`|Rippling's [API](https://developer.rippling.com/documentation). We automatically authenticate all requests and use `https://api.rippling.com/platform/api` or`https://rest.ripplingapis.com` as the base URL.| |Heyrecruit|`heyrecruit/v2`|[Heyrecruit's v2 API](https://documenter.getpostman.com/view/23241256/2s9YysBLcf#47e271ac-47c8-4c75-9cc6-b8c506e9dad6). We automatically authenticate all requests using the client ID and secret and use `https://app.heyrecruit.de/api/v2` as the base URL.| |PeopleHR|`peoplehr/default`|[PeopleHR's API](https://apidocs.peoplehr.com/#). We automatically authenticate all request ans use 'https://api.peoplehr.net' as the base URL.| |JazzHR|`jazzhr/v1`|[JazzHR's v1 API](https://www.resumatorapi.com/v1/#!`).We automatically authenticate all requests and use \"https://api.resumatorapi.com/v1/\" as the base URL.| |Lucca|`lucca/api`|[Luccas's API](https://developers.lucca.fr/api-reference/legacy/introduction). We automatically authenticate all requests and use 'https://\\{account\\}.\\{ilucca|ilucca-demo\\}.\\{region\\}/' as the base URL.| |BITE|`bite/v1`|[Bite's v1 API](https://api.b-ite.io/docs/#/). We automatically authenticate all requests and use 'https://api.b-ite.io/v1' as base URL.| |Zelt|`zelt/partner`|Zelt's [Partner API](https://go.zelt.app/apiv2/swagger). We automatically authenticate all requests using the connected OAuth credentials and use `https://go.zelt.app/apiv2/partner` as the base URL.| |Planday|`planday/api`|Planday's [HR API v1.0](https://openapi.planday.com/api/hr?version=v1.0). We automatically authenticate all requests and use `https://openapi.planday.com` as the base URL.| |Hailey HR|`haileyhr/api`|Hailey HR's [API](https://api.haileyhr.app/docs/index.html). We automatically authenticate all requests using the provided credentials and use `https://api.haileyhr.app` as the base URL.| |Silae|`silae/rest`|[Silae's REST API](https://silae-api.document360.io/docs). We automatically authenticate all requests and use 'https://payroll-api.silae.fr/payroll' as the base URL.| |Mysolution|`mysolution/default`|[Mysolution's API](https://swagger.mysolution.nl/). We automatically authenticate all requests and use the customer's domain as base URL.| |InRecruiting by Zucchetti|`inrecruiting/default`|[inRecruiting's v3 API](https://inrecruiting.intervieweb.it/api-docs/). We automatically authenticate all requests and use the customers domain as base URL| |Connexys By Bullhorn|`connexys/api`|[Connexy's API](https://api.conexsys.com/client/v2/docs/#section/Overview). We automatically authenticate all requests and use `https://\\{connexys_domain\\}/` as the base URL.| |HR4YOU|`hr4you/v2`|[HR4YOU's v2 API](https://apiprodemo.hr4you.org/api2/docs). We automatically authenticate all requests and use the customers provided base URL (e.g., https://`\\{base_url\\}`/ or https://`\\{subdomain\\}.hr4you.org`/).| |Cornerstone OnDemand|`cornerstoneondemand/recruiting`|Cornerstone's [Recruiting API](https://csod.dev/reference/recruiting/). We automatically authenticate all requests using the client ID and secret and use `https://your_domain.csod.com/services/api` as the base URL.| |Zvoove Recruit|`zvooverecruit/jobs`|[Zvoove Recruit's Jobs API](https://api.zvoove.com/docs/). We automatically authenticate all requests using the jobs API key and use 'https://\\{domain\\}/api/public' as base URL.| |Zvoove Recruit|`zvooverecruit/applicants`|[Zvoove Recruit's Applicants API](https://api.zvoove.com/docs/). We automatically authenticate all requests using the applicants API key and use 'https://\\{domain\\}/api/public' as base URL.| |Spark Hire Recruit|`comeet/api`|[Spark Hire Recruit's API.](https://developers.comeet.com/reference/recruiting-api-overview)We automatically authenticate all requests and use `https://api.comeet.com` as the base URL.| |Leapsome|`leapsome/scim`|Leapsome [SCIM API](https://api.leapsome.com/scim/v1/api-docs/). We automatically authenticate all requests using the credentials supplied by the customer and use `https://api.leapsome.com/scim/v1` as the base URL.| |Leapsome|`leapsome/v1`|Leapsome [API](https://api.leapsome.com/v1/api-docs/). We automatically authenticate all requests using the credentials supplied by the customer and use `https://api.leapsome.com/v1` as the base URL.| |Compleet|`compleetpitcher/pitcher`|Compleet's Pitcher API. We automatically authenticate all requests and use the configured base URL.| |Gem|`gem/api`|Gem's [ATS API](https://api.gem.com/ats/v0/reference) We automatically authenticate all requests.| |workforce.com|`workforcecom/api`|Workforce.com [API](https://my.workforce.com/api/v2/documentation). We automatically authenticate all requests using the provided credentials and use `https://my.tanda.co` as the base URL.| |Laura|`laura/api`|We automatically authenticate all requests and use `https://\\{subdomain\\}.rekrytointi.com/api/v1.2` as the base URL.| |Coveto (REST API)|`covetorest/v1`|We automatically use `https://\\{subdomain\\}.coveto.de/public/api/v1` as the base URL. https://demo.coveto.de/swagger-ui/index.html#/| |Coveto (legacy SOAP API)|`coveto/public`|We automatically use `https://\\{subdomain\\}.coveto.de` as the base URL.| |MHR People First|`peoplefirst/v1`|MHR People First [v1 API](https://docs.people-first.com/api/api-docs/api-docs.html). We automatically authenticate all requests using the access token and tenant/environment codes. For default environments, we use `https://\\{tenant_code\\}.people-first.com/api/v1` as the base URL. For non-default environments, we use `https://\\{tenant_code\\}-\\{environment_code\\}.people-first.com/api/v1`.| |SD Worx|`sdworx/default`|SD Worx's [OData API](https://apistaging.cobra.sdworx.com/Resources). We automatically authenticate all requests using the client ID and secret and use `\\{api_url\\}` as the base URL.| |Crelate|`crelate/api`|Crelate [REST API](https://help.crelate.com/en/articles/4120536-crelate-api-developer-guide). We automatically authenticate all requests and use `https://app.crelate.com/api3` as the base URL.| |Absence.io|`absenceio/v2`|Absence.io [API](https://docs.absence.io/). We automatically authenticate all requests and use `https://app.absence.io/api/v2` as the base URL.| |Manatal|`manatal/open-api-v3`|[Manatal's Open API v3](https://developers.manatal.com/reference/getting-started). We automatically authenticate all requests and use `https://api.manatal.com/open/v3` as the base URL.| |Manatal|`manatal/career-page`|Manatal's Career Page API. We use `https://api.manatal.com/open/v3/career-page/\\{client_slug\\}` as the base URL.| |Avionté|`avionte/front-office-v1`|Avionte's API. We automatically authenticate all requests and use `https://api.avionte.com/front-office/v1` as the base URL. Documentation for the BOLD Front Office API: https://developer.avionte.com/reference/get-all-talent-tags| |a3innuva Nómina|`a3innuvanomina/laboral`|a3innuva Nómina API [docs](https://a3developers.wolterskluwer.es/). Requests are automatically authenticated using OAuth access tokens (refreshed when needed). Base URL: `https://a3api.wolterskluwer.es/Laboral/api`.| |DATEV|`datevhr/hr-exports`|DATEV's [hr-exports](https://developer.datev.de/en/product-detail/hr-exports/1.0.0/overview). We automatically authenticate all requests and use `https://hr-exports.api.datev.de/\\{platform|platform-sandbox\\}/v1/clients/\\{client-id\\}` as the base URL.| |DATEV|`datevhr/hr:payrollreports`|DATEV's [hr:payrollreports](https://developer.datev.de/en/product-detail/hr-payrollreports/2.0.0/overview) API. We automatically authenticate all requests and use `https://hr-payrollreports.api.datev.de/\\{platform|platform-sandbox\\}/v1/clients/\\{client-id\\}/` as the base URL.| |DATEV|`datevhr/eau`|DATEV's [eau](https://developer.datev.de/en/product-detail/eau-api/1.0.0/overview) API. We automatically authenticate all requests and use `https://eau.api.datev.de/\\{platform|platform-sandbox\\}/v1/clients/\\{client-id\\}/` as the base URL.| |Sympa|`sympa/api`|Sympa's [API](https://documenter.getpostman.com/view/33639379/2sA3kXG1vX#intro). We automatically authenticate all requests and use `https://api.sympahr.net/api/` as the base URL.| |Breezy HR|`breezyhr/v3`|[BreezyHR's v3 API](https://developer.breezy.hr/reference/overview). We automatically authenticate all requests and use \"https://api.breezy.hr/v3/\" as the base URL.| |Flatchr|`flatchr/api`|Flatchr's [API](https://developers.flatchr.io/docs/getting_started). We automatically authenticate all requests and use `https://api.flatchr.io` as the base URL.| |Flatchr|`flatchr/career`|Flatchr's [Career API](https://developers.flatchr.io/docs/QuickStart/Candidats/Creer_un_candidat). We automatically authenticate all requests and use `https://career.flatchr.io` as the base URL.| |ApplicantStack|`applicantstack/api`|ApplicantStack's [API](https://helpas.payrollservers.info/s/article/API-Integration-Guide). We automatically authenticate all requests and use `https://\\{subdomain\\}.applicantstack.com/api/` as the base URL.| |Visma Raet - Youforce|`youforce/v1.0`|[Youforce's basic v1.0 API](https://vr-api-integration.github.io/youforce-api-documentation/postman_collections.html). We automatically authenticate all requests and use 'https://api.youforce.com' as base URL.| |PeopleXD|`peoplexd/b2b`|PeopleXD's [B2B API](https://documenter.getpostman.com/view/3101638/TzeTHUDu#intro). We automatically authenticate all requests and use `https://api.corehr.com/ws/\\{tenant_id\\}/corehr` or `https://uatapi.corehr.com/ws/\\{tenant_id\\}/corehr` as the base URL.|  <Note>Please note that the passthrough API endpoints are only meant for edge cases. That's why we only expose them for new integrations after understanding a concrete customer use case. If you have such a use case in mind, please reach out to Kombo.</Note>

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::GeneralApi.new
x_integration_id = 'greenhouse:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
tool = 'personio' # String | The ID of the tool whose passthrough API you want to call (e.g., `personio`).
api = 'personnel' # String | The ID of the passthrough API you want to call (some tools provide multiple). Check the endpoint description for a list of all available APIs.
opts = {
  post_passthrough_tool_api_request_body: Kombo::PostPassthroughToolApiRequestBody.new({method: 'GET', path: 'path_example'}) # PostPassthroughToolApiRequestBody | POST /passthrough/:tool/:api Request body
}

begin
  # Send passthrough request
  result = api_instance.post_passthrough_tool_api(x_integration_id, tool, api, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->post_passthrough_tool_api: #{e}"
end
```

#### Using the post_passthrough_tool_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostPassthroughToolApiPositiveResponse>, Integer, Hash)> post_passthrough_tool_api_with_http_info(x_integration_id, tool, api, opts)

```ruby
begin
  # Send passthrough request
  data, status_code, headers = api_instance.post_passthrough_tool_api_with_http_info(x_integration_id, tool, api, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostPassthroughToolApiPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->post_passthrough_tool_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **tool** | **String** | The ID of the tool whose passthrough API you want to call (e.g., &#x60;personio&#x60;). |  |
| **api** | **String** | The ID of the passthrough API you want to call (some tools provide multiple). Check the endpoint description for a list of all available APIs. |  |
| **post_passthrough_tool_api_request_body** | [**PostPassthroughToolApiRequestBody**](PostPassthroughToolApiRequestBody.md) | POST /passthrough/:tool/:api Request body | [optional] |

### Return type

[**PostPassthroughToolApiPositiveResponse**](PostPassthroughToolApiPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_integrations_integration_id_custom_fields_custom_field_id

> <PutIntegrationsIntegrationIdCustomFieldsCustomFieldIdPositiveResponse> put_integrations_integration_id_custom_fields_custom_field_id(integration_id, custom_field_id, opts)

Put custom field mappings

Updates the mapping of a given custom field. If the custom field is already mapped, it will be updated.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::GeneralApi.new
integration_id = 'integration_id' # String | The unique ID of the integration where the custom field mapping should be updated
custom_field_id = 'custom_field_id' # String | The unique ID of the custom field that should be updated
opts = {
  put_integrations_integration_id_custom_fields_custom_field_id_request_body: Kombo::PutIntegrationsIntegrationIdCustomFieldsCustomFieldIdRequestBody.new({integration_field_id: 'integration_field_id_example'}) # PutIntegrationsIntegrationIdCustomFieldsCustomFieldIdRequestBody | PUT /integrations/:integration_id/custom-fields/:custom_field_id Request body
}

begin
  # Put custom field mappings
  result = api_instance.put_integrations_integration_id_custom_fields_custom_field_id(integration_id, custom_field_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->put_integrations_integration_id_custom_fields_custom_field_id: #{e}"
end
```

#### Using the put_integrations_integration_id_custom_fields_custom_field_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutIntegrationsIntegrationIdCustomFieldsCustomFieldIdPositiveResponse>, Integer, Hash)> put_integrations_integration_id_custom_fields_custom_field_id_with_http_info(integration_id, custom_field_id, opts)

```ruby
begin
  # Put custom field mappings
  data, status_code, headers = api_instance.put_integrations_integration_id_custom_fields_custom_field_id_with_http_info(integration_id, custom_field_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutIntegrationsIntegrationIdCustomFieldsCustomFieldIdPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling GeneralApi->put_integrations_integration_id_custom_fields_custom_field_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration_id** | **String** | The unique ID of the integration where the custom field mapping should be updated |  |
| **custom_field_id** | **String** | The unique ID of the custom field that should be updated |  |
| **put_integrations_integration_id_custom_fields_custom_field_id_request_body** | [**PutIntegrationsIntegrationIdCustomFieldsCustomFieldIdRequestBody**](PutIntegrationsIntegrationIdCustomFieldsCustomFieldIdRequestBody.md) | PUT /integrations/:integration_id/custom-fields/:custom_field_id Request body | [optional] |

### Return type

[**PutIntegrationsIntegrationIdCustomFieldsCustomFieldIdPositiveResponse**](PutIntegrationsIntegrationIdCustomFieldsCustomFieldIdPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

