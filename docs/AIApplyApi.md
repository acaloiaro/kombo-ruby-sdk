# Kombo::AIApplyApi

All URIs are relative to *https://api.kombo.dev/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_ai_apply_applications**](AIApplyApi.md#get_ai_apply_applications) | **GET** /ai-apply/applications | Get applications |
| [**get_ai_apply_career_sites**](AIApplyApi.md#get_ai_apply_career_sites) | **GET** /ai-apply/career-sites | Get career sites |
| [**get_ai_apply_postings**](AIApplyApi.md#get_ai_apply_postings) | **GET** /ai-apply/postings | Get job postings |
| [**get_ai_apply_unified_api_jobs**](AIApplyApi.md#get_ai_apply_unified_api_jobs) | **GET** /ai-apply/unified-api/jobs | Get jobs |
| [**post_ai_apply_apply**](AIApplyApi.md#post_ai_apply_apply) | **POST** /ai-apply/apply | Submit job application |
| [**post_ai_apply_career_sites**](AIApplyApi.md#post_ai_apply_career_sites) | **POST** /ai-apply/career-sites | Create a career site |
| [**post_ai_apply_postings**](AIApplyApi.md#post_ai_apply_postings) | **POST** /ai-apply/postings | Parse a job posting |
| [**post_ai_apply_postings_posting_id_inquire**](AIApplyApi.md#post_ai_apply_postings_posting_id_inquire) | **POST** /ai-apply/postings/{posting_id}/inquire | Inquire about a job posting and the application f… |
| [**post_ai_apply_postings_posting_id_parse**](AIApplyApi.md#post_ai_apply_postings_posting_id_parse) | **POST** /ai-apply/postings/{posting_id}/parse | Re-parse an existing job posting |
| [**post_ai_apply_unified_api_jobs_job_id_applications**](AIApplyApi.md#post_ai_apply_unified_api_jobs_job_id_applications) | **POST** /ai-apply/unified-api/jobs/{job_id}/applications | Create application |


## get_ai_apply_applications

> <GetAiApplyApplicationsPositiveResponse> get_ai_apply_applications(opts)

Get applications

Get all applications.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::AIApplyApi.new
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  job_posting_ids: 'job_posting_ids_example' # String | Filter by a comma-separated list of job posting IDs such as `89V6GEKpdZwqbxQz59n1ftFb,kcGHREEXCMF26Yhpuyh1gDVE`.
}

begin
  # Get applications
  result = api_instance.get_ai_apply_applications(opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling AIApplyApi->get_ai_apply_applications: #{e}"
end
```

#### Using the get_ai_apply_applications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAiApplyApplicationsPositiveResponse>, Integer, Hash)> get_ai_apply_applications_with_http_info(opts)

```ruby
begin
  # Get applications
  data, status_code, headers = api_instance.get_ai_apply_applications_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAiApplyApplicationsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling AIApplyApi->get_ai_apply_applications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **job_posting_ids** | **String** | Filter by a comma-separated list of job posting IDs such as &#x60;89V6GEKpdZwqbxQz59n1ftFb,kcGHREEXCMF26Yhpuyh1gDVE&#x60;. | [optional] |

### Return type

[**GetAiApplyApplicationsPositiveResponse**](GetAiApplyApplicationsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ai_apply_career_sites

> <GetAiApplyCareerSitesPositiveResponse> get_ai_apply_career_sites(opts)

Get career sites

Get all career sites.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::AIApplyApi.new
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  ids: 'ids_example' # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
}

begin
  # Get career sites
  result = api_instance.get_ai_apply_career_sites(opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling AIApplyApi->get_ai_apply_career_sites: #{e}"
end
```

#### Using the get_ai_apply_career_sites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAiApplyCareerSitesPositiveResponse>, Integer, Hash)> get_ai_apply_career_sites_with_http_info(opts)

```ruby
begin
  # Get career sites
  data, status_code, headers = api_instance.get_ai_apply_career_sites_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAiApplyCareerSitesPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling AIApplyApi->get_ai_apply_career_sites_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |

### Return type

[**GetAiApplyCareerSitesPositiveResponse**](GetAiApplyCareerSitesPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ai_apply_postings

> <GetAiApplyPostingsPositiveResponse> get_ai_apply_postings(opts)

Get job postings

Get all job postings. To get the application form and submit applications, use the POST /postings/:id/inquire endpoint.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::AIApplyApi.new
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  career_site_ids: 'career_site_ids_example', # String | Filter by a comma-separated list of career site IDs such as `A8m9k9RhjNokMfRTWtpQ99VtH,rCbkAA3pvcKjsFYwEeXtCQkc`.
  job_codes: 'job_codes_example' # String | Filter by a comma-separated list of job codes such as `ACME_13,ACME_14`.
}

begin
  # Get job postings
  result = api_instance.get_ai_apply_postings(opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling AIApplyApi->get_ai_apply_postings: #{e}"
end
```

#### Using the get_ai_apply_postings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAiApplyPostingsPositiveResponse>, Integer, Hash)> get_ai_apply_postings_with_http_info(opts)

```ruby
begin
  # Get job postings
  data, status_code, headers = api_instance.get_ai_apply_postings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAiApplyPostingsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling AIApplyApi->get_ai_apply_postings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **career_site_ids** | **String** | Filter by a comma-separated list of career site IDs such as &#x60;A8m9k9RhjNokMfRTWtpQ99VtH,rCbkAA3pvcKjsFYwEeXtCQkc&#x60;. | [optional] |
| **job_codes** | **String** | Filter by a comma-separated list of job codes such as &#x60;ACME_13,ACME_14&#x60;. | [optional] |

### Return type

[**GetAiApplyPostingsPositiveResponse**](GetAiApplyPostingsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ai_apply_unified_api_jobs

> <GetAiApplyUnifiedApiJobsPositiveResponse> get_ai_apply_unified_api_jobs(opts)

Get jobs

Get jobs in a backwards compatible way as you would [via Kombo's unified API](https://docs.kombo.dev/ats/v1/get-jobs). This is not the recommended way to get jobs with AI Apply.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::AIApplyApi.new
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 5.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example', # String | This parameter exists for backwards compatibility with Kombo's unified API. Supplying a comma-separated list of remote IDs such as `32,33` will return no jobs because AI Apply does not interface with a remote system that issues remote IDs.
  job_codes: 'job_codes_example', # String | Filter by a comma-separated list of job codes such as `ACME_12,ACME_14`.
  career_site_ids: 'career_site_ids_example' # String | Filter by a comma-separated list of career site IDs such as `A8m9k9RhjNokMfRTWtpQ99VtH,rCbkAA3pvcKjsFYwEeXtCQkc`.
}

begin
  # Get jobs
  result = api_instance.get_ai_apply_unified_api_jobs(opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling AIApplyApi->get_ai_apply_unified_api_jobs: #{e}"
end
```

#### Using the get_ai_apply_unified_api_jobs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAiApplyUnifiedApiJobsPositiveResponse>, Integer, Hash)> get_ai_apply_unified_api_jobs_with_http_info(opts)

```ruby
begin
  # Get jobs
  data, status_code, headers = api_instance.get_ai_apply_unified_api_jobs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAiApplyUnifiedApiJobsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling AIApplyApi->get_ai_apply_unified_api_jobs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 5. | [optional][default to 5] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | This parameter exists for backwards compatibility with Kombo&#39;s unified API. Supplying a comma-separated list of remote IDs such as &#x60;32,33&#x60; will return no jobs because AI Apply does not interface with a remote system that issues remote IDs. | [optional] |
| **job_codes** | **String** | Filter by a comma-separated list of job codes such as &#x60;ACME_12,ACME_14&#x60;. | [optional] |
| **career_site_ids** | **String** | Filter by a comma-separated list of career site IDs such as &#x60;A8m9k9RhjNokMfRTWtpQ99VtH,rCbkAA3pvcKjsFYwEeXtCQkc&#x60;. | [optional] |

### Return type

[**GetAiApplyUnifiedApiJobsPositiveResponse**](GetAiApplyUnifiedApiJobsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_ai_apply_apply

> <PostAiApplyApplyPositiveResponse> post_ai_apply_apply(opts)

Submit job application

Submit a job application using a submission token. The application will be queued and processed asynchronously. Returns ID to track progress and match with webhooks.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::AIApplyApi.new
opts = {
  post_ai_apply_apply_request_body: Kombo::PostAiApplyApplyRequestBody.new({submission_token: 'submission_token_example', candidate_email: 'candidate_email_example', screening_question_answers: [Kombo::PostAiApplyApplyRequestBodyScreeningQuestionAnswersInner.new({question_id: 'question_id_example', answer: nil})]}) # PostAiApplyApplyRequestBody | POST /ai-apply/apply Request body
}

begin
  # Submit job application
  result = api_instance.post_ai_apply_apply(opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling AIApplyApi->post_ai_apply_apply: #{e}"
end
```

#### Using the post_ai_apply_apply_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAiApplyApplyPositiveResponse>, Integer, Hash)> post_ai_apply_apply_with_http_info(opts)

```ruby
begin
  # Submit job application
  data, status_code, headers = api_instance.post_ai_apply_apply_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAiApplyApplyPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling AIApplyApi->post_ai_apply_apply_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_ai_apply_apply_request_body** | [**PostAiApplyApplyRequestBody**](PostAiApplyApplyRequestBody.md) | POST /ai-apply/apply Request body | [optional] |

### Return type

[**PostAiApplyApplyPositiveResponse**](PostAiApplyApplyPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_ai_apply_career_sites

> <PostAiApplyCareerSitesPositiveResponse> post_ai_apply_career_sites(opts)

Create a career site

Create a career site entry. Career sites are required to be specified when parsing job postings, grouping them under a single entity.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::AIApplyApi.new
opts = {
  post_ai_apply_career_sites_request_body: Kombo::PostAiApplyCareerSitesRequestBody.new({label: 'label_example'}) # PostAiApplyCareerSitesRequestBody | POST /ai-apply/career-sites Request body
}

begin
  # Create a career site
  result = api_instance.post_ai_apply_career_sites(opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling AIApplyApi->post_ai_apply_career_sites: #{e}"
end
```

#### Using the post_ai_apply_career_sites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAiApplyCareerSitesPositiveResponse>, Integer, Hash)> post_ai_apply_career_sites_with_http_info(opts)

```ruby
begin
  # Create a career site
  data, status_code, headers = api_instance.post_ai_apply_career_sites_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAiApplyCareerSitesPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling AIApplyApi->post_ai_apply_career_sites_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_ai_apply_career_sites_request_body** | [**PostAiApplyCareerSitesRequestBody**](PostAiApplyCareerSitesRequestBody.md) | POST /ai-apply/career-sites Request body | [optional] |

### Return type

[**PostAiApplyCareerSitesPositiveResponse**](PostAiApplyCareerSitesPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_ai_apply_postings

> <PostAiApplyPostingsPositiveResponse> post_ai_apply_postings(opts)

Parse a job posting

Submit a job posting URL to be parsed asynchronously. Returns ID to track progress.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::AIApplyApi.new
opts = {
  post_ai_apply_postings_request_body: Kombo::PostAiApplyPostingsRequestBody.new({career_site_id: 'career_site_id_example', url: 'url_example'}) # PostAiApplyPostingsRequestBody | POST /ai-apply/postings Request body
}

begin
  # Parse a job posting
  result = api_instance.post_ai_apply_postings(opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling AIApplyApi->post_ai_apply_postings: #{e}"
end
```

#### Using the post_ai_apply_postings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAiApplyPostingsPositiveResponse>, Integer, Hash)> post_ai_apply_postings_with_http_info(opts)

```ruby
begin
  # Parse a job posting
  data, status_code, headers = api_instance.post_ai_apply_postings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAiApplyPostingsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling AIApplyApi->post_ai_apply_postings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_ai_apply_postings_request_body** | [**PostAiApplyPostingsRequestBody**](PostAiApplyPostingsRequestBody.md) | POST /ai-apply/postings Request body | [optional] |

### Return type

[**PostAiApplyPostingsPositiveResponse**](PostAiApplyPostingsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_ai_apply_postings_posting_id_inquire

> <PostAiApplyPostingsPostingIdInquirePositiveResponse> post_ai_apply_postings_posting_id_inquire(posting_id, opts)

Inquire about a job posting and the application f…

Receive the application form (screening questions) for a job posting and a submission token. This endpoint must be called before submitting an application to ensure you have the latest questions and a valid submission token. The submission token is valid for 12 hours and prevents duplicate submissions. The application form may contain conditional questions that are only shown based on answers to previous questions (check the display_when field).

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::AIApplyApi.new
posting_id = '9QGNv3B98kL3hyELE1qsZ86s' # String | The globally unique ID of this object generated by Kombo. We recommend using this as a stable primary key for syncing.
opts = {
  body: { ... } # Object | POST /ai-apply/postings/:posting_id/inquire Request body
}

begin
  # Inquire about a job posting and the application f…
  result = api_instance.post_ai_apply_postings_posting_id_inquire(posting_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling AIApplyApi->post_ai_apply_postings_posting_id_inquire: #{e}"
end
```

#### Using the post_ai_apply_postings_posting_id_inquire_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAiApplyPostingsPostingIdInquirePositiveResponse>, Integer, Hash)> post_ai_apply_postings_posting_id_inquire_with_http_info(posting_id, opts)

```ruby
begin
  # Inquire about a job posting and the application f…
  data, status_code, headers = api_instance.post_ai_apply_postings_posting_id_inquire_with_http_info(posting_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAiApplyPostingsPostingIdInquirePositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling AIApplyApi->post_ai_apply_postings_posting_id_inquire_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **posting_id** | **String** | The globally unique ID of this object generated by Kombo. We recommend using this as a stable primary key for syncing. |  |
| **body** | **Object** | POST /ai-apply/postings/:posting_id/inquire Request body | [optional] |

### Return type

[**PostAiApplyPostingsPostingIdInquirePositiveResponse**](PostAiApplyPostingsPostingIdInquirePositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_ai_apply_postings_posting_id_parse

> <PostAiApplyPostingsPostingIdParsePositiveResponse> post_ai_apply_postings_posting_id_parse(posting_id, opts)

Re-parse an existing job posting

Trigger re-parsing of an already parsed job posting.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::AIApplyApi.new
posting_id = '9QGNv3B98kL3hyELE1qsZ86s' # String | The ID of the job posting to parse a new revision for
opts = {
  body: { ... } # Object | POST /ai-apply/postings/:posting_id/parse Request body
}

begin
  # Re-parse an existing job posting
  result = api_instance.post_ai_apply_postings_posting_id_parse(posting_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling AIApplyApi->post_ai_apply_postings_posting_id_parse: #{e}"
end
```

#### Using the post_ai_apply_postings_posting_id_parse_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAiApplyPostingsPostingIdParsePositiveResponse>, Integer, Hash)> post_ai_apply_postings_posting_id_parse_with_http_info(posting_id, opts)

```ruby
begin
  # Re-parse an existing job posting
  data, status_code, headers = api_instance.post_ai_apply_postings_posting_id_parse_with_http_info(posting_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAiApplyPostingsPostingIdParsePositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling AIApplyApi->post_ai_apply_postings_posting_id_parse_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **posting_id** | **String** | The ID of the job posting to parse a new revision for |  |
| **body** | **Object** | POST /ai-apply/postings/:posting_id/parse Request body | [optional] |

### Return type

[**PostAiApplyPostingsPostingIdParsePositiveResponse**](PostAiApplyPostingsPostingIdParsePositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_ai_apply_unified_api_jobs_job_id_applications

> <PostAiApplyUnifiedApiJobsJobIdApplicationsPositiveResponse> post_ai_apply_unified_api_jobs_job_id_applications(job_id, opts)

Create application

Create applications in a backwards compatible way as you would [via Kombo's unified API](https://docs.kombo.dev/ats/v1/post-jobs-job-id-applications). This is not the recommended way to create applications with AI Apply.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::AIApplyApi.new
job_id = 'BDpgnpZ148nrGh4mYHNxJBgx' # String | The Kombo ID or Remote ID of the Job this candidate should apply for. If you want to use the ID of the integrated system (remote_id) you need to prefix the id with \"remote:\". You can use the remote ID if you do not want to sync jobs.
opts = {
  post_ai_apply_unified_api_jobs_job_id_applications_request_body: Kombo::PostAiApplyUnifiedApiJobsJobIdApplicationsRequestBody.new({candidate: Kombo::PostAtsCandidatesRequestBodyCandidate.new({first_name: 'first_name_example', last_name: 'last_name_example', email_address: 'email_address_example'})}) # PostAiApplyUnifiedApiJobsJobIdApplicationsRequestBody | POST /ai-apply/unified-api/jobs/:job_id/applications Request body
}

begin
  # Create application
  result = api_instance.post_ai_apply_unified_api_jobs_job_id_applications(job_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling AIApplyApi->post_ai_apply_unified_api_jobs_job_id_applications: #{e}"
end
```

#### Using the post_ai_apply_unified_api_jobs_job_id_applications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostAiApplyUnifiedApiJobsJobIdApplicationsPositiveResponse>, Integer, Hash)> post_ai_apply_unified_api_jobs_job_id_applications_with_http_info(job_id, opts)

```ruby
begin
  # Create application
  data, status_code, headers = api_instance.post_ai_apply_unified_api_jobs_job_id_applications_with_http_info(job_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostAiApplyUnifiedApiJobsJobIdApplicationsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling AIApplyApi->post_ai_apply_unified_api_jobs_job_id_applications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_id** | **String** | The Kombo ID or Remote ID of the Job this candidate should apply for. If you want to use the ID of the integrated system (remote_id) you need to prefix the id with \&quot;remote:\&quot;. You can use the remote ID if you do not want to sync jobs. |  |
| **post_ai_apply_unified_api_jobs_job_id_applications_request_body** | [**PostAiApplyUnifiedApiJobsJobIdApplicationsRequestBody**](PostAiApplyUnifiedApiJobsJobIdApplicationsRequestBody.md) | POST /ai-apply/unified-api/jobs/:job_id/applications Request body | [optional] |

### Return type

[**PostAiApplyUnifiedApiJobsJobIdApplicationsPositiveResponse**](PostAiApplyUnifiedApiJobsJobIdApplicationsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

