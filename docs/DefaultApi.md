# Kombo::DefaultApi

All URIs are relative to *https://api.kombo.dev/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**webhook_ai_apply_application_status_updated_webhook_payload**](DefaultApi.md#webhook_ai_apply_application_status_updated_webhook_payload) | **POST** /ai-apply-application-status-updated | AI Apply: Application status updated |
| [**webhook_ai_apply_job_posting_status_updated_webhook_payload**](DefaultApi.md#webhook_ai_apply_job_posting_status_updated_webhook_payload) | **POST** /ai-apply-job-posting-status-updated | AI Apply: Job posting status updated |
| [**webhook_assessment_order_received_webhook_payload**](DefaultApi.md#webhook_assessment_order_received_webhook_payload) | **POST** /assessment:order-received | Assessment: Order received |
| [**webhook_connection_flow_failed_webhook_payload**](DefaultApi.md#webhook_connection_flow_failed_webhook_payload) | **POST** /connection-flow-failed | Connection flow failed |
| [**webhook_data_changed_webhook_payload**](DefaultApi.md#webhook_data_changed_webhook_payload) | **POST** /data-changed | Data changed |
| [**webhook_inline_assessment_order_received_webhook_payload**](DefaultApi.md#webhook_inline_assessment_order_received_webhook_payload) | **POST** /inline-assessment:order-received | Inline assessment: Order received |
| [**webhook_integration_created_webhook_payload**](DefaultApi.md#webhook_integration_created_webhook_payload) | **POST** /integration-created | Integration created |
| [**webhook_integration_deleted_webhook_payload**](DefaultApi.md#webhook_integration_deleted_webhook_payload) | **POST** /integration-deleted | Integration deleted |
| [**webhook_integration_state_changed_webhook_payload**](DefaultApi.md#webhook_integration_state_changed_webhook_payload) | **POST** /integration-state-changed | Integration state changed |
| [**webhook_remote_event_received_webhook_payload**](DefaultApi.md#webhook_remote_event_received_webhook_payload) | **POST** /remote-event-received | Remote event received |
| [**webhook_sync_finished_webhook_payload**](DefaultApi.md#webhook_sync_finished_webhook_payload) | **POST** /sync-finished | Sync finished |


## webhook_ai_apply_application_status_updated_webhook_payload

> webhook_ai_apply_application_status_updated_webhook_payload(x_kombo_signature, ai_apply_application_status_updated_webhook_payload)

AI Apply: Application status updated

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::DefaultApi.new
x_kombo_signature =  # String | HMAC signature for webhook verification. See the webhook documentation for details on how to verify this signature.
ai_apply_application_status_updated_webhook_payload =  # AiApplyApplicationStatusUpdatedWebhookPayload | 

begin
  # AI Apply: Application status updated
  api_instance.webhook_ai_apply_application_status_updated_webhook_payload(x_kombo_signature, ai_apply_application_status_updated_webhook_payload)
rescue Kombo::ApiError => e
  puts "Error when calling DefaultApi->webhook_ai_apply_application_status_updated_webhook_payload: #{e}"
end
```

#### Using the webhook_ai_apply_application_status_updated_webhook_payload_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhook_ai_apply_application_status_updated_webhook_payload_with_http_info(x_kombo_signature, ai_apply_application_status_updated_webhook_payload)

```ruby
begin
  # AI Apply: Application status updated
  data, status_code, headers = api_instance.webhook_ai_apply_application_status_updated_webhook_payload_with_http_info(x_kombo_signature, ai_apply_application_status_updated_webhook_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Kombo::ApiError => e
  puts "Error when calling DefaultApi->webhook_ai_apply_application_status_updated_webhook_payload_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_kombo_signature** | **String** | HMAC signature for webhook verification. See the webhook documentation for details on how to verify this signature. |  |
| **ai_apply_application_status_updated_webhook_payload** | [**AiApplyApplicationStatusUpdatedWebhookPayload**](AiApplyApplicationStatusUpdatedWebhookPayload.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## webhook_ai_apply_job_posting_status_updated_webhook_payload

> webhook_ai_apply_job_posting_status_updated_webhook_payload(x_kombo_signature, ai_apply_job_posting_status_updated_webhook_payload)

AI Apply: Job posting status updated

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::DefaultApi.new
x_kombo_signature =  # String | HMAC signature for webhook verification. See the webhook documentation for details on how to verify this signature.
ai_apply_job_posting_status_updated_webhook_payload =  # AiApplyJobPostingStatusUpdatedWebhookPayload | 

begin
  # AI Apply: Job posting status updated
  api_instance.webhook_ai_apply_job_posting_status_updated_webhook_payload(x_kombo_signature, ai_apply_job_posting_status_updated_webhook_payload)
rescue Kombo::ApiError => e
  puts "Error when calling DefaultApi->webhook_ai_apply_job_posting_status_updated_webhook_payload: #{e}"
end
```

#### Using the webhook_ai_apply_job_posting_status_updated_webhook_payload_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhook_ai_apply_job_posting_status_updated_webhook_payload_with_http_info(x_kombo_signature, ai_apply_job_posting_status_updated_webhook_payload)

```ruby
begin
  # AI Apply: Job posting status updated
  data, status_code, headers = api_instance.webhook_ai_apply_job_posting_status_updated_webhook_payload_with_http_info(x_kombo_signature, ai_apply_job_posting_status_updated_webhook_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Kombo::ApiError => e
  puts "Error when calling DefaultApi->webhook_ai_apply_job_posting_status_updated_webhook_payload_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_kombo_signature** | **String** | HMAC signature for webhook verification. See the webhook documentation for details on how to verify this signature. |  |
| **ai_apply_job_posting_status_updated_webhook_payload** | [**AiApplyJobPostingStatusUpdatedWebhookPayload**](AiApplyJobPostingStatusUpdatedWebhookPayload.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## webhook_assessment_order_received_webhook_payload

> webhook_assessment_order_received_webhook_payload(x_kombo_signature, assessment_order_received_webhook_payload)

Assessment: Order received

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::DefaultApi.new
x_kombo_signature =  # String | HMAC signature for webhook verification. See the webhook documentation for details on how to verify this signature.
assessment_order_received_webhook_payload =  # AssessmentOrderReceivedWebhookPayload | 

begin
  # Assessment: Order received
  api_instance.webhook_assessment_order_received_webhook_payload(x_kombo_signature, assessment_order_received_webhook_payload)
rescue Kombo::ApiError => e
  puts "Error when calling DefaultApi->webhook_assessment_order_received_webhook_payload: #{e}"
end
```

#### Using the webhook_assessment_order_received_webhook_payload_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhook_assessment_order_received_webhook_payload_with_http_info(x_kombo_signature, assessment_order_received_webhook_payload)

```ruby
begin
  # Assessment: Order received
  data, status_code, headers = api_instance.webhook_assessment_order_received_webhook_payload_with_http_info(x_kombo_signature, assessment_order_received_webhook_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Kombo::ApiError => e
  puts "Error when calling DefaultApi->webhook_assessment_order_received_webhook_payload_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_kombo_signature** | **String** | HMAC signature for webhook verification. See the webhook documentation for details on how to verify this signature. |  |
| **assessment_order_received_webhook_payload** | [**AssessmentOrderReceivedWebhookPayload**](AssessmentOrderReceivedWebhookPayload.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## webhook_connection_flow_failed_webhook_payload

> webhook_connection_flow_failed_webhook_payload(x_kombo_signature, connection_flow_failed_webhook_payload)

Connection flow failed

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::DefaultApi.new
x_kombo_signature =  # String | HMAC signature for webhook verification. See the webhook documentation for details on how to verify this signature.
connection_flow_failed_webhook_payload =  # ConnectionFlowFailedWebhookPayload | 

begin
  # Connection flow failed
  api_instance.webhook_connection_flow_failed_webhook_payload(x_kombo_signature, connection_flow_failed_webhook_payload)
rescue Kombo::ApiError => e
  puts "Error when calling DefaultApi->webhook_connection_flow_failed_webhook_payload: #{e}"
end
```

#### Using the webhook_connection_flow_failed_webhook_payload_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhook_connection_flow_failed_webhook_payload_with_http_info(x_kombo_signature, connection_flow_failed_webhook_payload)

```ruby
begin
  # Connection flow failed
  data, status_code, headers = api_instance.webhook_connection_flow_failed_webhook_payload_with_http_info(x_kombo_signature, connection_flow_failed_webhook_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Kombo::ApiError => e
  puts "Error when calling DefaultApi->webhook_connection_flow_failed_webhook_payload_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_kombo_signature** | **String** | HMAC signature for webhook verification. See the webhook documentation for details on how to verify this signature. |  |
| **connection_flow_failed_webhook_payload** | [**ConnectionFlowFailedWebhookPayload**](ConnectionFlowFailedWebhookPayload.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## webhook_data_changed_webhook_payload

> webhook_data_changed_webhook_payload(x_kombo_signature, data_changed_webhook_payload)

Data changed

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::DefaultApi.new
x_kombo_signature =  # String | HMAC signature for webhook verification. See the webhook documentation for details on how to verify this signature.
data_changed_webhook_payload =  # DataChangedWebhookPayload | 

begin
  # Data changed
  api_instance.webhook_data_changed_webhook_payload(x_kombo_signature, data_changed_webhook_payload)
rescue Kombo::ApiError => e
  puts "Error when calling DefaultApi->webhook_data_changed_webhook_payload: #{e}"
end
```

#### Using the webhook_data_changed_webhook_payload_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhook_data_changed_webhook_payload_with_http_info(x_kombo_signature, data_changed_webhook_payload)

```ruby
begin
  # Data changed
  data, status_code, headers = api_instance.webhook_data_changed_webhook_payload_with_http_info(x_kombo_signature, data_changed_webhook_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Kombo::ApiError => e
  puts "Error when calling DefaultApi->webhook_data_changed_webhook_payload_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_kombo_signature** | **String** | HMAC signature for webhook verification. See the webhook documentation for details on how to verify this signature. |  |
| **data_changed_webhook_payload** | [**DataChangedWebhookPayload**](DataChangedWebhookPayload.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## webhook_inline_assessment_order_received_webhook_payload

> webhook_inline_assessment_order_received_webhook_payload(x_kombo_signature, inline_assessment_order_received_webhook_payload)

Inline assessment: Order received

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::DefaultApi.new
x_kombo_signature =  # String | HMAC signature for webhook verification. See the webhook documentation for details on how to verify this signature.
inline_assessment_order_received_webhook_payload =  # InlineAssessmentOrderReceivedWebhookPayload | 

begin
  # Inline assessment: Order received
  api_instance.webhook_inline_assessment_order_received_webhook_payload(x_kombo_signature, inline_assessment_order_received_webhook_payload)
rescue Kombo::ApiError => e
  puts "Error when calling DefaultApi->webhook_inline_assessment_order_received_webhook_payload: #{e}"
end
```

#### Using the webhook_inline_assessment_order_received_webhook_payload_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhook_inline_assessment_order_received_webhook_payload_with_http_info(x_kombo_signature, inline_assessment_order_received_webhook_payload)

```ruby
begin
  # Inline assessment: Order received
  data, status_code, headers = api_instance.webhook_inline_assessment_order_received_webhook_payload_with_http_info(x_kombo_signature, inline_assessment_order_received_webhook_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Kombo::ApiError => e
  puts "Error when calling DefaultApi->webhook_inline_assessment_order_received_webhook_payload_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_kombo_signature** | **String** | HMAC signature for webhook verification. See the webhook documentation for details on how to verify this signature. |  |
| **inline_assessment_order_received_webhook_payload** | [**InlineAssessmentOrderReceivedWebhookPayload**](InlineAssessmentOrderReceivedWebhookPayload.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## webhook_integration_created_webhook_payload

> webhook_integration_created_webhook_payload(x_kombo_signature, integration_created_webhook_payload)

Integration created

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::DefaultApi.new
x_kombo_signature =  # String | HMAC signature for webhook verification. See the webhook documentation for details on how to verify this signature.
integration_created_webhook_payload =  # IntegrationCreatedWebhookPayload | 

begin
  # Integration created
  api_instance.webhook_integration_created_webhook_payload(x_kombo_signature, integration_created_webhook_payload)
rescue Kombo::ApiError => e
  puts "Error when calling DefaultApi->webhook_integration_created_webhook_payload: #{e}"
end
```

#### Using the webhook_integration_created_webhook_payload_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhook_integration_created_webhook_payload_with_http_info(x_kombo_signature, integration_created_webhook_payload)

```ruby
begin
  # Integration created
  data, status_code, headers = api_instance.webhook_integration_created_webhook_payload_with_http_info(x_kombo_signature, integration_created_webhook_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Kombo::ApiError => e
  puts "Error when calling DefaultApi->webhook_integration_created_webhook_payload_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_kombo_signature** | **String** | HMAC signature for webhook verification. See the webhook documentation for details on how to verify this signature. |  |
| **integration_created_webhook_payload** | [**IntegrationCreatedWebhookPayload**](IntegrationCreatedWebhookPayload.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## webhook_integration_deleted_webhook_payload

> webhook_integration_deleted_webhook_payload(x_kombo_signature, integration_deleted_webhook_payload)

Integration deleted

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::DefaultApi.new
x_kombo_signature =  # String | HMAC signature for webhook verification. See the webhook documentation for details on how to verify this signature.
integration_deleted_webhook_payload =  # IntegrationDeletedWebhookPayload | 

begin
  # Integration deleted
  api_instance.webhook_integration_deleted_webhook_payload(x_kombo_signature, integration_deleted_webhook_payload)
rescue Kombo::ApiError => e
  puts "Error when calling DefaultApi->webhook_integration_deleted_webhook_payload: #{e}"
end
```

#### Using the webhook_integration_deleted_webhook_payload_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhook_integration_deleted_webhook_payload_with_http_info(x_kombo_signature, integration_deleted_webhook_payload)

```ruby
begin
  # Integration deleted
  data, status_code, headers = api_instance.webhook_integration_deleted_webhook_payload_with_http_info(x_kombo_signature, integration_deleted_webhook_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Kombo::ApiError => e
  puts "Error when calling DefaultApi->webhook_integration_deleted_webhook_payload_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_kombo_signature** | **String** | HMAC signature for webhook verification. See the webhook documentation for details on how to verify this signature. |  |
| **integration_deleted_webhook_payload** | [**IntegrationDeletedWebhookPayload**](IntegrationDeletedWebhookPayload.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## webhook_integration_state_changed_webhook_payload

> webhook_integration_state_changed_webhook_payload(x_kombo_signature, integration_state_changed_webhook_payload)

Integration state changed

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::DefaultApi.new
x_kombo_signature =  # String | HMAC signature for webhook verification. See the webhook documentation for details on how to verify this signature.
integration_state_changed_webhook_payload =  # IntegrationStateChangedWebhookPayload | 

begin
  # Integration state changed
  api_instance.webhook_integration_state_changed_webhook_payload(x_kombo_signature, integration_state_changed_webhook_payload)
rescue Kombo::ApiError => e
  puts "Error when calling DefaultApi->webhook_integration_state_changed_webhook_payload: #{e}"
end
```

#### Using the webhook_integration_state_changed_webhook_payload_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhook_integration_state_changed_webhook_payload_with_http_info(x_kombo_signature, integration_state_changed_webhook_payload)

```ruby
begin
  # Integration state changed
  data, status_code, headers = api_instance.webhook_integration_state_changed_webhook_payload_with_http_info(x_kombo_signature, integration_state_changed_webhook_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Kombo::ApiError => e
  puts "Error when calling DefaultApi->webhook_integration_state_changed_webhook_payload_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_kombo_signature** | **String** | HMAC signature for webhook verification. See the webhook documentation for details on how to verify this signature. |  |
| **integration_state_changed_webhook_payload** | [**IntegrationStateChangedWebhookPayload**](IntegrationStateChangedWebhookPayload.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## webhook_remote_event_received_webhook_payload

> webhook_remote_event_received_webhook_payload(x_kombo_signature, remote_event_received_webhook_payload)

Remote event received

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::DefaultApi.new
x_kombo_signature =  # String | HMAC signature for webhook verification. See the webhook documentation for details on how to verify this signature.
remote_event_received_webhook_payload =  # RemoteEventReceivedWebhookPayload | 

begin
  # Remote event received
  api_instance.webhook_remote_event_received_webhook_payload(x_kombo_signature, remote_event_received_webhook_payload)
rescue Kombo::ApiError => e
  puts "Error when calling DefaultApi->webhook_remote_event_received_webhook_payload: #{e}"
end
```

#### Using the webhook_remote_event_received_webhook_payload_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhook_remote_event_received_webhook_payload_with_http_info(x_kombo_signature, remote_event_received_webhook_payload)

```ruby
begin
  # Remote event received
  data, status_code, headers = api_instance.webhook_remote_event_received_webhook_payload_with_http_info(x_kombo_signature, remote_event_received_webhook_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Kombo::ApiError => e
  puts "Error when calling DefaultApi->webhook_remote_event_received_webhook_payload_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_kombo_signature** | **String** | HMAC signature for webhook verification. See the webhook documentation for details on how to verify this signature. |  |
| **remote_event_received_webhook_payload** | [**RemoteEventReceivedWebhookPayload**](RemoteEventReceivedWebhookPayload.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## webhook_sync_finished_webhook_payload

> webhook_sync_finished_webhook_payload(x_kombo_signature, sync_finished_webhook_payload)

Sync finished

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::DefaultApi.new
x_kombo_signature =  # String | HMAC signature for webhook verification. See the webhook documentation for details on how to verify this signature.
sync_finished_webhook_payload =  # SyncFinishedWebhookPayload | 

begin
  # Sync finished
  api_instance.webhook_sync_finished_webhook_payload(x_kombo_signature, sync_finished_webhook_payload)
rescue Kombo::ApiError => e
  puts "Error when calling DefaultApi->webhook_sync_finished_webhook_payload: #{e}"
end
```

#### Using the webhook_sync_finished_webhook_payload_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> webhook_sync_finished_webhook_payload_with_http_info(x_kombo_signature, sync_finished_webhook_payload)

```ruby
begin
  # Sync finished
  data, status_code, headers = api_instance.webhook_sync_finished_webhook_payload_with_http_info(x_kombo_signature, sync_finished_webhook_payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Kombo::ApiError => e
  puts "Error when calling DefaultApi->webhook_sync_finished_webhook_payload_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_kombo_signature** | **String** | HMAC signature for webhook verification. See the webhook documentation for details on how to verify this signature. |  |
| **sync_finished_webhook_payload** | [**SyncFinishedWebhookPayload**](SyncFinishedWebhookPayload.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

