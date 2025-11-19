# Kombo::KomboConnectApi

All URIs are relative to *https://api.kombo.dev/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_connect_integration_by_token_token**](KomboConnectApi.md#get_connect_integration_by_token_token) | **GET** /connect/integration-by-token/{token} | Get integration by token |
| [**post_connect_activate_integration**](KomboConnectApi.md#post_connect_activate_integration) | **POST** /connect/activate-integration | Activate integration (optional) |
| [**post_connect_create_link**](KomboConnectApi.md#post_connect_create_link) | **POST** /connect/create-link | Create connection link |


## get_connect_integration_by_token_token

> <GetConnectIntegrationByTokenTokenPositiveResponse> get_connect_integration_by_token_token(token)

Get integration by token

Use this endpoint with the token you get from the connection flow to retrieve information about the created integration.    It works in a similar way as the OAuth2 code flow to securely retrieve information and connect the integration to your user.  > Check out [our full guide](/connect/embedded-flow) for more details about implementing the connection flow into your app.  This endpoint is used to ensure users can't trick your system connecting their account in your system to another customers integration. You don't get the integration ID from the `showKomboConnect(link)` function but only the short lived token used for this endpoint so that users can't send you arbitrary data that you would put into your system.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::KomboConnectApi.new
token = 'token_example' # String | GET /connect/integration-by-token/:token Parameter

begin
  # Get integration by token
  result = api_instance.get_connect_integration_by_token_token(token)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling KomboConnectApi->get_connect_integration_by_token_token: #{e}"
end
```

#### Using the get_connect_integration_by_token_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetConnectIntegrationByTokenTokenPositiveResponse>, Integer, Hash)> get_connect_integration_by_token_token_with_http_info(token)

```ruby
begin
  # Get integration by token
  data, status_code, headers = api_instance.get_connect_integration_by_token_token_with_http_info(token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetConnectIntegrationByTokenTokenPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling KomboConnectApi->get_connect_integration_by_token_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | GET /connect/integration-by-token/:token Parameter |  |

### Return type

[**GetConnectIntegrationByTokenTokenPositiveResponse**](GetConnectIntegrationByTokenTokenPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_connect_activate_integration

> <PostConnectActivateIntegrationPositiveResponse> post_connect_activate_integration(opts)

Activate integration (optional)

Use this endpoint with the token you get from the connection flow to retrieve information about the created integration. It works in a similar way as the OAuth2 code flow to securely retrieve information and connect the integration to your user. You do not need to call this endpoint for an integration to become active.  <Warning>We are deprecating this endpoint in favour of the [get integration by code endpoint](/v1/get-integration-by-token-token). To migrate you only have to change to the new API endpoint.</Warning>  ### Example Request Body  ```json {   \"token\": \"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJtZXNzYWdlIjoiVGhpcyBpcyBub3QgYW4gYWN0dWFsIHRva2VuLiJ9.JulqgOZBMKceI8vh9YLpVX51efND0ZyfUNHDXLrPz_4\" } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::KomboConnectApi.new
opts = {
  post_connect_activate_integration_request_body: Kombo::PostConnectActivateIntegrationRequestBody.new({token: 'token_example'}) # PostConnectActivateIntegrationRequestBody | POST /connect/activate-integration Request body
}

begin
  # Activate integration (optional)
  result = api_instance.post_connect_activate_integration(opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling KomboConnectApi->post_connect_activate_integration: #{e}"
end
```

#### Using the post_connect_activate_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostConnectActivateIntegrationPositiveResponse>, Integer, Hash)> post_connect_activate_integration_with_http_info(opts)

```ruby
begin
  # Activate integration (optional)
  data, status_code, headers = api_instance.post_connect_activate_integration_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostConnectActivateIntegrationPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling KomboConnectApi->post_connect_activate_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_connect_activate_integration_request_body** | [**PostConnectActivateIntegrationRequestBody**](PostConnectActivateIntegrationRequestBody.md) | POST /connect/activate-integration Request body | [optional] |

### Return type

[**PostConnectActivateIntegrationPositiveResponse**](PostConnectActivateIntegrationPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_connect_create_link

> <PostConnectCreateLinkPositiveResponse> post_connect_create_link(opts)

Create connection link

Generate a unique link that allows your user to enter the embedded Kombo Connect flow.  > Check out [our full guide](/connect/embedded-flow) for more details about implementing the connection flow into your app.  > Kombo will not deduplicate integrations for you that are created with this endpoint. You are responsible for keeping track of integrations in your system and prevent customers from connecting the same tool again. Use the [reconnection link](/v1/post-integrations-integration-id-relink) endpoint if you want a customer to update their credentials.  ### Example Request Body  ```json {   \"end_user_email\": \"test@example.com\",   \"end_user_organization_name\": \"Test Inc.\",   \"integration_category\": \"HRIS\",   \"integration_tool\": \"personio\",   \"end_user_origin_id\": \"123\",   \"language\": \"en\",   \"link_type\": \"EMBEDDED\" } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::KomboConnectApi.new
opts = {
  post_connect_create_link_request_body: Kombo::PostConnectCreateLinkRequestBody.new({end_user_email: 'end_user_email_example', end_user_organization_name: 'end_user_organization_name_example'}) # PostConnectCreateLinkRequestBody | POST /connect/create-link Request body
}

begin
  # Create connection link
  result = api_instance.post_connect_create_link(opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling KomboConnectApi->post_connect_create_link: #{e}"
end
```

#### Using the post_connect_create_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostConnectCreateLinkPositiveResponse>, Integer, Hash)> post_connect_create_link_with_http_info(opts)

```ruby
begin
  # Create connection link
  data, status_code, headers = api_instance.post_connect_create_link_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostConnectCreateLinkPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling KomboConnectApi->post_connect_create_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_connect_create_link_request_body** | [**PostConnectCreateLinkRequestBody**](PostConnectCreateLinkRequestBody.md) | POST /connect/create-link Request body | [optional] |

### Return type

[**PostConnectCreateLinkPositiveResponse**](PostConnectCreateLinkPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

