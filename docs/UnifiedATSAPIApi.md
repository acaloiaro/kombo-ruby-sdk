# Kombo::UnifiedATSAPIApi

All URIs are relative to *https://api.kombo.dev/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_ats_candidates_candidate_id_tags**](UnifiedATSAPIApi.md#delete_ats_candidates_candidate_id_tags) | **DELETE** /ats/candidates/{candidate_id}/tags | Remove tag from candidate |
| [**get_ats_actions_ats_add_application_attachment**](UnifiedATSAPIApi.md#get_ats_actions_ats_add_application_attachment) | **GET** /ats/actions/ats_add_application_attachment |  |
| [**get_ats_actions_ats_add_candidate_attachment**](UnifiedATSAPIApi.md#get_ats_actions_ats_add_candidate_attachment) | **GET** /ats/actions/ats_add_candidate_attachment |  |
| [**get_ats_actions_ats_create_application**](UnifiedATSAPIApi.md#get_ats_actions_ats_create_application) | **GET** /ats/actions/ats_create_application |  |
| [**get_ats_actions_ats_create_candidate**](UnifiedATSAPIApi.md#get_ats_actions_ats_create_candidate) | **GET** /ats/actions/ats_create_candidate |  |
| [**get_ats_application_stages**](UnifiedATSAPIApi.md#get_ats_application_stages) | **GET** /ats/application-stages | Get application stages |
| [**get_ats_applications**](UnifiedATSAPIApi.md#get_ats_applications) | **GET** /ats/applications | Get applications |
| [**get_ats_applications_application_id_attachments**](UnifiedATSAPIApi.md#get_ats_applications_application_id_attachments) | **GET** /ats/applications/{application_id}/attachments | Get application attachments |
| [**get_ats_candidates**](UnifiedATSAPIApi.md#get_ats_candidates) | **GET** /ats/candidates | Get candidates |
| [**get_ats_candidates_candidate_id_attachments**](UnifiedATSAPIApi.md#get_ats_candidates_candidate_id_attachments) | **GET** /ats/candidates/{candidate_id}/attachments | Get candidate attachments |
| [**get_ats_interviews**](UnifiedATSAPIApi.md#get_ats_interviews) | **GET** /ats/interviews | Get interviews |
| [**get_ats_jobs**](UnifiedATSAPIApi.md#get_ats_jobs) | **GET** /ats/jobs | Get jobs |
| [**get_ats_offers**](UnifiedATSAPIApi.md#get_ats_offers) | **GET** /ats/offers | Get offers |
| [**get_ats_rejection_reasons**](UnifiedATSAPIApi.md#get_ats_rejection_reasons) | **GET** /ats/rejection-reasons | Get rejection reasons |
| [**get_ats_tags**](UnifiedATSAPIApi.md#get_ats_tags) | **GET** /ats/tags | Get tags |
| [**get_ats_users**](UnifiedATSAPIApi.md#get_ats_users) | **GET** /ats/users | Get users |
| [**patch_ats_applications_application_id_interviews**](UnifiedATSAPIApi.md#patch_ats_applications_application_id_interviews) | **PATCH** /ats/applications/{application_id}/interviews | Update interview |
| [**post_ats_applications_application_id_attachments**](UnifiedATSAPIApi.md#post_ats_applications_application_id_attachments) | **POST** /ats/applications/{application_id}/attachments | Add attachment to application |
| [**post_ats_applications_application_id_interviews**](UnifiedATSAPIApi.md#post_ats_applications_application_id_interviews) | **POST** /ats/applications/{application_id}/interviews | Create interview |
| [**post_ats_applications_application_id_notes**](UnifiedATSAPIApi.md#post_ats_applications_application_id_notes) | **POST** /ats/applications/{application_id}/notes | Add note to application |
| [**post_ats_applications_application_id_reject**](UnifiedATSAPIApi.md#post_ats_applications_application_id_reject) | **POST** /ats/applications/{application_id}/reject | Reject application |
| [**post_ats_applications_application_id_result_links**](UnifiedATSAPIApi.md#post_ats_applications_application_id_result_links) | **POST** /ats/applications/{application_id}/result-links | Add result link to application |
| [**post_ats_candidates**](UnifiedATSAPIApi.md#post_ats_candidates) | **POST** /ats/candidates | Create candidate |
| [**post_ats_candidates_candidate_id_attachments**](UnifiedATSAPIApi.md#post_ats_candidates_candidate_id_attachments) | **POST** /ats/candidates/{candidate_id}/attachments | Add attachment to candidate |
| [**post_ats_candidates_candidate_id_result_links**](UnifiedATSAPIApi.md#post_ats_candidates_candidate_id_result_links) | **POST** /ats/candidates/{candidate_id}/result-links | Add result link to candidate |
| [**post_ats_candidates_candidate_id_tags**](UnifiedATSAPIApi.md#post_ats_candidates_candidate_id_tags) | **POST** /ats/candidates/{candidate_id}/tags | Add tag to candidate |
| [**post_ats_import_tracked_application**](UnifiedATSAPIApi.md#post_ats_import_tracked_application) | **POST** /ats/import-tracked-application | Import tracked application |
| [**post_ats_jobs_job_id_applications**](UnifiedATSAPIApi.md#post_ats_jobs_job_id_applications) | **POST** /ats/jobs/{job_id}/applications | Create application |
| [**put_ats_applications_application_id_stage**](UnifiedATSAPIApi.md#put_ats_applications_application_id_stage) | **PUT** /ats/applications/{application_id}/stage | Move application to stage |


## delete_ats_candidates_candidate_id_tags

> <DeleteAtsCandidatesCandidateIdTagsPositiveResponse> delete_ats_candidates_candidate_id_tags(x_integration_id, candidate_id, opts)

Remove tag from candidate

Remove a tag from a candidate based on its name.  This will also succeed if the tag does not exist on the candidate.  <Note>   This endpoint requires the permission **Manage tags** to be enabled in [your scope config](/scopes). </Note>  ### Example Request Body  ```json {   \"tag\": {     \"name\": \"Excellent Fit\"   } } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
candidate_id = '8Xi6iZrwusZqJmDGXs49GBmJ' # String | The Kombo ID of the candidate you want to remove the tag from.
opts = {
  delete_ats_candidates_candidate_id_tags_request_body: Kombo::DeleteAtsCandidatesCandidateIdTagsRequestBody.new({tag: Kombo::DeleteAtsCandidatesCandidateIdTagsRequestBodyTag.new({name: 'name_example'})}) # DeleteAtsCandidatesCandidateIdTagsRequestBody | DELETE /ats/candidates/:candidate_id/tags Request body
}

begin
  # Remove tag from candidate
  result = api_instance.delete_ats_candidates_candidate_id_tags(x_integration_id, candidate_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->delete_ats_candidates_candidate_id_tags: #{e}"
end
```

#### Using the delete_ats_candidates_candidate_id_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteAtsCandidatesCandidateIdTagsPositiveResponse>, Integer, Hash)> delete_ats_candidates_candidate_id_tags_with_http_info(x_integration_id, candidate_id, opts)

```ruby
begin
  # Remove tag from candidate
  data, status_code, headers = api_instance.delete_ats_candidates_candidate_id_tags_with_http_info(x_integration_id, candidate_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteAtsCandidatesCandidateIdTagsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->delete_ats_candidates_candidate_id_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **candidate_id** | **String** | The Kombo ID of the candidate you want to remove the tag from. |  |
| **delete_ats_candidates_candidate_id_tags_request_body** | [**DeleteAtsCandidatesCandidateIdTagsRequestBody**](DeleteAtsCandidatesCandidateIdTagsRequestBody.md) | DELETE /ats/candidates/:candidate_id/tags Request body | [optional] |

### Return type

[**DeleteAtsCandidatesCandidateIdTagsPositiveResponse**](DeleteAtsCandidatesCandidateIdTagsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_ats_actions_ats_add_application_attachment

> <GetAtsActionsAtsAddApplicationAttachmentPositiveResponse> get_ats_actions_ats_add_application_attachment(x_integration_id)



### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.

begin
  
  result = api_instance.get_ats_actions_ats_add_application_attachment(x_integration_id)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_actions_ats_add_application_attachment: #{e}"
end
```

#### Using the get_ats_actions_ats_add_application_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAtsActionsAtsAddApplicationAttachmentPositiveResponse>, Integer, Hash)> get_ats_actions_ats_add_application_attachment_with_http_info(x_integration_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_ats_actions_ats_add_application_attachment_with_http_info(x_integration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAtsActionsAtsAddApplicationAttachmentPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_actions_ats_add_application_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |

### Return type

[**GetAtsActionsAtsAddApplicationAttachmentPositiveResponse**](GetAtsActionsAtsAddApplicationAttachmentPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ats_actions_ats_add_candidate_attachment

> <GetAtsActionsAtsAddCandidateAttachmentPositiveResponse> get_ats_actions_ats_add_candidate_attachment(x_integration_id)



### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.

begin
  
  result = api_instance.get_ats_actions_ats_add_candidate_attachment(x_integration_id)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_actions_ats_add_candidate_attachment: #{e}"
end
```

#### Using the get_ats_actions_ats_add_candidate_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAtsActionsAtsAddCandidateAttachmentPositiveResponse>, Integer, Hash)> get_ats_actions_ats_add_candidate_attachment_with_http_info(x_integration_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_ats_actions_ats_add_candidate_attachment_with_http_info(x_integration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAtsActionsAtsAddCandidateAttachmentPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_actions_ats_add_candidate_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |

### Return type

[**GetAtsActionsAtsAddCandidateAttachmentPositiveResponse**](GetAtsActionsAtsAddCandidateAttachmentPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ats_actions_ats_create_application

> <GetAtsActionsAtsCreateApplicationPositiveResponse> get_ats_actions_ats_create_application(x_integration_id)



### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.

begin
  
  result = api_instance.get_ats_actions_ats_create_application(x_integration_id)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_actions_ats_create_application: #{e}"
end
```

#### Using the get_ats_actions_ats_create_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAtsActionsAtsCreateApplicationPositiveResponse>, Integer, Hash)> get_ats_actions_ats_create_application_with_http_info(x_integration_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_ats_actions_ats_create_application_with_http_info(x_integration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAtsActionsAtsCreateApplicationPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_actions_ats_create_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |

### Return type

[**GetAtsActionsAtsCreateApplicationPositiveResponse**](GetAtsActionsAtsCreateApplicationPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ats_actions_ats_create_candidate

> <GetAtsActionsAtsCreateCandidatePositiveResponse> get_ats_actions_ats_create_candidate(x_integration_id)



### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.

begin
  
  result = api_instance.get_ats_actions_ats_create_candidate(x_integration_id)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_actions_ats_create_candidate: #{e}"
end
```

#### Using the get_ats_actions_ats_create_candidate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAtsActionsAtsCreateCandidatePositiveResponse>, Integer, Hash)> get_ats_actions_ats_create_candidate_with_http_info(x_integration_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_ats_actions_ats_create_candidate_with_http_info(x_integration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAtsActionsAtsCreateCandidatePositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_actions_ats_create_candidate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |

### Return type

[**GetAtsActionsAtsCreateCandidatePositiveResponse**](GetAtsActionsAtsCreateCandidatePositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ats_application_stages

> <GetAtsApplicationStagesPositiveResponse> get_ats_application_stages(x_integration_id, opts)

Get application stages

Get all application stages available in the ATS.  <Warning>   **This endpoint is deprecated!**    Get all application stages available in the ATS. This is deprecated because most ATS systems have separate sets of stages for each job. We'd recommend using the `stages` property from the [GET Jobs endpoint](/ats/v1/get-jobs) instead.  **Important**: Using global stages can cause \"Stage not found\" errors when moving applications, especially with systems like Workable that have job-specific stages.  [Moving Applications Guide](/ats/implementation-guide/moving-and-rejecting-candidates). </Warning>  Top level filters use AND, while individual filters use OR if they accept multiple arguments. That means filters will be resolved like this: `(id IN ids) AND (remote_id IN remote_ids)`

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  updated_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter the entries based on the modification date in format `YYYY-MM-DDTHH:mm:ss.sssZ`. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record's own `changed_at` field remains unchanged.  If you want to track entry deletion, also set the `include_deleted=true` query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior).
  include_deleted: Kombo::GetAtsApplicationStagesParameterIncludeDeleted::TRUE, # GetAtsApplicationStagesParameterIncludeDeleted | By default, deleted entries are not returned. Use the `include_deleted` query param to include deleted entries too.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example' # String | Filter by a comma-separated list of remote IDs.
}

begin
  # Get application stages
  result = api_instance.get_ats_application_stages(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_application_stages: #{e}"
end
```

#### Using the get_ats_application_stages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAtsApplicationStagesPositiveResponse>, Integer, Hash)> get_ats_application_stages_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get application stages
  data, status_code, headers = api_instance.get_ats_application_stages_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAtsApplicationStagesPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_application_stages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **updated_after** | **Time** | Filter the entries based on the modification date in format &#x60;YYYY-MM-DDTHH:mm:ss.sssZ&#x60;. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record&#39;s own &#x60;changed_at&#x60; field remains unchanged.  If you want to track entry deletion, also set the &#x60;include_deleted&#x3D;true&#x60; query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior). | [optional] |
| **include_deleted** | [**GetAtsApplicationStagesParameterIncludeDeleted**](.md) | By default, deleted entries are not returned. Use the &#x60;include_deleted&#x60; query param to include deleted entries too. | [optional][default to &#39;false&#39;] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |

### Return type

[**GetAtsApplicationStagesPositiveResponse**](GetAtsApplicationStagesPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ats_applications

> <GetAtsApplicationsPositiveResponse> get_ats_applications(x_integration_id, opts)

Get applications

Retrieve all applications.  Visit our in-depth guides to learn more about:  - 💡 [Being aware of which applications are tracked](/ats/features/implementation-guide/tracking-created-applications#be-aware-of-which-applications-are-tracked) - 🚦 [Hiring signals](/ats/features/implementation-guide/tracking-created-applications#hiring-signals) - 📈 [Application stage changes](/ats/features/implementation-guide/tracking-created-applications#application-stage-changes) - ❓ [ATS-specific limitations](/ats/features/implementation-guide/tracking-created-applications#ats-specific-limitations)  Top level filters use AND, while individual filters use OR if they accept multiple arguments. That means filters will be resolved like this: `(id IN ids) AND (remote_id IN remote_ids)`

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  updated_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter the entries based on the modification date in format `YYYY-MM-DDTHH:mm:ss.sssZ`. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record's own `changed_at` field remains unchanged.  If you want to track entry deletion, also set the `include_deleted=true` query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior).
  include_deleted: Kombo::GetAtsApplicationsParameterIncludeDeleted::TRUE, # GetAtsApplicationsParameterIncludeDeleted | By default, deleted entries are not returned. Use the `include_deleted` query param to include deleted entries too.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example', # String | Filter by a comma-separated list of remote IDs.
  outcome: Kombo::GetAtsApplicationsParameterOutcome::PENDING, # GetAtsApplicationsParameterOutcome | **(⚠️ Deprecated - Use the `outcomes` filter instead.)** Filter applications by outcome. This allows you to get applications that are for example `PENDING`, `HIRED`, or `DECLINED`.
  outcomes: 'outcomes_example', # String | Filter by a comma-separated list of `PENDING`, `HIRED`, `DECLINED`  * `PENDING`: The application is still being processed.  * `HIRED`: The candidate was hired.  * `DECLINED`: The candidate was declined.     Leave this blank to get results matching all values.
  job_ids: 'job_ids_example', # String | Filter by a comma-separated list of job IDs. We will only return applications that are related to _any_ of the jobs.
  job_remote_ids: 'job_remote_ids_example', # String | Filter by a comma-separated list of job remote IDs. We will only return applications that are related to _any_ of the jobs.
  current_stage_ids: 'current_stage_ids_example', # String | Filter by a comma-separated list of application stage IDs. We will only return applications that are currently in _any_ of the stages.
  remote_created_after: Time.parse('2013-10-20T19:20:30+01:00') # Time | Filter applications by the day they were created in the remote system. This allows you to get applications that were created on or after a certain day.
}

begin
  # Get applications
  result = api_instance.get_ats_applications(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_applications: #{e}"
end
```

#### Using the get_ats_applications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAtsApplicationsPositiveResponse>, Integer, Hash)> get_ats_applications_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get applications
  data, status_code, headers = api_instance.get_ats_applications_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAtsApplicationsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_applications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **updated_after** | **Time** | Filter the entries based on the modification date in format &#x60;YYYY-MM-DDTHH:mm:ss.sssZ&#x60;. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record&#39;s own &#x60;changed_at&#x60; field remains unchanged.  If you want to track entry deletion, also set the &#x60;include_deleted&#x3D;true&#x60; query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior). | [optional] |
| **include_deleted** | [**GetAtsApplicationsParameterIncludeDeleted**](.md) | By default, deleted entries are not returned. Use the &#x60;include_deleted&#x60; query param to include deleted entries too. | [optional][default to &#39;false&#39;] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |
| **outcome** | [**GetAtsApplicationsParameterOutcome**](.md) | **(⚠️ Deprecated - Use the &#x60;outcomes&#x60; filter instead.)** Filter applications by outcome. This allows you to get applications that are for example &#x60;PENDING&#x60;, &#x60;HIRED&#x60;, or &#x60;DECLINED&#x60;. | [optional] |
| **outcomes** | **String** | Filter by a comma-separated list of &#x60;PENDING&#x60;, &#x60;HIRED&#x60;, &#x60;DECLINED&#x60;  * &#x60;PENDING&#x60;: The application is still being processed.  * &#x60;HIRED&#x60;: The candidate was hired.  * &#x60;DECLINED&#x60;: The candidate was declined.     Leave this blank to get results matching all values. | [optional] |
| **job_ids** | **String** | Filter by a comma-separated list of job IDs. We will only return applications that are related to _any_ of the jobs. | [optional] |
| **job_remote_ids** | **String** | Filter by a comma-separated list of job remote IDs. We will only return applications that are related to _any_ of the jobs. | [optional] |
| **current_stage_ids** | **String** | Filter by a comma-separated list of application stage IDs. We will only return applications that are currently in _any_ of the stages. | [optional] |
| **remote_created_after** | **Time** | Filter applications by the day they were created in the remote system. This allows you to get applications that were created on or after a certain day. | [optional] |

### Return type

[**GetAtsApplicationsPositiveResponse**](GetAtsApplicationsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ats_applications_application_id_attachments

> <GetAtsApplicationsApplicationIdAttachmentsPositiveResponse> get_ats_applications_application_id_attachments(x_integration_id, application_id)

Get application attachments

Get attachments from a candidate or application.  Get attachments from an application. If the ATS stores the attachments on the candidate, it will get the attachments from the corresponding candidate instead.  <Note>   This endpoint requires the permission **Read document attachments** to be enabled in [your scope config](/scopes). </Note>

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
application_id = '8Xi6iZrwusZqJmDGXs49GBmJ' # String | The Kombo ID of the application you want to obtain attachments for.

begin
  # Get application attachments
  result = api_instance.get_ats_applications_application_id_attachments(x_integration_id, application_id)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_applications_application_id_attachments: #{e}"
end
```

#### Using the get_ats_applications_application_id_attachments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAtsApplicationsApplicationIdAttachmentsPositiveResponse>, Integer, Hash)> get_ats_applications_application_id_attachments_with_http_info(x_integration_id, application_id)

```ruby
begin
  # Get application attachments
  data, status_code, headers = api_instance.get_ats_applications_application_id_attachments_with_http_info(x_integration_id, application_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAtsApplicationsApplicationIdAttachmentsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_applications_application_id_attachments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **application_id** | **String** | The Kombo ID of the application you want to obtain attachments for. |  |

### Return type

[**GetAtsApplicationsApplicationIdAttachmentsPositiveResponse**](GetAtsApplicationsApplicationIdAttachmentsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ats_candidates

> <GetAtsCandidatesPositiveResponse> get_ats_candidates(x_integration_id, opts)

Get candidates

Retrieve all candidates.  Top level filters use AND, while individual filters use OR if they accept multiple arguments. That means filters will be resolved like this: `(id IN ids) AND (remote_id IN remote_ids)`

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  updated_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter the entries based on the modification date in format `YYYY-MM-DDTHH:mm:ss.sssZ`. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record's own `changed_at` field remains unchanged.  If you want to track entry deletion, also set the `include_deleted=true` query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior).
  include_deleted: Kombo::GetAtsCandidatesParameterIncludeDeleted::TRUE, # GetAtsCandidatesParameterIncludeDeleted | By default, deleted entries are not returned. Use the `include_deleted` query param to include deleted entries too.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example', # String | Filter by a comma-separated list of remote IDs.
  email: 'email_example', # String | Filter the candidates based on an email address. When set, returns only the candidates where the given `email` is in `email_addresses`. This filter is case-insensitive.
  job_ids: 'job_ids_example', # String | Filter by a comma-separated list of job IDs. We will only return candidates that have applied to _any_ of the jobs.
  first_name: 'first_name_example', # String | Filter candidates by first name. This filter is case-insensitive and matches the exact first name. Fuzzy matching might be enabled in the future, so consider this for your implementation.
  last_name: 'last_name_example' # String | Filter candidates by last name. This filter is case-insensitive and matches the exact last name. Fuzzy matching might be enabled in the future, so consider this for your implementation.
}

begin
  # Get candidates
  result = api_instance.get_ats_candidates(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_candidates: #{e}"
end
```

#### Using the get_ats_candidates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAtsCandidatesPositiveResponse>, Integer, Hash)> get_ats_candidates_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get candidates
  data, status_code, headers = api_instance.get_ats_candidates_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAtsCandidatesPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_candidates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **updated_after** | **Time** | Filter the entries based on the modification date in format &#x60;YYYY-MM-DDTHH:mm:ss.sssZ&#x60;. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record&#39;s own &#x60;changed_at&#x60; field remains unchanged.  If you want to track entry deletion, also set the &#x60;include_deleted&#x3D;true&#x60; query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior). | [optional] |
| **include_deleted** | [**GetAtsCandidatesParameterIncludeDeleted**](.md) | By default, deleted entries are not returned. Use the &#x60;include_deleted&#x60; query param to include deleted entries too. | [optional][default to &#39;false&#39;] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |
| **email** | **String** | Filter the candidates based on an email address. When set, returns only the candidates where the given &#x60;email&#x60; is in &#x60;email_addresses&#x60;. This filter is case-insensitive. | [optional] |
| **job_ids** | **String** | Filter by a comma-separated list of job IDs. We will only return candidates that have applied to _any_ of the jobs. | [optional] |
| **first_name** | **String** | Filter candidates by first name. This filter is case-insensitive and matches the exact first name. Fuzzy matching might be enabled in the future, so consider this for your implementation. | [optional] |
| **last_name** | **String** | Filter candidates by last name. This filter is case-insensitive and matches the exact last name. Fuzzy matching might be enabled in the future, so consider this for your implementation. | [optional] |

### Return type

[**GetAtsCandidatesPositiveResponse**](GetAtsCandidatesPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ats_candidates_candidate_id_attachments

> <GetAtsCandidatesCandidateIdAttachmentsPositiveResponse> get_ats_candidates_candidate_id_attachments(x_integration_id, candidate_id)

Get candidate attachments

Get attachments from a candidate, including all attachments of all of their applications.  <Note>   This endpoint requires the permission **Read document attachments** to be enabled in [your scope config](/scopes). </Note>

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
candidate_id = '8Xi6iZrwusZqJmDGXs49GBmJ' # String | The Kombo ID of the candidate you want to obtain attachments for.

begin
  # Get candidate attachments
  result = api_instance.get_ats_candidates_candidate_id_attachments(x_integration_id, candidate_id)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_candidates_candidate_id_attachments: #{e}"
end
```

#### Using the get_ats_candidates_candidate_id_attachments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAtsCandidatesCandidateIdAttachmentsPositiveResponse>, Integer, Hash)> get_ats_candidates_candidate_id_attachments_with_http_info(x_integration_id, candidate_id)

```ruby
begin
  # Get candidate attachments
  data, status_code, headers = api_instance.get_ats_candidates_candidate_id_attachments_with_http_info(x_integration_id, candidate_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAtsCandidatesCandidateIdAttachmentsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_candidates_candidate_id_attachments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **candidate_id** | **String** | The Kombo ID of the candidate you want to obtain attachments for. |  |

### Return type

[**GetAtsCandidatesCandidateIdAttachmentsPositiveResponse**](GetAtsCandidatesCandidateIdAttachmentsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ats_interviews

> <GetAtsInterviewsPositiveResponse> get_ats_interviews(x_integration_id, opts)

Get interviews

Retrieve all interviews.  Top level filters use AND, while individual filters use OR if they accept multiple arguments. That means filters will be resolved like this: `(id IN ids) AND (remote_id IN remote_ids)`

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  updated_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter the entries based on the modification date in format `YYYY-MM-DDTHH:mm:ss.sssZ`. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record's own `changed_at` field remains unchanged.  If you want to track entry deletion, also set the `include_deleted=true` query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior).
  include_deleted: Kombo::GetAtsInterviewsParameterIncludeDeleted::TRUE, # GetAtsInterviewsParameterIncludeDeleted | By default, deleted entries are not returned. Use the `include_deleted` query param to include deleted entries too.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example', # String | Filter by a comma-separated list of remote IDs.
  job_ids: 'job_ids_example' # String | Filter by a comma-separated list of job IDs. We will only return interviews for applications associated with any of these jobs.
}

begin
  # Get interviews
  result = api_instance.get_ats_interviews(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_interviews: #{e}"
end
```

#### Using the get_ats_interviews_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAtsInterviewsPositiveResponse>, Integer, Hash)> get_ats_interviews_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get interviews
  data, status_code, headers = api_instance.get_ats_interviews_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAtsInterviewsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_interviews_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **updated_after** | **Time** | Filter the entries based on the modification date in format &#x60;YYYY-MM-DDTHH:mm:ss.sssZ&#x60;. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record&#39;s own &#x60;changed_at&#x60; field remains unchanged.  If you want to track entry deletion, also set the &#x60;include_deleted&#x3D;true&#x60; query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior). | [optional] |
| **include_deleted** | [**GetAtsInterviewsParameterIncludeDeleted**](.md) | By default, deleted entries are not returned. Use the &#x60;include_deleted&#x60; query param to include deleted entries too. | [optional][default to &#39;false&#39;] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |
| **job_ids** | **String** | Filter by a comma-separated list of job IDs. We will only return interviews for applications associated with any of these jobs. | [optional] |

### Return type

[**GetAtsInterviewsPositiveResponse**](GetAtsInterviewsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ats_jobs

> <GetAtsJobsPositiveResponse> get_ats_jobs(x_integration_id, opts)

Get jobs

Retrieve all jobs.  Visit our in-depth guides to learn more about:  - 🔄 [Getting updates of the data](/ats/features/implementation-guide/reading-jobs#getting-updates-of-the-data) - ❗ [Handling failing syncs](/ats/features/implementation-guide/reading-jobs#handling-failing-syncs) - 🔍 [Letting your customer choose which jobs to expose](/ats/features/implementation-guide/reading-jobs#let-your-customer-choose-which-jobs-to-expose-to-you) - 🔗 [Matching jobs in your database to ATS jobs](/ats/features/implementation-guide/reading-jobs#match-jobs-in-your-database-to-ats-jobs) - 🗑️ [Reacting to deleted/closed jobs](/ats/features/implementation-guide/reading-jobs#reacting-to-deleted-closed-jobs)  Top level filters use AND, while individual filters use OR if they accept multiple arguments. That means filters will be resolved like this: `(id IN ids) AND (remote_id IN remote_ids)`

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  updated_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter the entries based on the modification date in format `YYYY-MM-DDTHH:mm:ss.sssZ`. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record's own `changed_at` field remains unchanged.  If you want to track entry deletion, also set the `include_deleted=true` query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior).
  include_deleted: Kombo::GetAtsJobsParameterIncludeDeleted::TRUE, # GetAtsJobsParameterIncludeDeleted | By default, deleted entries are not returned. Use the `include_deleted` query param to include deleted entries too.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example', # String | Filter by a comma-separated list of remote IDs.
  job_codes: 'job_codes_example', # String | Filter by a comma-separated list of job codes.
  post_url: 'post_url_example', # String | Filter by the `post_url` field. Can be used to find a job based on its public posting URL.
  status: Kombo::GetAtsJobsParameterStatus::OPEN, # GetAtsJobsParameterStatus | **(⚠️ Deprecated - Use the `statuses` filter instead.)** Filter by the `status` field. Can be used to find a job based on its status.
  statuses: 'statuses_example', # String | Filter by a comma-separated list of `OPEN`, `CLOSED`, `DRAFT`, `ARCHIVED`    Leave this blank to get results matching all values.
  employment_types: 'employment_types_example', # String | Filter by a comma-separated list of `FULL_TIME`, `PART_TIME`, `CONTRACT`, `SEASONAL`, `INTERNSHIP`    Leave this blank to get results matching all values.
  visibilities: 'visibilities_example', # String | Filter by a comma-separated list of `PUBLIC`, `INTERNAL`, `UNLISTED`, `CONFIDENTIAL`    Leave this blank to get results matching all values.
  remote_created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter jobs by the day they were created in the remote system. This allows you to get jobs that were created on or after a certain day.
  name_contains: 'name_contains_example' # String | Filter by the `name` field. Can be used to find a job by keywords present in the job name.
}

begin
  # Get jobs
  result = api_instance.get_ats_jobs(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_jobs: #{e}"
end
```

#### Using the get_ats_jobs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAtsJobsPositiveResponse>, Integer, Hash)> get_ats_jobs_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get jobs
  data, status_code, headers = api_instance.get_ats_jobs_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAtsJobsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_jobs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **updated_after** | **Time** | Filter the entries based on the modification date in format &#x60;YYYY-MM-DDTHH:mm:ss.sssZ&#x60;. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record&#39;s own &#x60;changed_at&#x60; field remains unchanged.  If you want to track entry deletion, also set the &#x60;include_deleted&#x3D;true&#x60; query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior). | [optional] |
| **include_deleted** | [**GetAtsJobsParameterIncludeDeleted**](.md) | By default, deleted entries are not returned. Use the &#x60;include_deleted&#x60; query param to include deleted entries too. | [optional][default to &#39;false&#39;] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |
| **job_codes** | **String** | Filter by a comma-separated list of job codes. | [optional] |
| **post_url** | **String** | Filter by the &#x60;post_url&#x60; field. Can be used to find a job based on its public posting URL. | [optional] |
| **status** | [**GetAtsJobsParameterStatus**](.md) | **(⚠️ Deprecated - Use the &#x60;statuses&#x60; filter instead.)** Filter by the &#x60;status&#x60; field. Can be used to find a job based on its status. | [optional] |
| **statuses** | **String** | Filter by a comma-separated list of &#x60;OPEN&#x60;, &#x60;CLOSED&#x60;, &#x60;DRAFT&#x60;, &#x60;ARCHIVED&#x60;    Leave this blank to get results matching all values. | [optional] |
| **employment_types** | **String** | Filter by a comma-separated list of &#x60;FULL_TIME&#x60;, &#x60;PART_TIME&#x60;, &#x60;CONTRACT&#x60;, &#x60;SEASONAL&#x60;, &#x60;INTERNSHIP&#x60;    Leave this blank to get results matching all values. | [optional] |
| **visibilities** | **String** | Filter by a comma-separated list of &#x60;PUBLIC&#x60;, &#x60;INTERNAL&#x60;, &#x60;UNLISTED&#x60;, &#x60;CONFIDENTIAL&#x60;    Leave this blank to get results matching all values. | [optional] |
| **remote_created_after** | **Time** | Filter jobs by the day they were created in the remote system. This allows you to get jobs that were created on or after a certain day. | [optional] |
| **name_contains** | **String** | Filter by the &#x60;name&#x60; field. Can be used to find a job by keywords present in the job name. | [optional] |

### Return type

[**GetAtsJobsPositiveResponse**](GetAtsJobsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ats_offers

> <GetAtsOffersPositiveResponse> get_ats_offers(x_integration_id, opts)

Get offers

Retrieve all offers.  Top level filters use AND, while individual filters use OR if they accept multiple arguments. That means filters will be resolved like this: `(id IN ids) AND (remote_id IN remote_ids)`

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  updated_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter the entries based on the modification date in format `YYYY-MM-DDTHH:mm:ss.sssZ`. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record's own `changed_at` field remains unchanged.  If you want to track entry deletion, also set the `include_deleted=true` query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior).
  include_deleted: Kombo::GetAtsOffersParameterIncludeDeleted::TRUE, # GetAtsOffersParameterIncludeDeleted | By default, deleted entries are not returned. Use the `include_deleted` query param to include deleted entries too.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example' # String | Filter by a comma-separated list of remote IDs.
}

begin
  # Get offers
  result = api_instance.get_ats_offers(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_offers: #{e}"
end
```

#### Using the get_ats_offers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAtsOffersPositiveResponse>, Integer, Hash)> get_ats_offers_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get offers
  data, status_code, headers = api_instance.get_ats_offers_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAtsOffersPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_offers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **updated_after** | **Time** | Filter the entries based on the modification date in format &#x60;YYYY-MM-DDTHH:mm:ss.sssZ&#x60;. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record&#39;s own &#x60;changed_at&#x60; field remains unchanged.  If you want to track entry deletion, also set the &#x60;include_deleted&#x3D;true&#x60; query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior). | [optional] |
| **include_deleted** | [**GetAtsOffersParameterIncludeDeleted**](.md) | By default, deleted entries are not returned. Use the &#x60;include_deleted&#x60; query param to include deleted entries too. | [optional][default to &#39;false&#39;] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |

### Return type

[**GetAtsOffersPositiveResponse**](GetAtsOffersPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ats_rejection_reasons

> <GetAtsRejectionReasonsPositiveResponse> get_ats_rejection_reasons(x_integration_id, opts)

Get rejection reasons

Retrieve all rejection reasons.  Get all rejection reasons available in the system. The Kombo ID is required in the associated [reject application action](/ats/v1/post-applications-application-id-reject).  Top level filters use AND, while individual filters use OR if they accept multiple arguments. That means filters will be resolved like this: `(id IN ids) AND (remote_id IN remote_ids)`

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  updated_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter the entries based on the modification date in format `YYYY-MM-DDTHH:mm:ss.sssZ`. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record's own `changed_at` field remains unchanged.  If you want to track entry deletion, also set the `include_deleted=true` query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior).
  include_deleted: Kombo::GetAtsRejectionReasonsParameterIncludeDeleted::TRUE, # GetAtsRejectionReasonsParameterIncludeDeleted | By default, deleted entries are not returned. Use the `include_deleted` query param to include deleted entries too.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example' # String | Filter by a comma-separated list of remote IDs.
}

begin
  # Get rejection reasons
  result = api_instance.get_ats_rejection_reasons(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_rejection_reasons: #{e}"
end
```

#### Using the get_ats_rejection_reasons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAtsRejectionReasonsPositiveResponse>, Integer, Hash)> get_ats_rejection_reasons_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get rejection reasons
  data, status_code, headers = api_instance.get_ats_rejection_reasons_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAtsRejectionReasonsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_rejection_reasons_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **updated_after** | **Time** | Filter the entries based on the modification date in format &#x60;YYYY-MM-DDTHH:mm:ss.sssZ&#x60;. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record&#39;s own &#x60;changed_at&#x60; field remains unchanged.  If you want to track entry deletion, also set the &#x60;include_deleted&#x3D;true&#x60; query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior). | [optional] |
| **include_deleted** | [**GetAtsRejectionReasonsParameterIncludeDeleted**](.md) | By default, deleted entries are not returned. Use the &#x60;include_deleted&#x60; query param to include deleted entries too. | [optional][default to &#39;false&#39;] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |

### Return type

[**GetAtsRejectionReasonsPositiveResponse**](GetAtsRejectionReasonsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ats_tags

> <GetAtsTagsPositiveResponse> get_ats_tags(x_integration_id, opts)

Get tags

Retrieve all tags.  Top level filters use AND, while individual filters use OR if they accept multiple arguments. That means filters will be resolved like this: `(id IN ids) AND (remote_id IN remote_ids)`

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  updated_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter the entries based on the modification date in format `YYYY-MM-DDTHH:mm:ss.sssZ`. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record's own `changed_at` field remains unchanged.  If you want to track entry deletion, also set the `include_deleted=true` query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior).
  include_deleted: Kombo::GetAtsTagsParameterIncludeDeleted::TRUE, # GetAtsTagsParameterIncludeDeleted | By default, deleted entries are not returned. Use the `include_deleted` query param to include deleted entries too.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example' # String | Filter by a comma-separated list of remote IDs.
}

begin
  # Get tags
  result = api_instance.get_ats_tags(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_tags: #{e}"
end
```

#### Using the get_ats_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAtsTagsPositiveResponse>, Integer, Hash)> get_ats_tags_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get tags
  data, status_code, headers = api_instance.get_ats_tags_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAtsTagsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **updated_after** | **Time** | Filter the entries based on the modification date in format &#x60;YYYY-MM-DDTHH:mm:ss.sssZ&#x60;. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record&#39;s own &#x60;changed_at&#x60; field remains unchanged.  If you want to track entry deletion, also set the &#x60;include_deleted&#x3D;true&#x60; query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior). | [optional] |
| **include_deleted** | [**GetAtsTagsParameterIncludeDeleted**](.md) | By default, deleted entries are not returned. Use the &#x60;include_deleted&#x60; query param to include deleted entries too. | [optional][default to &#39;false&#39;] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |

### Return type

[**GetAtsTagsPositiveResponse**](GetAtsTagsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ats_users

> <GetAtsUsersPositiveResponse> get_ats_users(x_integration_id, opts)

Get users

Retrieve all users.  Top level filters use AND, while individual filters use OR if they accept multiple arguments. That means filters will be resolved like this: `(id IN ids) AND (remote_id IN remote_ids)`

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  updated_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter the entries based on the modification date in format `YYYY-MM-DDTHH:mm:ss.sssZ`. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record's own `changed_at` field remains unchanged.  If you want to track entry deletion, also set the `include_deleted=true` query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior).
  include_deleted: Kombo::GetAtsUsersParameterIncludeDeleted::TRUE, # GetAtsUsersParameterIncludeDeleted | By default, deleted entries are not returned. Use the `include_deleted` query param to include deleted entries too.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example', # String | Filter by a comma-separated list of remote IDs.
  emails: 'emails_example' # String | Filter by a comma-separated list of emails. We will only return users who have _any_ of the emails. The format of the emails is case-insensitive.
}

begin
  # Get users
  result = api_instance.get_ats_users(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_users: #{e}"
end
```

#### Using the get_ats_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAtsUsersPositiveResponse>, Integer, Hash)> get_ats_users_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get users
  data, status_code, headers = api_instance.get_ats_users_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAtsUsersPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->get_ats_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **updated_after** | **Time** | Filter the entries based on the modification date in format &#x60;YYYY-MM-DDTHH:mm:ss.sssZ&#x60;. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record&#39;s own &#x60;changed_at&#x60; field remains unchanged.  If you want to track entry deletion, also set the &#x60;include_deleted&#x3D;true&#x60; query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior). | [optional] |
| **include_deleted** | [**GetAtsUsersParameterIncludeDeleted**](.md) | By default, deleted entries are not returned. Use the &#x60;include_deleted&#x60; query param to include deleted entries too. | [optional][default to &#39;false&#39;] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |
| **emails** | **String** | Filter by a comma-separated list of emails. We will only return users who have _any_ of the emails. The format of the emails is case-insensitive. | [optional] |

### Return type

[**GetAtsUsersPositiveResponse**](GetAtsUsersPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_ats_applications_application_id_interviews

> <PatchAtsApplicationsApplicationIdInterviewsPositiveResponse> patch_ats_applications_application_id_interviews(x_integration_id, application_id, opts)

Update interview

Update interview    <Warning>**Closed Beta Feature:** This endpoint is currently in closed beta. We're testing it with selected customers before its public release. If you're interested in learning more or getting early access, please reach out.</Warning>  

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
application_id = 'application_id_example' # String | The ID of the application
opts = {
  patch_ats_applications_application_id_interviews_request_body: Kombo::PatchAtsApplicationsApplicationIdInterviewsRequestBody.new({interview_id: 'interview_id_example', title: 'title_example', start_time: 'start_time_example', end_time: 'end_time_example', interviewer_user_ids: ['interviewer_user_ids_example'], organizer_user_id: 'organizer_user_id_example', location: Kombo::PatchAtsApplicationsApplicationIdInterviewsRequestBodyLocation.new({type: 'PHYSICAL'})}) # PatchAtsApplicationsApplicationIdInterviewsRequestBody | PATCH /ats/applications/:application_id/interviews Request body
}

begin
  # Update interview
  result = api_instance.patch_ats_applications_application_id_interviews(x_integration_id, application_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->patch_ats_applications_application_id_interviews: #{e}"
end
```

#### Using the patch_ats_applications_application_id_interviews_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PatchAtsApplicationsApplicationIdInterviewsPositiveResponse>, Integer, Hash)> patch_ats_applications_application_id_interviews_with_http_info(x_integration_id, application_id, opts)

```ruby
begin
  # Update interview
  data, status_code, headers = api_instance.patch_ats_applications_application_id_interviews_with_http_info(x_integration_id, application_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PatchAtsApplicationsApplicationIdInterviewsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->patch_ats_applications_application_id_interviews_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **application_id** | **String** | The ID of the application |  |
| **patch_ats_applications_application_id_interviews_request_body** | [**PatchAtsApplicationsApplicationIdInterviewsRequestBody**](PatchAtsApplicationsApplicationIdInterviewsRequestBody.md) | PATCH /ats/applications/:application_id/interviews Request body | [optional] |

### Return type

[**PatchAtsApplicationsApplicationIdInterviewsPositiveResponse**](PatchAtsApplicationsApplicationIdInterviewsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_ats_applications_application_id_attachments

> <PostAtsApplicationsApplicationIdAttachmentsPositiveResponse> post_ats_applications_application_id_attachments(x_integration_id, application_id, opts)

Add attachment to application

Uploads an attachment file for the specified applicant.  <Warning>   If adding an attachment to an application is not supported by the integration, the attachment will be [added to the candidate](/ats/v1/post-candidates-candidate-id-attachments) instead.  </Warning>  <Note>   This endpoint requires the permission **Add attachments** to be enabled in [your scope config](/scopes). </Note>  ### Example Request Body  ```json {   \"application_id\": \"GRKdd9dibYKKCrmGRSMJf3wu\",   \"attachment\": {     \"name\": \"Frank Doe CV.txt\",     \"data\": \"SGkgdGhlcmUsIEtvbWJvIGlzIGN1cnJlbnRseSBoaXJpbmcgZW5naW5lZXJzIHRoYXQgbG92ZSB0byB3b3JrIG9uIGRldmVsb3BlciBwcm9kdWN0cy4=\",     \"type\": \"CV\",     \"content_type\": \"text/plain\"   },   \"remote_fields\": {} } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
application_id = 'GRKdd9dibYKKCrmGRSMJf3wu' # String | POST /ats/applications/:application_id/attachments Parameter
opts = {
  post_ats_applications_application_id_attachments_request_body: Kombo::PostAtsApplicationsApplicationIdAttachmentsRequestBody.new({attachment: Kombo::PostAtsApplicationsApplicationIdAttachmentsRequestBodyAttachment.new({name: 'name_example', type: 'CV'})}) # PostAtsApplicationsApplicationIdAttachmentsRequestBody | POST /ats/applications/:application_id/attachments Request body
}

begin
  # Add attachment to application
  result = api_instance.post_ats_applications_application_id_attachments(x_integration_id, application_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->post_ats_applications_application_id_attachments: #{e}"
end
```

#### Using the post_ats_applications_application_id_attachments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAtsApplicationsApplicationIdAttachmentsPositiveResponse>, Integer, Hash)> post_ats_applications_application_id_attachments_with_http_info(x_integration_id, application_id, opts)

```ruby
begin
  # Add attachment to application
  data, status_code, headers = api_instance.post_ats_applications_application_id_attachments_with_http_info(x_integration_id, application_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAtsApplicationsApplicationIdAttachmentsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->post_ats_applications_application_id_attachments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **application_id** | **String** | POST /ats/applications/:application_id/attachments Parameter |  |
| **post_ats_applications_application_id_attachments_request_body** | [**PostAtsApplicationsApplicationIdAttachmentsRequestBody**](PostAtsApplicationsApplicationIdAttachmentsRequestBody.md) | POST /ats/applications/:application_id/attachments Request body | [optional] |

### Return type

[**PostAtsApplicationsApplicationIdAttachmentsPositiveResponse**](PostAtsApplicationsApplicationIdAttachmentsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_ats_applications_application_id_interviews

> <PostAtsApplicationsApplicationIdInterviewsPositiveResponse> post_ats_applications_application_id_interviews(x_integration_id, application_id, opts)

Create interview

Create interview    <Warning>**Closed Beta Feature:** This endpoint is currently in closed beta. We're testing it with selected customers before its public release. If you're interested in learning more or getting early access, please reach out.</Warning>  

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
application_id = 'application_id_example' # String | The ID of the application
opts = {
  post_ats_applications_application_id_interviews_request_body: Kombo::PostAtsApplicationsApplicationIdInterviewsRequestBody.new({title: 'title_example', start_time: 'start_time_example', end_time: 'end_time_example', interviewer_user_ids: ['interviewer_user_ids_example'], organizer_user_id: 'organizer_user_id_example', location: Kombo::PostAtsApplicationsApplicationIdInterviewsRequestBodyLocation.new({type: 'PHYSICAL'})}) # PostAtsApplicationsApplicationIdInterviewsRequestBody | POST /ats/applications/:application_id/interviews Request body
}

begin
  # Create interview
  result = api_instance.post_ats_applications_application_id_interviews(x_integration_id, application_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->post_ats_applications_application_id_interviews: #{e}"
end
```

#### Using the post_ats_applications_application_id_interviews_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAtsApplicationsApplicationIdInterviewsPositiveResponse>, Integer, Hash)> post_ats_applications_application_id_interviews_with_http_info(x_integration_id, application_id, opts)

```ruby
begin
  # Create interview
  data, status_code, headers = api_instance.post_ats_applications_application_id_interviews_with_http_info(x_integration_id, application_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAtsApplicationsApplicationIdInterviewsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->post_ats_applications_application_id_interviews_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **application_id** | **String** | The ID of the application |  |
| **post_ats_applications_application_id_interviews_request_body** | [**PostAtsApplicationsApplicationIdInterviewsRequestBody**](PostAtsApplicationsApplicationIdInterviewsRequestBody.md) | POST /ats/applications/:application_id/interviews Request body | [optional] |

### Return type

[**PostAtsApplicationsApplicationIdInterviewsPositiveResponse**](PostAtsApplicationsApplicationIdInterviewsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_ats_applications_application_id_notes

> <PostAtsApplicationsApplicationIdNotesPositiveResponse> post_ats_applications_application_id_notes(x_integration_id, application_id, opts)

Add note to application

Add a note to an application.  Add extra information to an application. This can be any extra text information you want to add to an application.  <Note>   This endpoint requires the permission **Add notes** to be enabled in [your scope config](/scopes). </Note>  ### Example Request Body  ```json {   \"content\": \"A new message from the candidate is available in YourChat!\",   \"content_type\": \"PLAIN_TEXT\",   \"remote_fields\": {} } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
application_id = '8Xi6iZrwusZqJmDGXs49GBmJ' # String | The Kombo ID of the application you want to create the note for.
opts = {
  post_ats_applications_application_id_notes_request_body: Kombo::PostAtsApplicationsApplicationIdNotesRequestBody.new({content: 'content_example', content_type: 'PLAIN_TEXT'}) # PostAtsApplicationsApplicationIdNotesRequestBody | POST /ats/applications/:application_id/notes Request body
}

begin
  # Add note to application
  result = api_instance.post_ats_applications_application_id_notes(x_integration_id, application_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->post_ats_applications_application_id_notes: #{e}"
end
```

#### Using the post_ats_applications_application_id_notes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAtsApplicationsApplicationIdNotesPositiveResponse>, Integer, Hash)> post_ats_applications_application_id_notes_with_http_info(x_integration_id, application_id, opts)

```ruby
begin
  # Add note to application
  data, status_code, headers = api_instance.post_ats_applications_application_id_notes_with_http_info(x_integration_id, application_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAtsApplicationsApplicationIdNotesPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->post_ats_applications_application_id_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **application_id** | **String** | The Kombo ID of the application you want to create the note for. |  |
| **post_ats_applications_application_id_notes_request_body** | [**PostAtsApplicationsApplicationIdNotesRequestBody**](PostAtsApplicationsApplicationIdNotesRequestBody.md) | POST /ats/applications/:application_id/notes Request body | [optional] |

### Return type

[**PostAtsApplicationsApplicationIdNotesPositiveResponse**](PostAtsApplicationsApplicationIdNotesPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_ats_applications_application_id_reject

> <PostAtsApplicationsApplicationIdRejectPositiveResponse> post_ats_applications_application_id_reject(x_integration_id, application_id, opts)

Reject application

Rejects an application with a provided reason.  Rejects an application with a provided reason. Optionally, you can provide a free text note. You can get the list of rejection reasons with our [Get rejection reasons endpoint](/ats/v1/get-rejection-reasons).  <Note>   This endpoint requires the permission **Reject applications** to be enabled in [your scope config](/scopes). </Note>  ### Example Request Body  ```json {   \"rejection_reason_id\": \"3PJ8PZhZZa1eEdd2DtPNtVup\",   \"note\": \"Candidate was a great culture fit but didn't bring the hard skills we need.\",   \"remote_fields\": {} } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
application_id = 'GRKdd9dibYKKCrmGRSMJf3wu' # String | The Kombo ID of the application you want to reject.
opts = {
  post_ats_applications_application_id_reject_request_body: Kombo::PostAtsApplicationsApplicationIdRejectRequestBody.new({rejection_reason_id: 'rejection_reason_id_example'}) # PostAtsApplicationsApplicationIdRejectRequestBody | POST /ats/applications/:application_id/reject Request body
}

begin
  # Reject application
  result = api_instance.post_ats_applications_application_id_reject(x_integration_id, application_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->post_ats_applications_application_id_reject: #{e}"
end
```

#### Using the post_ats_applications_application_id_reject_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAtsApplicationsApplicationIdRejectPositiveResponse>, Integer, Hash)> post_ats_applications_application_id_reject_with_http_info(x_integration_id, application_id, opts)

```ruby
begin
  # Reject application
  data, status_code, headers = api_instance.post_ats_applications_application_id_reject_with_http_info(x_integration_id, application_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAtsApplicationsApplicationIdRejectPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->post_ats_applications_application_id_reject_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **application_id** | **String** | The Kombo ID of the application you want to reject. |  |
| **post_ats_applications_application_id_reject_request_body** | [**PostAtsApplicationsApplicationIdRejectRequestBody**](PostAtsApplicationsApplicationIdRejectRequestBody.md) | POST /ats/applications/:application_id/reject Request body | [optional] |

### Return type

[**PostAtsApplicationsApplicationIdRejectPositiveResponse**](PostAtsApplicationsApplicationIdRejectPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_ats_applications_application_id_result_links

> <PostAtsApplicationsApplicationIdResultLinksPositiveResponse> post_ats_applications_application_id_result_links(x_integration_id, application_id, opts)

Add result link to application

Add a result link to an application.  This can, for example, be used to link a candidate back to a test result/assessment in your application. As not all ATS tools have a \"result link\" feature, we sometimes repurpose other fields to expose it.  <Note>   This endpoint requires the permission **Add result links** to be enabled in [your scope config](/scopes). </Note>  ### Example Request Body  ```json {   \"application_id\": \"8Xi6iZrwusZqJmDGXs49GBmJ\",   \"label\": \"Assessment Result\",   \"url\": \"https://example.com/test-results/5BtP1WC1UboS7CF3yxjKcvjG\",   \"details\": {     \"custom_field_name_prefix\": \"Acme:\",     \"attributes\": [       {         \"key\": \"Score\",         \"value\": \"100%\"       },       {         \"key\": \"Time\",         \"value\": \"2:30h\"       }     ]   },   \"remote_fields\": {} } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
application_id = '8Xi6iZrwusZqJmDGXs49GBmJ' # String | The Kombo ID of the application you want to create the link for.
opts = {
  post_ats_applications_application_id_result_links_request_body: Kombo::PostAtsApplicationsApplicationIdResultLinksRequestBody.new({label: 'label_example', url: 'url_example'}) # PostAtsApplicationsApplicationIdResultLinksRequestBody | POST /ats/applications/:application_id/result-links Request body
}

begin
  # Add result link to application
  result = api_instance.post_ats_applications_application_id_result_links(x_integration_id, application_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->post_ats_applications_application_id_result_links: #{e}"
end
```

#### Using the post_ats_applications_application_id_result_links_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAtsApplicationsApplicationIdResultLinksPositiveResponse>, Integer, Hash)> post_ats_applications_application_id_result_links_with_http_info(x_integration_id, application_id, opts)

```ruby
begin
  # Add result link to application
  data, status_code, headers = api_instance.post_ats_applications_application_id_result_links_with_http_info(x_integration_id, application_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAtsApplicationsApplicationIdResultLinksPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->post_ats_applications_application_id_result_links_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **application_id** | **String** | The Kombo ID of the application you want to create the link for. |  |
| **post_ats_applications_application_id_result_links_request_body** | [**PostAtsApplicationsApplicationIdResultLinksRequestBody**](PostAtsApplicationsApplicationIdResultLinksRequestBody.md) | POST /ats/applications/:application_id/result-links Request body | [optional] |

### Return type

[**PostAtsApplicationsApplicationIdResultLinksPositiveResponse**](PostAtsApplicationsApplicationIdResultLinksPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_ats_candidates

> <PostAtsCandidatesPositiveResponse> post_ats_candidates(x_integration_id, opts)

Create candidate

Create a new candidate and application for the specified job.  <Warning>       **We recommend using the [Create application](/ats/v1/post-jobs-job-id-applications) endpoint instead.**        We realized that in practice it was always more about creating _applications_ instead of _candidates_, so we created a new, more aptly named one that you should use instead: [Create application](/ats/v1/post-jobs-job-id-applications)        Using it also has the benefit that we return the newly created applicant at the root level, so you can easily store its ID.     </Warning>  <Note>   This endpoint requires the permission **Create applications and candidates** to be enabled in [your scope config](/scopes). </Note>  ### Example Request Body  ```json {   \"candidate\": {     \"first_name\": \"Frank\",     \"last_name\": \"Doe\",     \"company\": \"Acme Inc.\",     \"title\": \"Head of Integrations\",     \"email_address\": \"frank.doe@example.com\",     \"phone_number\": \"+1-541-754-3010\",     \"gender\": \"MALE\",     \"salary_expectations\": {       \"amount\": 100000,       \"period\": \"YEAR\"     },     \"availability_date\": \"2021-01-01\",     \"location\": {       \"city\": \"New York\",       \"country\": \"US\",       \"state\": \"NY\"     },     \"social_links\": [       {         \"url\": \"https://www.linkedin.com/in/frank-doe-123456789/\"       },       {         \"url\": \"https://twitter.com/frankdoe\"       }     ]   },   \"application\": {     \"job_id\": \"BDpgnpZ148nrGh4mYHNxJBgx\",     \"stage_id\": \"8x3YKRDcuRnwShdh96ShBNn1\"   },   \"attachments\": [     {       \"name\": \"Frank Doe CV.txt\",       \"data\": \"SGkgdGhlcmUsIEtvbWJvIGlzIGN1cnJlbnRseSBoaXJpbmcgZW5naW5lZXJzIHRoYXQgbG92ZSB0byB3b3JrIG9uIGRldmVsb3BlciBwcm9kdWN0cy4=\",       \"type\": \"CV\",       \"content_type\": \"text/plain\"     }   ],   \"screening_question_answers\": [     {       \"question_id\": \"3phFBNXRweGnDmsU9o2vdPuQ\",       \"answer\": \"Yes\"     },     {       \"question_id\": \"EYJjhMQT3LtVKXnTbnRT8s6U\",       \"answer\": [         \"GUzE666zfyjeoCJX6A8n7wh6\",         \"5WPHzzKAv8cx97KtHRUV96U8\",         \"7yZfKGzWigXxxRTygqAfHvyE\"       ]     }   ],   \"remote_fields\": {} } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  post_ats_candidates_request_body: Kombo::PostAtsCandidatesRequestBody.new({candidate: Kombo::PostAtsCandidatesRequestBodyCandidate.new({first_name: 'first_name_example', last_name: 'last_name_example', email_address: 'email_address_example'}), application: Kombo::PostAtsCandidatesRequestBodyApplication.new({job_id: 'job_id_example'})}) # PostAtsCandidatesRequestBody | POST /ats/candidates Request body
}

begin
  # Create candidate
  result = api_instance.post_ats_candidates(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->post_ats_candidates: #{e}"
end
```

#### Using the post_ats_candidates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAtsCandidatesPositiveResponse>, Integer, Hash)> post_ats_candidates_with_http_info(x_integration_id, opts)

```ruby
begin
  # Create candidate
  data, status_code, headers = api_instance.post_ats_candidates_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAtsCandidatesPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->post_ats_candidates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **post_ats_candidates_request_body** | [**PostAtsCandidatesRequestBody**](PostAtsCandidatesRequestBody.md) | POST /ats/candidates Request body | [optional] |

### Return type

[**PostAtsCandidatesPositiveResponse**](PostAtsCandidatesPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_ats_candidates_candidate_id_attachments

> <PostAtsCandidatesCandidateIdAttachmentsPositiveResponse> post_ats_candidates_candidate_id_attachments(x_integration_id, candidate_id, opts)

Add attachment to candidate

Uploads an attachment file for the specified candidate.  <Warning>   **We recommend using the [add attachment to application](/ats/v1/post-applications-application-id-attachments) endpoint instead.**    We realized that in practice it was always more about adding attachments to _applications_ instead of _candidates_, so we created a new, more aptly named one that you should use instead: [add attachment to application](/ats/v1/post-applications-application-id-attachments)   </Warning>  <Note>   This endpoint requires the permission **Add attachments** to be enabled in [your scope config](/scopes). </Note>  ### Example Request Body  ```json {   \"candidate_id\": \"GRKdd9dibYKKCrmGRSMJf3wu\",   \"attachment\": {     \"name\": \"Frank Doe CV.txt\",     \"data\": \"SGkgdGhlcmUsIEtvbWJvIGlzIGN1cnJlbnRseSBoaXJpbmcgZW5naW5lZXJzIHRoYXQgbG92ZSB0byB3b3JrIG9uIGRldmVsb3BlciBwcm9kdWN0cy4=\",     \"type\": \"CV\",     \"content_type\": \"text/plain\"   } } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
candidate_id = 'GRKdd9dibYKKCrmGRSMJf3wu' # String | The Kombo ID of the candidate you want to add the attachment to.
opts = {
  post_ats_candidates_candidate_id_attachments_request_body: Kombo::PostAtsCandidatesCandidateIdAttachmentsRequestBody.new({attachment: Kombo::PostAtsApplicationsApplicationIdAttachmentsRequestBodyAttachment.new({name: 'name_example', type: 'CV'})}) # PostAtsCandidatesCandidateIdAttachmentsRequestBody | POST /ats/candidates/:candidate_id/attachments Request body
}

begin
  # Add attachment to candidate
  result = api_instance.post_ats_candidates_candidate_id_attachments(x_integration_id, candidate_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->post_ats_candidates_candidate_id_attachments: #{e}"
end
```

#### Using the post_ats_candidates_candidate_id_attachments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAtsCandidatesCandidateIdAttachmentsPositiveResponse>, Integer, Hash)> post_ats_candidates_candidate_id_attachments_with_http_info(x_integration_id, candidate_id, opts)

```ruby
begin
  # Add attachment to candidate
  data, status_code, headers = api_instance.post_ats_candidates_candidate_id_attachments_with_http_info(x_integration_id, candidate_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAtsCandidatesCandidateIdAttachmentsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->post_ats_candidates_candidate_id_attachments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **candidate_id** | **String** | The Kombo ID of the candidate you want to add the attachment to. |  |
| **post_ats_candidates_candidate_id_attachments_request_body** | [**PostAtsCandidatesCandidateIdAttachmentsRequestBody**](PostAtsCandidatesCandidateIdAttachmentsRequestBody.md) | POST /ats/candidates/:candidate_id/attachments Request body | [optional] |

### Return type

[**PostAtsCandidatesCandidateIdAttachmentsPositiveResponse**](PostAtsCandidatesCandidateIdAttachmentsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_ats_candidates_candidate_id_result_links

> <PostAtsCandidatesCandidateIdResultLinksPositiveResponse> post_ats_candidates_candidate_id_result_links(x_integration_id, candidate_id, opts)

Add result link to candidate

Add a result link to a candidate.  <Warning>   **We recommend to use [add result link to application](/ats/v1/post-applications-application-id-result-links) instead.**    This can, for example, be used to link a candidate back to a test result/assessment in your application. As not all ATS tools have a \"result link\" feature, we sometimes repurpose other fields to expose it.    </Warning>     <Note>   This endpoint requires the permission **Add result links** to be enabled in [your scope config](/scopes). </Note>  ### Example Request Body  ```json {   \"label\": \"Assessment Result\",   \"url\": \"https://example.com/test-results/5BtP1WC1UboS7CF3yxjKcvjG\",   \"details\": {     \"custom_field_name_prefix\": \"Acme:\",     \"attributes\": [       {         \"key\": \"Score\",         \"value\": \"100%\"       },       {         \"key\": \"Time\",         \"value\": \"2:30h\"       }     ]   },   \"remote_fields\": {} } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
candidate_id = '8Xi6iZrwusZqJmDGXs49GBmJ' # String | The Kombo ID of the candidate you want to add the result link to.
opts = {
  post_ats_candidates_candidate_id_result_links_request_body: Kombo::PostAtsCandidatesCandidateIdResultLinksRequestBody.new({label: 'label_example', url: 'url_example'}) # PostAtsCandidatesCandidateIdResultLinksRequestBody | POST /ats/candidates/:candidate_id/result-links Request body
}

begin
  # Add result link to candidate
  result = api_instance.post_ats_candidates_candidate_id_result_links(x_integration_id, candidate_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->post_ats_candidates_candidate_id_result_links: #{e}"
end
```

#### Using the post_ats_candidates_candidate_id_result_links_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAtsCandidatesCandidateIdResultLinksPositiveResponse>, Integer, Hash)> post_ats_candidates_candidate_id_result_links_with_http_info(x_integration_id, candidate_id, opts)

```ruby
begin
  # Add result link to candidate
  data, status_code, headers = api_instance.post_ats_candidates_candidate_id_result_links_with_http_info(x_integration_id, candidate_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAtsCandidatesCandidateIdResultLinksPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->post_ats_candidates_candidate_id_result_links_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **candidate_id** | **String** | The Kombo ID of the candidate you want to add the result link to. |  |
| **post_ats_candidates_candidate_id_result_links_request_body** | [**PostAtsCandidatesCandidateIdResultLinksRequestBody**](PostAtsCandidatesCandidateIdResultLinksRequestBody.md) | POST /ats/candidates/:candidate_id/result-links Request body | [optional] |

### Return type

[**PostAtsCandidatesCandidateIdResultLinksPositiveResponse**](PostAtsCandidatesCandidateIdResultLinksPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_ats_candidates_candidate_id_tags

> <PostAtsCandidatesCandidateIdTagsPositiveResponse> post_ats_candidates_candidate_id_tags(x_integration_id, candidate_id, opts)

Add tag to candidate

Add a tag to a candidate.  Kombo takes care of creating the tag if required, finding out the right ID, and appending it to the list of tags.  <Note>   This endpoint requires the permission **Manage tags** to be enabled in [your scope config](/scopes). </Note>  ### Example Request Body  ```json {   \"tag\": {     \"name\": \"Excellent Fit\"   } } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
candidate_id = '8Xi6iZrwusZqJmDGXs49GBmJ' # String | The Kombo ID of the candidate you want to add the tag to.
opts = {
  post_ats_candidates_candidate_id_tags_request_body: Kombo::PostAtsCandidatesCandidateIdTagsRequestBody.new({tag: Kombo::PostAtsCandidatesCandidateIdTagsRequestBodyTag.new({name: 'name_example'})}) # PostAtsCandidatesCandidateIdTagsRequestBody | POST /ats/candidates/:candidate_id/tags Request body
}

begin
  # Add tag to candidate
  result = api_instance.post_ats_candidates_candidate_id_tags(x_integration_id, candidate_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->post_ats_candidates_candidate_id_tags: #{e}"
end
```

#### Using the post_ats_candidates_candidate_id_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAtsCandidatesCandidateIdTagsPositiveResponse>, Integer, Hash)> post_ats_candidates_candidate_id_tags_with_http_info(x_integration_id, candidate_id, opts)

```ruby
begin
  # Add tag to candidate
  data, status_code, headers = api_instance.post_ats_candidates_candidate_id_tags_with_http_info(x_integration_id, candidate_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAtsCandidatesCandidateIdTagsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->post_ats_candidates_candidate_id_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **candidate_id** | **String** | The Kombo ID of the candidate you want to add the tag to. |  |
| **post_ats_candidates_candidate_id_tags_request_body** | [**PostAtsCandidatesCandidateIdTagsRequestBody**](PostAtsCandidatesCandidateIdTagsRequestBody.md) | POST /ats/candidates/:candidate_id/tags Request body | [optional] |

### Return type

[**PostAtsCandidatesCandidateIdTagsPositiveResponse**](PostAtsCandidatesCandidateIdTagsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_ats_import_tracked_application

> <PostAtsImportTrackedApplicationPositiveResponse> post_ats_import_tracked_application(x_integration_id, opts)

Import tracked application

Import tracked application  Retroactively import existing applications into Kombo's tracking system. This is particularly useful if you have enabled the 'sync only created applications' setting and want to start tracking applications that were created before using Kombo.  To import an application, you'll need to provide specific identifiers based on the ATS. The available `id_type` values are defined by Kombo based on the tool's API capabilities. Please reach out to Kombo support if you require further types to be supported.  Once imported, Kombo will automatically fetch and update the application's complete data during the next sync.  ### Example Request Body  ```json {   \"tracked_at\": \"2024-04-12T14:33:47.000Z\",   \"successfactors\": {     \"id_type\": \"application_remote_id\",     \"application_remote_id\": \"1224042\"   } } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  post_ats_import_tracked_application_request_body: Kombo::PostAtsImportTrackedApplicationRequestBody.new({tracked_at: Time.now}) # PostAtsImportTrackedApplicationRequestBody | POST /ats/import-tracked-application Request body
}

begin
  # Import tracked application
  result = api_instance.post_ats_import_tracked_application(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->post_ats_import_tracked_application: #{e}"
end
```

#### Using the post_ats_import_tracked_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAtsImportTrackedApplicationPositiveResponse>, Integer, Hash)> post_ats_import_tracked_application_with_http_info(x_integration_id, opts)

```ruby
begin
  # Import tracked application
  data, status_code, headers = api_instance.post_ats_import_tracked_application_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAtsImportTrackedApplicationPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->post_ats_import_tracked_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **post_ats_import_tracked_application_request_body** | [**PostAtsImportTrackedApplicationRequestBody**](PostAtsImportTrackedApplicationRequestBody.md) | POST /ats/import-tracked-application Request body | [optional] |

### Return type

[**PostAtsImportTrackedApplicationPositiveResponse**](PostAtsImportTrackedApplicationPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_ats_jobs_job_id_applications

> <PostAtsJobsJobIdApplicationsPositiveResponse> post_ats_jobs_job_id_applications(x_integration_id, job_id, opts)

Create application

Create a new application and candidate for the specified job.  Visit our in-depth guides to learn more about:  - 🌐 [Setting the source of the application](/ats/features/implementation-guide/creating-applications#set-the-source-of-the-application)  - 📎 [Uploading attachments with the application](/ats/features/implementation-guide/creating-applications#upload-attachments-with-the-application)  - ♻️ [Retry behaviour](/ats/features/implementation-guide/creating-applications#retry-behaviour)  - ✏️ [Writing answers to screening questions](/ats/features/implementation-guide/creating-applications#write-answers-to-screening-questions)  - ⚠️ [Handling ATS-specific limitations](/ats/features/implementation-guide/creating-applications#handle-ats-specific-limitations)  <Note>   This endpoint requires the permission **Create applications and candidates** to be enabled in [your scope config](/scopes). </Note>  ### Example Request Body  ```json {   \"candidate\": {     \"first_name\": \"Frank\",     \"last_name\": \"Doe\",     \"company\": \"Acme Inc.\",     \"title\": \"Head of Integrations\",     \"email_address\": \"frank.doe@example.com\",     \"phone_number\": \"+1-541-754-3010\",     \"gender\": \"MALE\",     \"salary_expectations\": {       \"amount\": 100000,       \"period\": \"YEAR\"     },     \"availability_date\": \"2021-01-01\",     \"location\": {       \"city\": \"New York\",       \"country\": \"US\"     }   },   \"stage_id\": \"8x3YKRDcuRnwShdh96ShBNn1\",   \"attachments\": [     {       \"name\": \"Frank Doe CV.txt\",       \"data\": \"SGkgdGhlcmUsIEtvbWJvIGlzIGN1cnJlbnRseSBoaXJpbmcgZW5naW5lZXJzIHRoYXQgbG92ZSB0byB3b3JrIG9uIGRldmVsb3BlciBwcm9kdWN0cy4=\",       \"type\": \"CV\",       \"content_type\": \"text/plain\"     }   ],   \"screening_question_answers\": [     {       \"question_id\": \"3phFBNXRweGnDmsU9o2vdPuQ\",       \"answer\": \"Yes\"     },     {       \"question_id\": \"EYJjhMQT3LtVKXnTbnRT8s6U\",       \"answer\": [         \"GUzE666zfyjeoCJX6A8n7wh6\",         \"5WPHzzKAv8cx97KtHRUV96U8\",         \"7yZfKGzWigXxxRTygqAfHvyE\"       ]     }   ],   \"remote_fields\": {} } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
job_id = 'BDpgnpZ148nrGh4mYHNxJBgx' # String | The Kombo ID or Remote ID of the Job this candidate should apply for. If you want to use the ID of the integrated system (remote_id) you need to prefix the id with \"remote:\". You can use the remote ID if you do not want to sync jobs.
opts = {
  post_ats_jobs_job_id_applications_request_body: Kombo::PostAtsJobsJobIdApplicationsRequestBody.new({candidate: Kombo::PostAtsCandidatesRequestBodyCandidate.new({first_name: 'first_name_example', last_name: 'last_name_example', email_address: 'email_address_example'})}) # PostAtsJobsJobIdApplicationsRequestBody | POST /ats/jobs/:job_id/applications Request body
}

begin
  # Create application
  result = api_instance.post_ats_jobs_job_id_applications(x_integration_id, job_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->post_ats_jobs_job_id_applications: #{e}"
end
```

#### Using the post_ats_jobs_job_id_applications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAtsJobsJobIdApplicationsPositiveResponse>, Integer, Hash)> post_ats_jobs_job_id_applications_with_http_info(x_integration_id, job_id, opts)

```ruby
begin
  # Create application
  data, status_code, headers = api_instance.post_ats_jobs_job_id_applications_with_http_info(x_integration_id, job_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAtsJobsJobIdApplicationsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->post_ats_jobs_job_id_applications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **job_id** | **String** | The Kombo ID or Remote ID of the Job this candidate should apply for. If you want to use the ID of the integrated system (remote_id) you need to prefix the id with \&quot;remote:\&quot;. You can use the remote ID if you do not want to sync jobs. |  |
| **post_ats_jobs_job_id_applications_request_body** | [**PostAtsJobsJobIdApplicationsRequestBody**](PostAtsJobsJobIdApplicationsRequestBody.md) | POST /ats/jobs/:job_id/applications Request body | [optional] |

### Return type

[**PostAtsJobsJobIdApplicationsPositiveResponse**](PostAtsJobsJobIdApplicationsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_ats_applications_application_id_stage

> <PutAtsApplicationsApplicationIdStagePositiveResponse> put_ats_applications_application_id_stage(x_integration_id, application_id, opts)

Move application to stage

Moves an application to a specified stage. Use job-specific stages from GET /jobs, not the deprecated /application-stages endpoint.  <Note>   This endpoint requires the permission **Set application stage** to be enabled in [your scope config](/scopes). </Note>  ### Example Request Body  ```json {   \"stage_id\": \"3PJ8PZhZZa1eEdd2DtPNtVup\" } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedATSAPIApi.new
x_integration_id = 'join:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
application_id = 'GRKdd9dibYKKCrmGRSMJf3wu' # String | The Kombo ID of the application you want to move to a different stage.
opts = {
  put_ats_applications_application_id_stage_request_body: Kombo::PutAtsApplicationsApplicationIdStageRequestBody.new({stage_id: 'stage_id_example'}) # PutAtsApplicationsApplicationIdStageRequestBody | PUT /ats/applications/:application_id/stage Request body
}

begin
  # Move application to stage
  result = api_instance.put_ats_applications_application_id_stage(x_integration_id, application_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->put_ats_applications_application_id_stage: #{e}"
end
```

#### Using the put_ats_applications_application_id_stage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PutAtsApplicationsApplicationIdStagePositiveResponse>, Integer, Hash)> put_ats_applications_application_id_stage_with_http_info(x_integration_id, application_id, opts)

```ruby
begin
  # Move application to stage
  data, status_code, headers = api_instance.put_ats_applications_application_id_stage_with_http_info(x_integration_id, application_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PutAtsApplicationsApplicationIdStagePositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedATSAPIApi->put_ats_applications_application_id_stage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **application_id** | **String** | The Kombo ID of the application you want to move to a different stage. |  |
| **put_ats_applications_application_id_stage_request_body** | [**PutAtsApplicationsApplicationIdStageRequestBody**](PutAtsApplicationsApplicationIdStageRequestBody.md) | PUT /ats/applications/:application_id/stage Request body | [optional] |

### Return type

[**PutAtsApplicationsApplicationIdStagePositiveResponse**](PutAtsApplicationsApplicationIdStagePositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

