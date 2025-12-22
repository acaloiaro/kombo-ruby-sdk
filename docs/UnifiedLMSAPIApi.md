# Kombo::UnifiedLMSAPIApi

All URIs are relative to *https://api.kombo.dev/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_lms_course_progressions**](UnifiedLMSAPIApi.md#get_lms_course_progressions) | **GET** /lms/course-progressions | Get course progressions |
| [**get_lms_courses**](UnifiedLMSAPIApi.md#get_lms_courses) | **GET** /lms/courses | Get courses |
| [**get_lms_skills**](UnifiedLMSAPIApi.md#get_lms_skills) | **GET** /lms/skills | Get skills |
| [**get_lms_users**](UnifiedLMSAPIApi.md#get_lms_users) | **GET** /lms/users | Get users |
| [**post_lms_course_progressions**](UnifiedLMSAPIApi.md#post_lms_course_progressions) | **POST** /lms/course-progressions | Enroll user in course |
| [**post_lms_course_progressions_course_progression_id_complete**](UnifiedLMSAPIApi.md#post_lms_course_progressions_course_progression_id_complete) | **POST** /lms/course-progressions/{course_progression_id}/complete | Complete course |
| [**post_lms_courses**](UnifiedLMSAPIApi.md#post_lms_courses) | **POST** /lms/courses | Create course |


## get_lms_course_progressions

> <GetLmsCourseProgressionsPositiveResponse> get_lms_course_progressions(x_integration_id, opts)

Get course progressions

Get course progressions  Retrieve all course progressions from the LMS system. Course progressions track users enrollment and completion status in courses.  Top level filters use AND, while individual filters use OR if they accept multiple arguments. That means filters will be resolved like this: `(id IN ids) AND (remote_id IN remote_ids)`

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedLMSAPIApi.new
x_integration_id = 'bombohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  updated_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter the entries based on the modification date in format `YYYY-MM-DDTHH:mm:ss.sssZ`. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record's own `changed_at` field remains unchanged.  If you want to track entry deletion, also set the `include_deleted=true` query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior).
  include_deleted: Kombo::GetLmsCourseProgressionsParameterIncludeDeleted::TRUE, # GetLmsCourseProgressionsParameterIncludeDeleted | By default, deleted entries are not returned. Use the `include_deleted` query param to include deleted entries too.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example', # String | Filter by a comma-separated list of remote IDs.
  user_ids: 'user_ids_example' # String | Filter by a comma-separated list of user IDs. We will only return progressions that are related to _any_ of the users.
}

begin
  # Get course progressions
  result = api_instance.get_lms_course_progressions(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedLMSAPIApi->get_lms_course_progressions: #{e}"
end
```

#### Using the get_lms_course_progressions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLmsCourseProgressionsPositiveResponse>, Integer, Hash)> get_lms_course_progressions_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get course progressions
  data, status_code, headers = api_instance.get_lms_course_progressions_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLmsCourseProgressionsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedLMSAPIApi->get_lms_course_progressions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **updated_after** | **Time** | Filter the entries based on the modification date in format &#x60;YYYY-MM-DDTHH:mm:ss.sssZ&#x60;. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record&#39;s own &#x60;changed_at&#x60; field remains unchanged.  If you want to track entry deletion, also set the &#x60;include_deleted&#x3D;true&#x60; query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior). | [optional] |
| **include_deleted** | [**GetLmsCourseProgressionsParameterIncludeDeleted**](.md) | By default, deleted entries are not returned. Use the &#x60;include_deleted&#x60; query param to include deleted entries too. | [optional][default to &#39;false&#39;] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |
| **user_ids** | **String** | Filter by a comma-separated list of user IDs. We will only return progressions that are related to _any_ of the users. | [optional] |

### Return type

[**GetLmsCourseProgressionsPositiveResponse**](GetLmsCourseProgressionsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lms_courses

> <GetLmsCoursesPositiveResponse> get_lms_courses(x_integration_id, opts)

Get courses

Get courses  Retrieve all courses available in the LMS. Courses are structured learning programs that users can enroll in and complete.  Top level filters use AND, while individual filters use OR if they accept multiple arguments. That means filters will be resolved like this: `(id IN ids) AND (remote_id IN remote_ids)`

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedLMSAPIApi.new
x_integration_id = 'bombohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  updated_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter the entries based on the modification date in format `YYYY-MM-DDTHH:mm:ss.sssZ`. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record's own `changed_at` field remains unchanged.  If you want to track entry deletion, also set the `include_deleted=true` query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior).
  include_deleted: Kombo::GetLmsCoursesParameterIncludeDeleted::TRUE, # GetLmsCoursesParameterIncludeDeleted | By default, deleted entries are not returned. Use the `include_deleted` query param to include deleted entries too.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example' # String | Filter by a comma-separated list of remote IDs.
}

begin
  # Get courses
  result = api_instance.get_lms_courses(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedLMSAPIApi->get_lms_courses: #{e}"
end
```

#### Using the get_lms_courses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLmsCoursesPositiveResponse>, Integer, Hash)> get_lms_courses_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get courses
  data, status_code, headers = api_instance.get_lms_courses_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLmsCoursesPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedLMSAPIApi->get_lms_courses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **updated_after** | **Time** | Filter the entries based on the modification date in format &#x60;YYYY-MM-DDTHH:mm:ss.sssZ&#x60;. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record&#39;s own &#x60;changed_at&#x60; field remains unchanged.  If you want to track entry deletion, also set the &#x60;include_deleted&#x3D;true&#x60; query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior). | [optional] |
| **include_deleted** | [**GetLmsCoursesParameterIncludeDeleted**](.md) | By default, deleted entries are not returned. Use the &#x60;include_deleted&#x60; query param to include deleted entries too. | [optional][default to &#39;false&#39;] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |

### Return type

[**GetLmsCoursesPositiveResponse**](GetLmsCoursesPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lms_skills

> <GetLmsSkillsPositiveResponse> get_lms_skills(x_integration_id, opts)

Get skills

Get skills  Retrieve all skills available in the LMS system. Skills represent competencies or abilities that users can acquire or demonstrate through courses.  Top level filters use AND, while individual filters use OR if they accept multiple arguments. That means filters will be resolved like this: `(id IN ids) AND (remote_id IN remote_ids)`

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedLMSAPIApi.new
x_integration_id = 'bombohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  updated_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter the entries based on the modification date in format `YYYY-MM-DDTHH:mm:ss.sssZ`. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record's own `changed_at` field remains unchanged.  If you want to track entry deletion, also set the `include_deleted=true` query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior).
  include_deleted: Kombo::GetLmsSkillsParameterIncludeDeleted::TRUE, # GetLmsSkillsParameterIncludeDeleted | By default, deleted entries are not returned. Use the `include_deleted` query param to include deleted entries too.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example' # String | Filter by a comma-separated list of remote IDs.
}

begin
  # Get skills
  result = api_instance.get_lms_skills(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedLMSAPIApi->get_lms_skills: #{e}"
end
```

#### Using the get_lms_skills_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLmsSkillsPositiveResponse>, Integer, Hash)> get_lms_skills_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get skills
  data, status_code, headers = api_instance.get_lms_skills_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLmsSkillsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedLMSAPIApi->get_lms_skills_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **updated_after** | **Time** | Filter the entries based on the modification date in format &#x60;YYYY-MM-DDTHH:mm:ss.sssZ&#x60;. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record&#39;s own &#x60;changed_at&#x60; field remains unchanged.  If you want to track entry deletion, also set the &#x60;include_deleted&#x3D;true&#x60; query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior). | [optional] |
| **include_deleted** | [**GetLmsSkillsParameterIncludeDeleted**](.md) | By default, deleted entries are not returned. Use the &#x60;include_deleted&#x60; query param to include deleted entries too. | [optional][default to &#39;false&#39;] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |

### Return type

[**GetLmsSkillsPositiveResponse**](GetLmsSkillsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lms_users

> <GetLmsUsersPositiveResponse> get_lms_users(x_integration_id, opts)

Get users

Get users  Retrieve all users from the LMS system. Users are learners who can enroll in and complete courses.  Top level filters use AND, while individual filters use OR if they accept multiple arguments. That means filters will be resolved like this: `(id IN ids) AND (remote_id IN remote_ids)`

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedLMSAPIApi.new
x_integration_id = 'bombohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  updated_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter the entries based on the modification date in format `YYYY-MM-DDTHH:mm:ss.sssZ`. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record's own `changed_at` field remains unchanged.  If you want to track entry deletion, also set the `include_deleted=true` query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior).
  include_deleted: Kombo::GetLmsUsersParameterIncludeDeleted::TRUE, # GetLmsUsersParameterIncludeDeleted | By default, deleted entries are not returned. Use the `include_deleted` query param to include deleted entries too.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example', # String | Filter by a comma-separated list of remote IDs.
  work_emails: 'work_emails_example' # String | Filter by a comma-separated list of work emails. We will only return users who have _any_ of the work emails. The format of the emails is case-insensitive.
}

begin
  # Get users
  result = api_instance.get_lms_users(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedLMSAPIApi->get_lms_users: #{e}"
end
```

#### Using the get_lms_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLmsUsersPositiveResponse>, Integer, Hash)> get_lms_users_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get users
  data, status_code, headers = api_instance.get_lms_users_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLmsUsersPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedLMSAPIApi->get_lms_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **updated_after** | **Time** | Filter the entries based on the modification date in format &#x60;YYYY-MM-DDTHH:mm:ss.sssZ&#x60;. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record&#39;s own &#x60;changed_at&#x60; field remains unchanged.  If you want to track entry deletion, also set the &#x60;include_deleted&#x3D;true&#x60; query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior). | [optional] |
| **include_deleted** | [**GetLmsUsersParameterIncludeDeleted**](.md) | By default, deleted entries are not returned. Use the &#x60;include_deleted&#x60; query param to include deleted entries too. | [optional][default to &#39;false&#39;] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |
| **work_emails** | **String** | Filter by a comma-separated list of work emails. We will only return users who have _any_ of the work emails. The format of the emails is case-insensitive. | [optional] |

### Return type

[**GetLmsUsersPositiveResponse**](GetLmsUsersPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_lms_course_progressions

> <PostLmsCourseProgressionsPositiveResponse> post_lms_course_progressions(x_integration_id, opts)

Enroll user in course

Enroll a user in a course revision.  <Note>   This endpoint requires the permission **Create and manage course progressions** to be enabled in [your scope config](/scopes). </Note>  ### Example Request Body  ```json {   \"user_id\": \"7xPdr68N8kG9EzLwjsN9xyz\",   \"course_revision_id\": \"3KMdr68N8kG9EzLwjsN9aoz\" } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedLMSAPIApi.new
x_integration_id = 'bombohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  post_lms_course_progressions_request_body: Kombo::PostLmsCourseProgressionsRequestBody.new({user_id: 'user_id_example', course_revision_id: 'course_revision_id_example'}) # PostLmsCourseProgressionsRequestBody | POST /lms/course-progressions Request body
}

begin
  # Enroll user in course
  result = api_instance.post_lms_course_progressions(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedLMSAPIApi->post_lms_course_progressions: #{e}"
end
```

#### Using the post_lms_course_progressions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostLmsCourseProgressionsPositiveResponse>, Integer, Hash)> post_lms_course_progressions_with_http_info(x_integration_id, opts)

```ruby
begin
  # Enroll user in course
  data, status_code, headers = api_instance.post_lms_course_progressions_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostLmsCourseProgressionsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedLMSAPIApi->post_lms_course_progressions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **post_lms_course_progressions_request_body** | [**PostLmsCourseProgressionsRequestBody**](PostLmsCourseProgressionsRequestBody.md) | POST /lms/course-progressions Request body | [optional] |

### Return type

[**PostLmsCourseProgressionsPositiveResponse**](PostLmsCourseProgressionsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_lms_course_progressions_course_progression_id_complete

> <PostLmsCourseProgressionsCourseProgressionIdCompletePositiveResponse> post_lms_course_progressions_course_progression_id_complete(x_integration_id, course_progression_id, opts)

Complete course

Mark a course revision as completed for a user.  <Note>   This endpoint requires the permission **Create and manage course progressions** to be enabled in [your scope config](/scopes). </Note>  ### Example Request Body  ```json {   \"completed_at\": \"2024-04-15\" } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedLMSAPIApi.new
x_integration_id = 'bombohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
course_progression_id = '26vafvWSRmbhNcxJYqjCzuJg' # String | The ID of the course progression in Kombo or its ID in the remote system by prefixing it with `remote:` (e.g., `remote:12312`)
opts = {
  post_lms_course_progressions_course_progression_id_complete_request_body: Kombo::PostLmsCourseProgressionsCourseProgressionIdCompleteRequestBody.new # PostLmsCourseProgressionsCourseProgressionIdCompleteRequestBody | POST /lms/course-progressions/:course_progression_id/complete Request body
}

begin
  # Complete course
  result = api_instance.post_lms_course_progressions_course_progression_id_complete(x_integration_id, course_progression_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedLMSAPIApi->post_lms_course_progressions_course_progression_id_complete: #{e}"
end
```

#### Using the post_lms_course_progressions_course_progression_id_complete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostLmsCourseProgressionsCourseProgressionIdCompletePositiveResponse>, Integer, Hash)> post_lms_course_progressions_course_progression_id_complete_with_http_info(x_integration_id, course_progression_id, opts)

```ruby
begin
  # Complete course
  data, status_code, headers = api_instance.post_lms_course_progressions_course_progression_id_complete_with_http_info(x_integration_id, course_progression_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostLmsCourseProgressionsCourseProgressionIdCompletePositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedLMSAPIApi->post_lms_course_progressions_course_progression_id_complete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **course_progression_id** | **String** | The ID of the course progression in Kombo or its ID in the remote system by prefixing it with &#x60;remote:&#x60; (e.g., &#x60;remote:12312&#x60;) |  |
| **post_lms_course_progressions_course_progression_id_complete_request_body** | [**PostLmsCourseProgressionsCourseProgressionIdCompleteRequestBody**](PostLmsCourseProgressionsCourseProgressionIdCompleteRequestBody.md) | POST /lms/course-progressions/:course_progression_id/complete Request body | [optional] |

### Return type

[**PostLmsCourseProgressionsCourseProgressionIdCompletePositiveResponse**](PostLmsCourseProgressionsCourseProgressionIdCompletePositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_lms_courses

> <PostLmsCoursesPositiveResponse> post_lms_courses(x_integration_id, opts)

Create course

Create a new course in the LMS.  <Note>   This endpoint requires the permission **Create courses** to be enabled in [your scope config](/scopes). </Note>  ### Example Request Body  ```json {   \"course\": {     \"type\": \"EXTERNAL\",     \"title\": \"Building LMS integrations with Kombo\",     \"description\": \"Learn how to build and integrate Learning Management System (LMS) integrations with Kombo. This course covers the unified LMS API, course management, user enrollment, progress tracking, and best practices for building robust LMS connectors.\",     \"course_url\": \"https://docs.kombo.dev/lms/introduction\",     \"thumbnail_url\": \"https://kombo.dev/images/courses/lms-integrations-thumbnail.png\"   } } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedLMSAPIApi.new
x_integration_id = 'bombohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  post_lms_courses_request_body: Kombo::PostLmsCoursesRequestBody.new({course: Kombo::PostLmsCoursesRequestBodyCourse.new({type: 'EXTERNAL', title: 'title_example', course_url: 'course_url_example'})}) # PostLmsCoursesRequestBody | POST /lms/courses Request body
}

begin
  # Create course
  result = api_instance.post_lms_courses(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedLMSAPIApi->post_lms_courses: #{e}"
end
```

#### Using the post_lms_courses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostLmsCoursesPositiveResponse>, Integer, Hash)> post_lms_courses_with_http_info(x_integration_id, opts)

```ruby
begin
  # Create course
  data, status_code, headers = api_instance.post_lms_courses_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostLmsCoursesPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedLMSAPIApi->post_lms_courses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **post_lms_courses_request_body** | [**PostLmsCoursesRequestBody**](PostLmsCoursesRequestBody.md) | POST /lms/courses Request body | [optional] |

### Return type

[**PostLmsCoursesPositiveResponse**](PostLmsCoursesPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

