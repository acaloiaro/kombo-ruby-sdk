# Kombo::UnifiedHRISAPIApi

All URIs are relative to *https://api.kombo.dev/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_hris_absences_absence_id**](UnifiedHRISAPIApi.md#delete_hris_absences_absence_id) | **DELETE** /hris/absences/{absence_id} | Delete absence |
| [**delete_hris_employee_skill_assignments_employee_skill_assignment_id**](UnifiedHRISAPIApi.md#delete_hris_employee_skill_assignments_employee_skill_assignment_id) | **DELETE** /hris/employee-skill-assignments/{employee_skill_assignment_id} | Delete employee skill assignment |
| [**delete_hris_skills_skill_id**](UnifiedHRISAPIApi.md#delete_hris_skills_skill_id) | **DELETE** /hris/skills/{skill_id} | Delete skill |
| [**get_hris_absence_types**](UnifiedHRISAPIApi.md#get_hris_absence_types) | **GET** /hris/absence-types | Get absence types |
| [**get_hris_absences**](UnifiedHRISAPIApi.md#get_hris_absences) | **GET** /hris/absences | Get absences |
| [**get_hris_employee_document_categories**](UnifiedHRISAPIApi.md#get_hris_employee_document_categories) | **GET** /hris/employee-document-categories | Get employee document categories |
| [**get_hris_employee_skill_assignments**](UnifiedHRISAPIApi.md#get_hris_employee_skill_assignments) | **GET** /hris/employee-skill-assignments | Get employee skill assignments |
| [**get_hris_employees**](UnifiedHRISAPIApi.md#get_hris_employees) | **GET** /hris/employees | Get employees |
| [**get_hris_employees_form**](UnifiedHRISAPIApi.md#get_hris_employees_form) | **GET** /hris/employees/form | Get employee form |
| [**get_hris_employments**](UnifiedHRISAPIApi.md#get_hris_employments) | **GET** /hris/employments | Get employments |
| [**get_hris_groups**](UnifiedHRISAPIApi.md#get_hris_groups) | **GET** /hris/groups | Get groups |
| [**get_hris_job_positions**](UnifiedHRISAPIApi.md#get_hris_job_positions) | **GET** /hris/job-positions | Get job positions |
| [**get_hris_legal_entities**](UnifiedHRISAPIApi.md#get_hris_legal_entities) | **GET** /hris/legal-entities | Get legal entities |
| [**get_hris_locations**](UnifiedHRISAPIApi.md#get_hris_locations) | **GET** /hris/locations | Get work locations |
| [**get_hris_performance_review_cycles**](UnifiedHRISAPIApi.md#get_hris_performance_review_cycles) | **GET** /hris/performance-review-cycles | Get performance review cycles |
| [**get_hris_performance_reviews**](UnifiedHRISAPIApi.md#get_hris_performance_reviews) | **GET** /hris/performance-reviews | Get performance reviews |
| [**get_hris_skills**](UnifiedHRISAPIApi.md#get_hris_skills) | **GET** /hris/skills | Get skills |
| [**get_hris_teams**](UnifiedHRISAPIApi.md#get_hris_teams) | **GET** /hris/teams | Get teams (deprecated) |
| [**get_hris_time_off_balances**](UnifiedHRISAPIApi.md#get_hris_time_off_balances) | **GET** /hris/time-off-balances | Get time off balances |
| [**get_hris_timesheets**](UnifiedHRISAPIApi.md#get_hris_timesheets) | **GET** /hris/timesheets | Get timesheets |
| [**patch_hris_employee_skill_assignments_employee_skill_assignment_id**](UnifiedHRISAPIApi.md#patch_hris_employee_skill_assignments_employee_skill_assignment_id) | **PATCH** /hris/employee-skill-assignments/{employee_skill_assignment_id} | Update employee skill assignment |
| [**patch_hris_employees_employee_id**](UnifiedHRISAPIApi.md#patch_hris_employees_employee_id) | **PATCH** /hris/employees/{employee_id} | Update employee |
| [**patch_hris_skills_skill_id**](UnifiedHRISAPIApi.md#patch_hris_skills_skill_id) | **PATCH** /hris/skills/{skill_id} | Update skill |
| [**post_hris_absences**](UnifiedHRISAPIApi.md#post_hris_absences) | **POST** /hris/absences | Create absence |
| [**post_hris_employee_skill_assignments**](UnifiedHRISAPIApi.md#post_hris_employee_skill_assignments) | **POST** /hris/employee-skill-assignments | Create employee skill assignment |
| [**post_hris_employees**](UnifiedHRISAPIApi.md#post_hris_employees) | **POST** /hris/employees | [DEPRECATED] Create employee |
| [**post_hris_employees_employee_id_documents**](UnifiedHRISAPIApi.md#post_hris_employees_employee_id_documents) | **POST** /hris/employees/{employee_id}/documents | Add document to employee |
| [**post_hris_employees_form**](UnifiedHRISAPIApi.md#post_hris_employees_form) | **POST** /hris/employees/form | Create employee with form |
| [**post_hris_provisioning_groups_group_id_diff**](UnifiedHRISAPIApi.md#post_hris_provisioning_groups_group_id_diff) | **POST** /hris/provisioning-groups/{group_id}/diff | Get provisioning diff |
| [**post_hris_provisioning_groups_group_id_setup_links**](UnifiedHRISAPIApi.md#post_hris_provisioning_groups_group_id_setup_links) | **POST** /hris/provisioning-groups/{group_id}/setup-links | Create provisioning setup link |
| [**post_hris_skills**](UnifiedHRISAPIApi.md#post_hris_skills) | **POST** /hris/skills | Create skill |


## delete_hris_absences_absence_id

> <DeleteHrisAbsencesAbsenceIdPositiveResponse> delete_hris_absences_absence_id(x_integration_id, absence_id, opts)

Delete absence

Delete this absence.  <Note>   This endpoint requires the permission **Manage absences** to be enabled in [your scope config](/scopes). </Note>  ### Example Request Body  ```json {   \"absence_id\": \"wXJMxwDvPAjrJ4CyqdV9\" } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
absence_id = 'wXJMxwDvPAjrJ4CyqdV9' # String | The Kombo ID of the absence
opts = {
  delete_hris_absences_absence_id_request_body: Kombo::DeleteHrisAbsencesAbsenceIdRequestBody.new # DeleteHrisAbsencesAbsenceIdRequestBody | DELETE /hris/absences/:absence_id Request body
}

begin
  # Delete absence
  result = api_instance.delete_hris_absences_absence_id(x_integration_id, absence_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->delete_hris_absences_absence_id: #{e}"
end
```

#### Using the delete_hris_absences_absence_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteHrisAbsencesAbsenceIdPositiveResponse>, Integer, Hash)> delete_hris_absences_absence_id_with_http_info(x_integration_id, absence_id, opts)

```ruby
begin
  # Delete absence
  data, status_code, headers = api_instance.delete_hris_absences_absence_id_with_http_info(x_integration_id, absence_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteHrisAbsencesAbsenceIdPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->delete_hris_absences_absence_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **absence_id** | **String** | The Kombo ID of the absence |  |
| **delete_hris_absences_absence_id_request_body** | [**DeleteHrisAbsencesAbsenceIdRequestBody**](DeleteHrisAbsencesAbsenceIdRequestBody.md) | DELETE /hris/absences/:absence_id Request body | [optional] |

### Return type

[**DeleteHrisAbsencesAbsenceIdPositiveResponse**](DeleteHrisAbsencesAbsenceIdPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_hris_employee_skill_assignments_employee_skill_assignment_id

> <DeleteHrisEmployeeSkillAssignmentsEmployeeSkillAssignmentIdPositiveResponse> delete_hris_employee_skill_assignments_employee_skill_assignment_id(x_integration_id, employee_skill_assignment_id, opts)

Delete employee skill assignment

Delete employee skill assignment    <Warning>**Closed Beta Feature:** This endpoint is currently in closed beta. We're testing it with selected customers before its public release. If you're interested in learning more or getting early access, please reach out.</Warning>    Remove a skill assignment from an employee.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
employee_skill_assignment_id = 'employee_skill_assignment_id_example' # String | The ID of the employee skill assignment
opts = {
  body: { ... } # Object | DELETE /hris/employee-skill-assignments/:employee_skill_assignment_id Request body
}

begin
  # Delete employee skill assignment
  result = api_instance.delete_hris_employee_skill_assignments_employee_skill_assignment_id(x_integration_id, employee_skill_assignment_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->delete_hris_employee_skill_assignments_employee_skill_assignment_id: #{e}"
end
```

#### Using the delete_hris_employee_skill_assignments_employee_skill_assignment_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteHrisEmployeeSkillAssignmentsEmployeeSkillAssignmentIdPositiveResponse>, Integer, Hash)> delete_hris_employee_skill_assignments_employee_skill_assignment_id_with_http_info(x_integration_id, employee_skill_assignment_id, opts)

```ruby
begin
  # Delete employee skill assignment
  data, status_code, headers = api_instance.delete_hris_employee_skill_assignments_employee_skill_assignment_id_with_http_info(x_integration_id, employee_skill_assignment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteHrisEmployeeSkillAssignmentsEmployeeSkillAssignmentIdPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->delete_hris_employee_skill_assignments_employee_skill_assignment_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **employee_skill_assignment_id** | **String** | The ID of the employee skill assignment |  |
| **body** | **Object** | DELETE /hris/employee-skill-assignments/:employee_skill_assignment_id Request body | [optional] |

### Return type

[**DeleteHrisEmployeeSkillAssignmentsEmployeeSkillAssignmentIdPositiveResponse**](DeleteHrisEmployeeSkillAssignmentsEmployeeSkillAssignmentIdPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_hris_skills_skill_id

> <DeleteHrisSkillsSkillIdPositiveResponse> delete_hris_skills_skill_id(x_integration_id, skill_id, opts)

Delete skill

Delete skill    <Warning>**Closed Beta Feature:** This endpoint is currently in closed beta. We're testing it with selected customers before its public release. If you're interested in learning more or getting early access, please reach out.</Warning>    Delete a skill from the HRIS system.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
skill_id = 'skill_id_example' # String | The ID of the skill
opts = {
  body: { ... } # Object | DELETE /hris/skills/:skill_id Request body
}

begin
  # Delete skill
  result = api_instance.delete_hris_skills_skill_id(x_integration_id, skill_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->delete_hris_skills_skill_id: #{e}"
end
```

#### Using the delete_hris_skills_skill_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteHrisSkillsSkillIdPositiveResponse>, Integer, Hash)> delete_hris_skills_skill_id_with_http_info(x_integration_id, skill_id, opts)

```ruby
begin
  # Delete skill
  data, status_code, headers = api_instance.delete_hris_skills_skill_id_with_http_info(x_integration_id, skill_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteHrisSkillsSkillIdPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->delete_hris_skills_skill_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **skill_id** | **String** | The ID of the skill |  |
| **body** | **Object** | DELETE /hris/skills/:skill_id Request body | [optional] |

### Return type

[**DeleteHrisSkillsSkillIdPositiveResponse**](DeleteHrisSkillsSkillIdPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_hris_absence_types

> <GetHrisAbsenceTypesPositiveResponse> get_hris_absence_types(x_integration_id, opts)

Get absence types

Retrieve all absence types.  Top level filters use AND, while individual filters use OR if they accept multiple arguments. That means filters will be resolved like this: `(id IN ids) AND (remote_id IN remote_ids)`

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  updated_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter the entries based on the modification date in format `YYYY-MM-DDTHH:mm:ss.sssZ`. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record's own `changed_at` field remains unchanged.  If you want to track entry deletion, also set the `include_deleted=true` query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior).
  include_deleted: Kombo::GetHrisAbsenceTypesParameterIncludeDeleted::TRUE, # GetHrisAbsenceTypesParameterIncludeDeleted | By default, deleted entries are not returned. Use the `include_deleted` query param to include deleted entries too.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example' # String | Filter by a comma-separated list of remote IDs.
}

begin
  # Get absence types
  result = api_instance.get_hris_absence_types(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_absence_types: #{e}"
end
```

#### Using the get_hris_absence_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHrisAbsenceTypesPositiveResponse>, Integer, Hash)> get_hris_absence_types_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get absence types
  data, status_code, headers = api_instance.get_hris_absence_types_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHrisAbsenceTypesPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_absence_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **updated_after** | **Time** | Filter the entries based on the modification date in format &#x60;YYYY-MM-DDTHH:mm:ss.sssZ&#x60;. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record&#39;s own &#x60;changed_at&#x60; field remains unchanged.  If you want to track entry deletion, also set the &#x60;include_deleted&#x3D;true&#x60; query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior). | [optional] |
| **include_deleted** | [**GetHrisAbsenceTypesParameterIncludeDeleted**](.md) | By default, deleted entries are not returned. Use the &#x60;include_deleted&#x60; query param to include deleted entries too. | [optional][default to &#39;false&#39;] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |

### Return type

[**GetHrisAbsenceTypesPositiveResponse**](GetHrisAbsenceTypesPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_hris_absences

> <GetHrisAbsencesPositiveResponse> get_hris_absences(x_integration_id, opts)

Get absences

Retrieve all absences.  Top level filters use AND, while individual filters use OR if they accept multiple arguments. That means filters will be resolved like this: `(id IN ids) AND (remote_id IN remote_ids)`

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  updated_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter the entries based on the modification date in format `YYYY-MM-DDTHH:mm:ss.sssZ`. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record's own `changed_at` field remains unchanged.  If you want to track entry deletion, also set the `include_deleted=true` query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior).
  include_deleted: Kombo::GetHrisAbsencesParameterIncludeDeleted::TRUE, # GetHrisAbsencesParameterIncludeDeleted | By default, deleted entries are not returned. Use the `include_deleted` query param to include deleted entries too.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example', # String | Filter by a comma-separated list of remote IDs.
  date_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter for all the absences that either start _or_ haven't ended yet on/after this day. If you imagine a calendar displaying absences, this defines the left-most visible day. This is a plain date (i.e., `yyyy-MM-dd`), all time information is discarded.
  date_until: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter for absences that start on or before this day (but might continue after). If you imagine a calendar displaying absences, this defines the right-most visible day. This is a plain date (i.e., `yyyy-MM-dd`), all time information is discarded.
  type_ids: 'type_ids_example', # String | Filter by a comma-separated list of absence type IDs.
  employee_id: 'employee_id_example', # String | Filter by a specific employee using their ID.
  time_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | **(⚠️ Deprecated - Use the `date_from` filter instead.)** Filter for absences that either start after or start before and end after a certain time.
  time_until: Time.parse('2013-10-20T19:20:30+01:00') # Time | **(⚠️ Deprecated - Use the `date_until` filter instead.)** Filter for absences that start before a certain time.
}

begin
  # Get absences
  result = api_instance.get_hris_absences(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_absences: #{e}"
end
```

#### Using the get_hris_absences_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHrisAbsencesPositiveResponse>, Integer, Hash)> get_hris_absences_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get absences
  data, status_code, headers = api_instance.get_hris_absences_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHrisAbsencesPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_absences_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **updated_after** | **Time** | Filter the entries based on the modification date in format &#x60;YYYY-MM-DDTHH:mm:ss.sssZ&#x60;. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record&#39;s own &#x60;changed_at&#x60; field remains unchanged.  If you want to track entry deletion, also set the &#x60;include_deleted&#x3D;true&#x60; query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior). | [optional] |
| **include_deleted** | [**GetHrisAbsencesParameterIncludeDeleted**](.md) | By default, deleted entries are not returned. Use the &#x60;include_deleted&#x60; query param to include deleted entries too. | [optional][default to &#39;false&#39;] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |
| **date_from** | **Time** | Filter for all the absences that either start _or_ haven&#39;t ended yet on/after this day. If you imagine a calendar displaying absences, this defines the left-most visible day. This is a plain date (i.e., &#x60;yyyy-MM-dd&#x60;), all time information is discarded. | [optional] |
| **date_until** | **Time** | Filter for absences that start on or before this day (but might continue after). If you imagine a calendar displaying absences, this defines the right-most visible day. This is a plain date (i.e., &#x60;yyyy-MM-dd&#x60;), all time information is discarded. | [optional] |
| **type_ids** | **String** | Filter by a comma-separated list of absence type IDs. | [optional] |
| **employee_id** | **String** | Filter by a specific employee using their ID. | [optional] |
| **time_from** | **Time** | **(⚠️ Deprecated - Use the &#x60;date_from&#x60; filter instead.)** Filter for absences that either start after or start before and end after a certain time. | [optional] |
| **time_until** | **Time** | **(⚠️ Deprecated - Use the &#x60;date_until&#x60; filter instead.)** Filter for absences that start before a certain time. | [optional] |

### Return type

[**GetHrisAbsencesPositiveResponse**](GetHrisAbsencesPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_hris_employee_document_categories

> <GetHrisEmployeeDocumentCategoriesPositiveResponse> get_hris_employee_document_categories(x_integration_id, opts)

Get employee document categories

Get employee document categories.  Top level filters use AND, while individual filters use OR if they accept multiple arguments. That means filters will be resolved like this: `(id IN ids) AND (remote_id IN remote_ids)`

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  updated_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter the entries based on the modification date in format `YYYY-MM-DDTHH:mm:ss.sssZ`. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record's own `changed_at` field remains unchanged.  If you want to track entry deletion, also set the `include_deleted=true` query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior).
  include_deleted: Kombo::GetHrisEmployeeDocumentCategoriesParameterIncludeDeleted::TRUE, # GetHrisEmployeeDocumentCategoriesParameterIncludeDeleted | By default, deleted entries are not returned. Use the `include_deleted` query param to include deleted entries too.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example' # String | Filter by a comma-separated list of remote IDs.
}

begin
  # Get employee document categories
  result = api_instance.get_hris_employee_document_categories(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_employee_document_categories: #{e}"
end
```

#### Using the get_hris_employee_document_categories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHrisEmployeeDocumentCategoriesPositiveResponse>, Integer, Hash)> get_hris_employee_document_categories_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get employee document categories
  data, status_code, headers = api_instance.get_hris_employee_document_categories_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHrisEmployeeDocumentCategoriesPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_employee_document_categories_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **updated_after** | **Time** | Filter the entries based on the modification date in format &#x60;YYYY-MM-DDTHH:mm:ss.sssZ&#x60;. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record&#39;s own &#x60;changed_at&#x60; field remains unchanged.  If you want to track entry deletion, also set the &#x60;include_deleted&#x3D;true&#x60; query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior). | [optional] |
| **include_deleted** | [**GetHrisEmployeeDocumentCategoriesParameterIncludeDeleted**](.md) | By default, deleted entries are not returned. Use the &#x60;include_deleted&#x60; query param to include deleted entries too. | [optional][default to &#39;false&#39;] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |

### Return type

[**GetHrisEmployeeDocumentCategoriesPositiveResponse**](GetHrisEmployeeDocumentCategoriesPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_hris_employee_skill_assignments

> <GetHrisEmployeeSkillAssignmentsPositiveResponse> get_hris_employee_skill_assignments(x_integration_id, opts)

Get employee skill assignments

Get employee skill assignments    <Warning>**Closed Beta Feature:** This endpoint is currently in closed beta. We're testing it with selected customers before its public release. If you're interested in learning more or getting early access, please reach out.</Warning>    Retrieve all employee skill assignments. These represent the skills that employees possess and their current proficiency levels.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example', # String | Filter by a comma-separated list of remote IDs.
  employee_ids: 'employee_ids_example', # String | Filter by a comma-separated list of employee IDs.
  skill_ids: 'skill_ids_example' # String | Filter by a comma-separated list of skill IDs.
}

begin
  # Get employee skill assignments
  result = api_instance.get_hris_employee_skill_assignments(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_employee_skill_assignments: #{e}"
end
```

#### Using the get_hris_employee_skill_assignments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHrisEmployeeSkillAssignmentsPositiveResponse>, Integer, Hash)> get_hris_employee_skill_assignments_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get employee skill assignments
  data, status_code, headers = api_instance.get_hris_employee_skill_assignments_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHrisEmployeeSkillAssignmentsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_employee_skill_assignments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |
| **employee_ids** | **String** | Filter by a comma-separated list of employee IDs. | [optional] |
| **skill_ids** | **String** | Filter by a comma-separated list of skill IDs. | [optional] |

### Return type

[**GetHrisEmployeeSkillAssignmentsPositiveResponse**](GetHrisEmployeeSkillAssignmentsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_hris_employees

> <GetHrisEmployeesPositiveResponse> get_hris_employees(x_integration_id, opts)

Get employees

Retrieve all employees.  <Note>Not interested in most fields? You can use our [our Scopes feature](/scopes) to customize what data points are synced.</Note>  Top level filters use AND, while individual filters use OR if they accept multiple arguments. That means filters will be resolved like this: `(id IN ids) AND (remote_id IN remote_ids)`

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  updated_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter the entries based on the modification date in format `YYYY-MM-DDTHH:mm:ss.sssZ`. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record's own `changed_at` field remains unchanged.  If you want to track entry deletion, also set the `include_deleted=true` query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior).
  include_deleted: Kombo::GetHrisEmployeesParameterIncludeDeleted::TRUE, # GetHrisEmployeesParameterIncludeDeleted | By default, deleted entries are not returned. Use the `include_deleted` query param to include deleted entries too.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example', # String | Filter by a comma-separated list of remote IDs.
  employment_status: Kombo::GetHrisEmployeesParameterEmploymentStatus::ACTIVE, # GetHrisEmployeesParameterEmploymentStatus | **(⚠️ Deprecated - Use the `employment_statuses` filter instead.)** Filter by the `employment_status` field.
  employment_statuses: 'employment_statuses_example', # String | Filter by a comma-separated list of `ACTIVE`, `PENDING`, `INACTIVE`, `LEAVE`  * `ACTIVE`: the employee is **actively employed**  * `PENDING`: the employee is **not actively employed yet** (but they signed their contract or are part of an onboarding process)  * `INACTIVE`: a full-time employee is no longer employed, or, for a contract worker when their contract runs out  * `LEAVE`: the employee is still employed but **currently on leave** (note that not all HR systems support this status — use our absences API for detailed information)     Leave this blank to get results matching all values.
  group_ids: 'group_ids_example', # String | Filter by a comma-separated list of group IDs. We will only return employees that are members of _any_ of the groups.
  legal_entity_ids: 'legal_entity_ids_example', # String | Filter by a comma-separated list of legal entity IDs. We will only return employees that are members of _any_ of the legal entities.
  work_location_ids: 'work_location_ids_example', # String | Filter by a comma-separated list of work location IDs. We will only return employees who are at _any_ of the work locations.
  work_emails: 'work_emails_example', # String | Filter by a comma-separated list of work emails. We will only return employees who have _any_ of the work emails. The format of the emails is case-insensitive.
  personal_emails: 'personal_emails_example', # String | Filter by a comma-separated list of personal emails. We will only return employees who have _any_ of the personal emails. The format of the emails is case-insensitive.
  custom_fields: 'custom_fields_example' # String | A JSON string with a single key-value pair like {\"fieldKey\":\"fieldValue\"} to filter employees by a specific custom field value. Note that the value must be a string, number, boolean or null and the key must be a valid custom field key. Custom fields with a value of type array or object are not supported.
}

begin
  # Get employees
  result = api_instance.get_hris_employees(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_employees: #{e}"
end
```

#### Using the get_hris_employees_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHrisEmployeesPositiveResponse>, Integer, Hash)> get_hris_employees_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get employees
  data, status_code, headers = api_instance.get_hris_employees_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHrisEmployeesPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_employees_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **updated_after** | **Time** | Filter the entries based on the modification date in format &#x60;YYYY-MM-DDTHH:mm:ss.sssZ&#x60;. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record&#39;s own &#x60;changed_at&#x60; field remains unchanged.  If you want to track entry deletion, also set the &#x60;include_deleted&#x3D;true&#x60; query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior). | [optional] |
| **include_deleted** | [**GetHrisEmployeesParameterIncludeDeleted**](.md) | By default, deleted entries are not returned. Use the &#x60;include_deleted&#x60; query param to include deleted entries too. | [optional][default to &#39;false&#39;] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |
| **employment_status** | [**GetHrisEmployeesParameterEmploymentStatus**](.md) | **(⚠️ Deprecated - Use the &#x60;employment_statuses&#x60; filter instead.)** Filter by the &#x60;employment_status&#x60; field. | [optional] |
| **employment_statuses** | **String** | Filter by a comma-separated list of &#x60;ACTIVE&#x60;, &#x60;PENDING&#x60;, &#x60;INACTIVE&#x60;, &#x60;LEAVE&#x60;  * &#x60;ACTIVE&#x60;: the employee is **actively employed**  * &#x60;PENDING&#x60;: the employee is **not actively employed yet** (but they signed their contract or are part of an onboarding process)  * &#x60;INACTIVE&#x60;: a full-time employee is no longer employed, or, for a contract worker when their contract runs out  * &#x60;LEAVE&#x60;: the employee is still employed but **currently on leave** (note that not all HR systems support this status — use our absences API for detailed information)     Leave this blank to get results matching all values. | [optional] |
| **group_ids** | **String** | Filter by a comma-separated list of group IDs. We will only return employees that are members of _any_ of the groups. | [optional] |
| **legal_entity_ids** | **String** | Filter by a comma-separated list of legal entity IDs. We will only return employees that are members of _any_ of the legal entities. | [optional] |
| **work_location_ids** | **String** | Filter by a comma-separated list of work location IDs. We will only return employees who are at _any_ of the work locations. | [optional] |
| **work_emails** | **String** | Filter by a comma-separated list of work emails. We will only return employees who have _any_ of the work emails. The format of the emails is case-insensitive. | [optional] |
| **personal_emails** | **String** | Filter by a comma-separated list of personal emails. We will only return employees who have _any_ of the personal emails. The format of the emails is case-insensitive. | [optional] |
| **custom_fields** | **String** | A JSON string with a single key-value pair like {\&quot;fieldKey\&quot;:\&quot;fieldValue\&quot;} to filter employees by a specific custom field value. Note that the value must be a string, number, boolean or null and the key must be a valid custom field key. Custom fields with a value of type array or object are not supported. | [optional] |

### Return type

[**GetHrisEmployeesPositiveResponse**](GetHrisEmployeesPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_hris_employees_form

> <GetHrisEmployeesFormPositiveResponse> get_hris_employees_form(x_integration_id)

Get employee form

Get the form for creating an employee. This form can be rendered dynamically on your frontend to allow your customers to create employees in their HRIS.  Follow our [create employee guide here](/hris/features/create-employee) to learn how this form is generated and how you can use it.  ### Example Form ```json {   \"properties\": {     \"firstName\": {       \"type\": \"text\",       \"label\": \"First Name\",       \"required\": true,       \"description\": \"Employee's first name\",       \"unified_key\": \"first_name\",       \"min_length\": 1,       \"max_length\": 100     },     \"startDate\": {       \"type\": \"date\",       \"label\": \"Start Date\",       \"required\": true,       \"description\": \"Employee's start date\",       \"unified_key\": \"start_date\"     },     \"workLocation\": {       \"type\": \"object\",       \"label\": \"Work Location\",       \"required\": false,       \"description\": \"Employee's work location\",       \"unified_key\": null,       \"properties\": {         \"site\": {           \"type\": \"single_select\",           \"label\": \"Site\",           \"required\": true,           \"description\": \"Employee's site\",           \"unified_key\": null,           \"options\": {             \"type\": \"inline\",             \"entries\": [               {                 \"label\": \"Site 1\",                 \"id\": \"FXrER44xubBqA9DLgZ3PFNNx\",                 \"unified_value\": \"1\",                 \"remote_id\": \"site_1\"               },               {                 \"label\": \"Site 2\",                 \"id\": \"2rv75UKT2XBoQXsUb9agiTUm\",                 \"unified_value\": \"2\",                 \"remote_id\": \"site_2\"               }             ]           }         },         \"keyNumbers\": {           \"type\": \"array\",           \"label\": \"Key Numbers\",           \"required\": false,           \"description\": \"Employee's key numbers\",           \"unified_key\": null,           \"min_items\": 2,           \"max_items\": 5,           \"item_type\": {             \"type\": \"number\",             \"label\": \"Key Number\",             \"required\": false,             \"description\": \"The number of the keys which belong to the employee\",             \"unified_key\": null,             \"min\": 0,             \"max\": 99           }         }       }     }   } } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.

begin
  # Get employee form
  result = api_instance.get_hris_employees_form(x_integration_id)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_employees_form: #{e}"
end
```

#### Using the get_hris_employees_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHrisEmployeesFormPositiveResponse>, Integer, Hash)> get_hris_employees_form_with_http_info(x_integration_id)

```ruby
begin
  # Get employee form
  data, status_code, headers = api_instance.get_hris_employees_form_with_http_info(x_integration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHrisEmployeesFormPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_employees_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |

### Return type

[**GetHrisEmployeesFormPositiveResponse**](GetHrisEmployeesFormPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_hris_employments

> <GetHrisEmploymentsPositiveResponse> get_hris_employments(x_integration_id, opts)

Get employments

Retrieve all employments.  Top level filters use AND, while individual filters use OR if they accept multiple arguments. That means filters will be resolved like this: `(id IN ids) AND (remote_id IN remote_ids)`

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  updated_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter the entries based on the modification date in format `YYYY-MM-DDTHH:mm:ss.sssZ`. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record's own `changed_at` field remains unchanged.  If you want to track entry deletion, also set the `include_deleted=true` query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior).
  include_deleted: Kombo::GetHrisEmploymentsParameterIncludeDeleted::TRUE, # GetHrisEmploymentsParameterIncludeDeleted | By default, deleted entries are not returned. Use the `include_deleted` query param to include deleted entries too.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example' # String | Filter by a comma-separated list of remote IDs.
}

begin
  # Get employments
  result = api_instance.get_hris_employments(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_employments: #{e}"
end
```

#### Using the get_hris_employments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHrisEmploymentsPositiveResponse>, Integer, Hash)> get_hris_employments_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get employments
  data, status_code, headers = api_instance.get_hris_employments_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHrisEmploymentsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_employments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **updated_after** | **Time** | Filter the entries based on the modification date in format &#x60;YYYY-MM-DDTHH:mm:ss.sssZ&#x60;. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record&#39;s own &#x60;changed_at&#x60; field remains unchanged.  If you want to track entry deletion, also set the &#x60;include_deleted&#x3D;true&#x60; query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior). | [optional] |
| **include_deleted** | [**GetHrisEmploymentsParameterIncludeDeleted**](.md) | By default, deleted entries are not returned. Use the &#x60;include_deleted&#x60; query param to include deleted entries too. | [optional][default to &#39;false&#39;] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |

### Return type

[**GetHrisEmploymentsPositiveResponse**](GetHrisEmploymentsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_hris_groups

> <GetHrisGroupsPositiveResponse> get_hris_groups(x_integration_id, opts)

Get groups

Retrieve all \"groups\" (teams, departments, and cost centers).  Top level filters use AND, while individual filters use OR if they accept multiple arguments. That means filters will be resolved like this: `(id IN ids) AND (remote_id IN remote_ids)`

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  updated_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter the entries based on the modification date in format `YYYY-MM-DDTHH:mm:ss.sssZ`. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record's own `changed_at` field remains unchanged.  If you want to track entry deletion, also set the `include_deleted=true` query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior).
  include_deleted: Kombo::GetHrisGroupsParameterIncludeDeleted::TRUE, # GetHrisGroupsParameterIncludeDeleted | By default, deleted entries are not returned. Use the `include_deleted` query param to include deleted entries too.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example', # String | Filter by a comma-separated list of remote IDs.
  types: 'types_example', # String | Filter by a comma-separated list of group types: `DEPARTMENT`, `TEAM`, `COST_CENTER`, or `null` to filter groups without a type.   Leave this blank to get results matching all values.
  name_contains: 'name_contains_example' # String | Filter by the `name` field. Can be used to find a group by keywords present in the group name.
}

begin
  # Get groups
  result = api_instance.get_hris_groups(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_groups: #{e}"
end
```

#### Using the get_hris_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHrisGroupsPositiveResponse>, Integer, Hash)> get_hris_groups_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get groups
  data, status_code, headers = api_instance.get_hris_groups_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHrisGroupsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **updated_after** | **Time** | Filter the entries based on the modification date in format &#x60;YYYY-MM-DDTHH:mm:ss.sssZ&#x60;. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record&#39;s own &#x60;changed_at&#x60; field remains unchanged.  If you want to track entry deletion, also set the &#x60;include_deleted&#x3D;true&#x60; query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior). | [optional] |
| **include_deleted** | [**GetHrisGroupsParameterIncludeDeleted**](.md) | By default, deleted entries are not returned. Use the &#x60;include_deleted&#x60; query param to include deleted entries too. | [optional][default to &#39;false&#39;] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |
| **types** | **String** | Filter by a comma-separated list of group types: &#x60;DEPARTMENT&#x60;, &#x60;TEAM&#x60;, &#x60;COST_CENTER&#x60;, or &#x60;null&#x60; to filter groups without a type.   Leave this blank to get results matching all values. | [optional] |
| **name_contains** | **String** | Filter by the &#x60;name&#x60; field. Can be used to find a group by keywords present in the group name. | [optional] |

### Return type

[**GetHrisGroupsPositiveResponse**](GetHrisGroupsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_hris_job_positions

> <GetHrisJobPositionsPositiveResponse> get_hris_job_positions(x_integration_id, opts)

Get job positions

Get job positions    <Warning>**Closed Beta Feature:** This endpoint is currently in closed beta. We're testing it with selected customers before its public release. If you're interested in learning more or getting early access, please reach out.</Warning>    Retrieve all job positions from the HRIS system. Job positions represent the organizational structure and include information about required skills, department, location, and reporting relationships.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example' # String | Filter by a comma-separated list of remote IDs.
}

begin
  # Get job positions
  result = api_instance.get_hris_job_positions(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_job_positions: #{e}"
end
```

#### Using the get_hris_job_positions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHrisJobPositionsPositiveResponse>, Integer, Hash)> get_hris_job_positions_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get job positions
  data, status_code, headers = api_instance.get_hris_job_positions_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHrisJobPositionsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_job_positions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |

### Return type

[**GetHrisJobPositionsPositiveResponse**](GetHrisJobPositionsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_hris_legal_entities

> <GetHrisLegalEntitiesPositiveResponse> get_hris_legal_entities(x_integration_id, opts)

Get legal entities

Retrieve all legal entites.  Top level filters use AND, while individual filters use OR if they accept multiple arguments. That means filters will be resolved like this: `(id IN ids) AND (remote_id IN remote_ids)`

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  updated_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter the entries based on the modification date in format `YYYY-MM-DDTHH:mm:ss.sssZ`. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record's own `changed_at` field remains unchanged.  If you want to track entry deletion, also set the `include_deleted=true` query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior).
  include_deleted: Kombo::GetHrisLegalEntitiesParameterIncludeDeleted::TRUE, # GetHrisLegalEntitiesParameterIncludeDeleted | By default, deleted entries are not returned. Use the `include_deleted` query param to include deleted entries too.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example', # String | Filter by a comma-separated list of remote IDs.
  name_contains: 'name_contains_example' # String | Filter by the `name` field. Can be used to find a legal entity by keywords present in the legal entity name.
}

begin
  # Get legal entities
  result = api_instance.get_hris_legal_entities(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_legal_entities: #{e}"
end
```

#### Using the get_hris_legal_entities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHrisLegalEntitiesPositiveResponse>, Integer, Hash)> get_hris_legal_entities_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get legal entities
  data, status_code, headers = api_instance.get_hris_legal_entities_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHrisLegalEntitiesPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_legal_entities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **updated_after** | **Time** | Filter the entries based on the modification date in format &#x60;YYYY-MM-DDTHH:mm:ss.sssZ&#x60;. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record&#39;s own &#x60;changed_at&#x60; field remains unchanged.  If you want to track entry deletion, also set the &#x60;include_deleted&#x3D;true&#x60; query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior). | [optional] |
| **include_deleted** | [**GetHrisLegalEntitiesParameterIncludeDeleted**](.md) | By default, deleted entries are not returned. Use the &#x60;include_deleted&#x60; query param to include deleted entries too. | [optional][default to &#39;false&#39;] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |
| **name_contains** | **String** | Filter by the &#x60;name&#x60; field. Can be used to find a legal entity by keywords present in the legal entity name. | [optional] |

### Return type

[**GetHrisLegalEntitiesPositiveResponse**](GetHrisLegalEntitiesPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_hris_locations

> <GetHrisLocationsPositiveResponse> get_hris_locations(x_integration_id, opts)

Get work locations

Retrieve all work locations.  Top level filters use AND, while individual filters use OR if they accept multiple arguments. That means filters will be resolved like this: `(id IN ids) AND (remote_id IN remote_ids)`

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  updated_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter the entries based on the modification date in format `YYYY-MM-DDTHH:mm:ss.sssZ`. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record's own `changed_at` field remains unchanged.  If you want to track entry deletion, also set the `include_deleted=true` query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior).
  include_deleted: Kombo::GetHrisLocationsParameterIncludeDeleted::TRUE, # GetHrisLocationsParameterIncludeDeleted | By default, deleted entries are not returned. Use the `include_deleted` query param to include deleted entries too.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example', # String | Filter by a comma-separated list of remote IDs.
  name_contains: 'name_contains_example' # String | Filter by the `name` field. Can be used to find a location by keywords present in the location name.
}

begin
  # Get work locations
  result = api_instance.get_hris_locations(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_locations: #{e}"
end
```

#### Using the get_hris_locations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHrisLocationsPositiveResponse>, Integer, Hash)> get_hris_locations_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get work locations
  data, status_code, headers = api_instance.get_hris_locations_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHrisLocationsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_locations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **updated_after** | **Time** | Filter the entries based on the modification date in format &#x60;YYYY-MM-DDTHH:mm:ss.sssZ&#x60;. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record&#39;s own &#x60;changed_at&#x60; field remains unchanged.  If you want to track entry deletion, also set the &#x60;include_deleted&#x3D;true&#x60; query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior). | [optional] |
| **include_deleted** | [**GetHrisLocationsParameterIncludeDeleted**](.md) | By default, deleted entries are not returned. Use the &#x60;include_deleted&#x60; query param to include deleted entries too. | [optional][default to &#39;false&#39;] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |
| **name_contains** | **String** | Filter by the &#x60;name&#x60; field. Can be used to find a location by keywords present in the location name. | [optional] |

### Return type

[**GetHrisLocationsPositiveResponse**](GetHrisLocationsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_hris_performance_review_cycles

> <GetHrisPerformanceReviewCyclesPositiveResponse> get_hris_performance_review_cycles(x_integration_id, opts)

Get performance review cycles

Get performance review cycles  Retrieve performance review cycles data from HRIS tools.  <Warning>**Open Beta Feature:** This endpoint is currently in beta. Please reach out to our support team if you need assistance with implementation.</Warning>    Top level filters use AND, while individual filters use OR if they accept multiple arguments. That means filters will be resolved like this: `(id IN ids) AND (remote_id IN remote_ids)`

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  updated_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter the entries based on the modification date in format `YYYY-MM-DDTHH:mm:ss.sssZ`. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record's own `changed_at` field remains unchanged.  If you want to track entry deletion, also set the `include_deleted=true` query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior).
  include_deleted: Kombo::GetHrisPerformanceReviewCyclesParameterIncludeDeleted::TRUE, # GetHrisPerformanceReviewCyclesParameterIncludeDeleted | By default, deleted entries are not returned. Use the `include_deleted` query param to include deleted entries too.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example' # String | Filter by a comma-separated list of remote IDs.
}

begin
  # Get performance review cycles
  result = api_instance.get_hris_performance_review_cycles(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_performance_review_cycles: #{e}"
end
```

#### Using the get_hris_performance_review_cycles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHrisPerformanceReviewCyclesPositiveResponse>, Integer, Hash)> get_hris_performance_review_cycles_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get performance review cycles
  data, status_code, headers = api_instance.get_hris_performance_review_cycles_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHrisPerformanceReviewCyclesPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_performance_review_cycles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **updated_after** | **Time** | Filter the entries based on the modification date in format &#x60;YYYY-MM-DDTHH:mm:ss.sssZ&#x60;. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record&#39;s own &#x60;changed_at&#x60; field remains unchanged.  If you want to track entry deletion, also set the &#x60;include_deleted&#x3D;true&#x60; query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior). | [optional] |
| **include_deleted** | [**GetHrisPerformanceReviewCyclesParameterIncludeDeleted**](.md) | By default, deleted entries are not returned. Use the &#x60;include_deleted&#x60; query param to include deleted entries too. | [optional][default to &#39;false&#39;] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |

### Return type

[**GetHrisPerformanceReviewCyclesPositiveResponse**](GetHrisPerformanceReviewCyclesPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_hris_performance_reviews

> <GetHrisPerformanceReviewsPositiveResponse> get_hris_performance_reviews(x_integration_id, opts)

Get performance reviews

Get performance reviews  Retrieve performance review data from HRIS tools.  <Warning>**Open Beta Feature:** This endpoint is currently in beta. Please reach out to our support team if you need assistance with implementation.</Warning>    Top level filters use AND, while individual filters use OR if they accept multiple arguments. That means filters will be resolved like this: `(id IN ids) AND (remote_id IN remote_ids)`

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  updated_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter the entries based on the modification date in format `YYYY-MM-DDTHH:mm:ss.sssZ`. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record's own `changed_at` field remains unchanged.  If you want to track entry deletion, also set the `include_deleted=true` query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior).
  include_deleted: Kombo::GetHrisPerformanceReviewsParameterIncludeDeleted::TRUE, # GetHrisPerformanceReviewsParameterIncludeDeleted | By default, deleted entries are not returned. Use the `include_deleted` query param to include deleted entries too.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example', # String | Filter by a comma-separated list of remote IDs.
  types: 'types_example', # String | Filter by a comma-separated list of `MANAGER`, `DIRECT_REPORT`, `PEER`, `SELF`    Leave this blank to get results matching all values.
  review_cycle_ids: 'review_cycle_ids_example', # String | Filter by a comma-separated list of review cycle IDs.
  reviewee_ids: 'reviewee_ids_example' # String | Filter by a comma-separated list of reviewee IDs.
}

begin
  # Get performance reviews
  result = api_instance.get_hris_performance_reviews(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_performance_reviews: #{e}"
end
```

#### Using the get_hris_performance_reviews_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHrisPerformanceReviewsPositiveResponse>, Integer, Hash)> get_hris_performance_reviews_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get performance reviews
  data, status_code, headers = api_instance.get_hris_performance_reviews_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHrisPerformanceReviewsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_performance_reviews_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **updated_after** | **Time** | Filter the entries based on the modification date in format &#x60;YYYY-MM-DDTHH:mm:ss.sssZ&#x60;. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record&#39;s own &#x60;changed_at&#x60; field remains unchanged.  If you want to track entry deletion, also set the &#x60;include_deleted&#x3D;true&#x60; query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior). | [optional] |
| **include_deleted** | [**GetHrisPerformanceReviewsParameterIncludeDeleted**](.md) | By default, deleted entries are not returned. Use the &#x60;include_deleted&#x60; query param to include deleted entries too. | [optional][default to &#39;false&#39;] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |
| **types** | **String** | Filter by a comma-separated list of &#x60;MANAGER&#x60;, &#x60;DIRECT_REPORT&#x60;, &#x60;PEER&#x60;, &#x60;SELF&#x60;    Leave this blank to get results matching all values. | [optional] |
| **review_cycle_ids** | **String** | Filter by a comma-separated list of review cycle IDs. | [optional] |
| **reviewee_ids** | **String** | Filter by a comma-separated list of reviewee IDs. | [optional] |

### Return type

[**GetHrisPerformanceReviewsPositiveResponse**](GetHrisPerformanceReviewsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_hris_skills

> <GetHrisSkillsPositiveResponse> get_hris_skills(x_integration_id, opts)

Get skills

Get skills    <Warning>**Closed Beta Feature:** This endpoint is currently in closed beta. We're testing it with selected customers before its public release. If you're interested in learning more or getting early access, please reach out.</Warning>    Retrieve all skills available in the HRIS system. Skills are available on employees and job positions.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example', # String | Filter by a comma-separated list of remote IDs.
  name_contains: 'name_contains_example' # String | Filter by the `name` field. Can be used to find a skills by keywords present in the skill name.
}

begin
  # Get skills
  result = api_instance.get_hris_skills(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_skills: #{e}"
end
```

#### Using the get_hris_skills_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHrisSkillsPositiveResponse>, Integer, Hash)> get_hris_skills_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get skills
  data, status_code, headers = api_instance.get_hris_skills_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHrisSkillsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_skills_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |
| **name_contains** | **String** | Filter by the &#x60;name&#x60; field. Can be used to find a skills by keywords present in the skill name. | [optional] |

### Return type

[**GetHrisSkillsPositiveResponse**](GetHrisSkillsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_hris_teams

> <GetHrisTeamsPositiveResponse> get_hris_teams(x_integration_id, opts)

Get teams (deprecated)

Get the teams.  <Warning>   **This endpoint is deprecated!**    Please use [the `/groups` endpoint](/hris/v1/get-groups) instead. It returns the same data but the naming makes more sense as the model not only includes teams but also departments and cost centers.. </Warning>  Top level filters use AND, while individual filters use OR if they accept multiple arguments. That means filters will be resolved like this: `(id IN ids) AND (remote_id IN remote_ids)`

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  updated_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter the entries based on the modification date in format `YYYY-MM-DDTHH:mm:ss.sssZ`. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record's own `changed_at` field remains unchanged.  If you want to track entry deletion, also set the `include_deleted=true` query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior).
  include_deleted: Kombo::GetHrisTeamsParameterIncludeDeleted::TRUE, # GetHrisTeamsParameterIncludeDeleted | By default, deleted entries are not returned. Use the `include_deleted` query param to include deleted entries too.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example' # String | Filter by a comma-separated list of remote IDs.
}

begin
  # Get teams (deprecated)
  result = api_instance.get_hris_teams(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_teams: #{e}"
end
```

#### Using the get_hris_teams_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHrisTeamsPositiveResponse>, Integer, Hash)> get_hris_teams_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get teams (deprecated)
  data, status_code, headers = api_instance.get_hris_teams_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHrisTeamsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_teams_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **updated_after** | **Time** | Filter the entries based on the modification date in format &#x60;YYYY-MM-DDTHH:mm:ss.sssZ&#x60;. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record&#39;s own &#x60;changed_at&#x60; field remains unchanged.  If you want to track entry deletion, also set the &#x60;include_deleted&#x3D;true&#x60; query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior). | [optional] |
| **include_deleted** | [**GetHrisTeamsParameterIncludeDeleted**](.md) | By default, deleted entries are not returned. Use the &#x60;include_deleted&#x60; query param to include deleted entries too. | [optional][default to &#39;false&#39;] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |

### Return type

[**GetHrisTeamsPositiveResponse**](GetHrisTeamsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_hris_time_off_balances

> <GetHrisTimeOffBalancesPositiveResponse> get_hris_time_off_balances(x_integration_id, opts)

Get time off balances

Retrieve all time off balances.  Top level filters use AND, while individual filters use OR if they accept multiple arguments. That means filters will be resolved like this: `(id IN ids) AND (remote_id IN remote_ids)`

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  updated_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter the entries based on the modification date in format `YYYY-MM-DDTHH:mm:ss.sssZ`. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record's own `changed_at` field remains unchanged.  If you want to track entry deletion, also set the `include_deleted=true` query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior).
  include_deleted: Kombo::GetHrisTimeOffBalancesParameterIncludeDeleted::TRUE, # GetHrisTimeOffBalancesParameterIncludeDeleted | By default, deleted entries are not returned. Use the `include_deleted` query param to include deleted entries too.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example', # String | Filter by a comma-separated list of remote IDs.
  employee_id: 'employee_id_example' # String | Filter by a specific employee using their ID.
}

begin
  # Get time off balances
  result = api_instance.get_hris_time_off_balances(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_time_off_balances: #{e}"
end
```

#### Using the get_hris_time_off_balances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHrisTimeOffBalancesPositiveResponse>, Integer, Hash)> get_hris_time_off_balances_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get time off balances
  data, status_code, headers = api_instance.get_hris_time_off_balances_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHrisTimeOffBalancesPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_time_off_balances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **updated_after** | **Time** | Filter the entries based on the modification date in format &#x60;YYYY-MM-DDTHH:mm:ss.sssZ&#x60;. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record&#39;s own &#x60;changed_at&#x60; field remains unchanged.  If you want to track entry deletion, also set the &#x60;include_deleted&#x3D;true&#x60; query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior). | [optional] |
| **include_deleted** | [**GetHrisTimeOffBalancesParameterIncludeDeleted**](.md) | By default, deleted entries are not returned. Use the &#x60;include_deleted&#x60; query param to include deleted entries too. | [optional][default to &#39;false&#39;] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |
| **employee_id** | **String** | Filter by a specific employee using their ID. | [optional] |

### Return type

[**GetHrisTimeOffBalancesPositiveResponse**](GetHrisTimeOffBalancesPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_hris_timesheets

> <GetHrisTimesheetsPositiveResponse> get_hris_timesheets(x_integration_id, opts)

Get timesheets

Get timesheets  Retrieve attendance data and timesheets from HRIS tools.  <Warning>**Open Beta Feature:** This endpoint is currently in beta. Please reach out to our support team if you need assistance with implementation.</Warning>  For a detailed explanation of the data model, validation rules, time zones, payable hours, approvals, and break patterns, see the [Time & Attendance guide](/hris/features/time-and-attendance).  Top level filters use AND, while individual filters use OR if they accept multiple arguments. That means filters will be resolved like this: `(id IN ids) AND (remote_id IN remote_ids)`

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  cursor: 'cursor_example', # String | An optional cursor string used for pagination. This can be retrieved from the `next` property of the previous page response.
  page_size: 789, # Integer | The number of results to return per page. Maximum is 250.
  updated_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filter the entries based on the modification date in format `YYYY-MM-DDTHH:mm:ss.sssZ`. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record's own `changed_at` field remains unchanged.  If you want to track entry deletion, also set the `include_deleted=true` query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior).
  include_deleted: Kombo::GetHrisTimesheetsParameterIncludeDeleted::TRUE, # GetHrisTimesheetsParameterIncludeDeleted | By default, deleted entries are not returned. Use the `include_deleted` query param to include deleted entries too.
  ids: 'ids_example', # String | Filter by a comma-separated list of IDs such as `222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3`.
  remote_ids: 'remote_ids_example', # String | Filter by a comma-separated list of remote IDs.
  employee_id: 'employee_id_example', # String | Returns timesheets for a specific employee.
  started_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Return timesheets whose start time is before the given timestamp.
  started_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Return timesheets whose start time is on or after the given timestamp.
  ended_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Return timesheets whose end time is on or before the given timestamp.
  ended_after: Time.parse('2013-10-20T19:20:30+01:00') # Time | Return timesheets whose end time is on or after the given timestamp.
}

begin
  # Get timesheets
  result = api_instance.get_hris_timesheets(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_timesheets: #{e}"
end
```

#### Using the get_hris_timesheets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHrisTimesheetsPositiveResponse>, Integer, Hash)> get_hris_timesheets_with_http_info(x_integration_id, opts)

```ruby
begin
  # Get timesheets
  data, status_code, headers = api_instance.get_hris_timesheets_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHrisTimesheetsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->get_hris_timesheets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **cursor** | **String** | An optional cursor string used for pagination. This can be retrieved from the &#x60;next&#x60; property of the previous page response. | [optional] |
| **page_size** | **Integer** | The number of results to return per page. Maximum is 250. | [optional][default to 100] |
| **updated_after** | **Time** | Filter the entries based on the modification date in format &#x60;YYYY-MM-DDTHH:mm:ss.sssZ&#x60;. Returns records where either the record itself **OR** its nested data has been updated since this timestamp, even if the record&#39;s own &#x60;changed_at&#x60; field remains unchanged.  If you want to track entry deletion, also set the &#x60;include_deleted&#x3D;true&#x60; query parameter, because otherwise, deleted entries will be hidden.  For more details, see [Understanding changed_at vs updated_after Behavior](https://docs.kombo.dev/ats/getting-started/fetching-data#understanding-changed_at-vs-updated_after-behavior). | [optional] |
| **include_deleted** | [**GetHrisTimesheetsParameterIncludeDeleted**](.md) | By default, deleted entries are not returned. Use the &#x60;include_deleted&#x60; query param to include deleted entries too. | [optional][default to &#39;false&#39;] |
| **ids** | **String** | Filter by a comma-separated list of IDs such as &#x60;222k7eCGyUdgt2JWZDNnkDs3,B5DVmypWENfU6eMe6gYDyJG3&#x60;. | [optional] |
| **remote_ids** | **String** | Filter by a comma-separated list of remote IDs. | [optional] |
| **employee_id** | **String** | Returns timesheets for a specific employee. | [optional] |
| **started_before** | **Time** | Return timesheets whose start time is before the given timestamp. | [optional] |
| **started_after** | **Time** | Return timesheets whose start time is on or after the given timestamp. | [optional] |
| **ended_before** | **Time** | Return timesheets whose end time is on or before the given timestamp. | [optional] |
| **ended_after** | **Time** | Return timesheets whose end time is on or after the given timestamp. | [optional] |

### Return type

[**GetHrisTimesheetsPositiveResponse**](GetHrisTimesheetsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_hris_employee_skill_assignments_employee_skill_assignment_id

> <PatchHrisEmployeeSkillAssignmentsEmployeeSkillAssignmentIdPositiveResponse> patch_hris_employee_skill_assignments_employee_skill_assignment_id(x_integration_id, employee_skill_assignment_id, opts)

Update employee skill assignment

Update employee skill assignment    <Warning>**Closed Beta Feature:** This endpoint is currently in closed beta. We're testing it with selected customers before its public release. If you're interested in learning more or getting early access, please reach out.</Warning>    Update the skill level for an employee skill assignment.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
employee_skill_assignment_id = 'employee_skill_assignment_id_example' # String | The ID of the employee skill assignment
opts = {
  patch_hris_employee_skill_assignments_employee_skill_assignment_id_request_body: Kombo::PatchHrisEmployeeSkillAssignmentsEmployeeSkillAssignmentIdRequestBody.new({current_level: 'current_level_example'}) # PatchHrisEmployeeSkillAssignmentsEmployeeSkillAssignmentIdRequestBody | PATCH /hris/employee-skill-assignments/:employee_skill_assignment_id Request body
}

begin
  # Update employee skill assignment
  result = api_instance.patch_hris_employee_skill_assignments_employee_skill_assignment_id(x_integration_id, employee_skill_assignment_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->patch_hris_employee_skill_assignments_employee_skill_assignment_id: #{e}"
end
```

#### Using the patch_hris_employee_skill_assignments_employee_skill_assignment_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PatchHrisEmployeeSkillAssignmentsEmployeeSkillAssignmentIdPositiveResponse>, Integer, Hash)> patch_hris_employee_skill_assignments_employee_skill_assignment_id_with_http_info(x_integration_id, employee_skill_assignment_id, opts)

```ruby
begin
  # Update employee skill assignment
  data, status_code, headers = api_instance.patch_hris_employee_skill_assignments_employee_skill_assignment_id_with_http_info(x_integration_id, employee_skill_assignment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PatchHrisEmployeeSkillAssignmentsEmployeeSkillAssignmentIdPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->patch_hris_employee_skill_assignments_employee_skill_assignment_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **employee_skill_assignment_id** | **String** | The ID of the employee skill assignment |  |
| **patch_hris_employee_skill_assignments_employee_skill_assignment_id_request_body** | [**PatchHrisEmployeeSkillAssignmentsEmployeeSkillAssignmentIdRequestBody**](PatchHrisEmployeeSkillAssignmentsEmployeeSkillAssignmentIdRequestBody.md) | PATCH /hris/employee-skill-assignments/:employee_skill_assignment_id Request body | [optional] |

### Return type

[**PatchHrisEmployeeSkillAssignmentsEmployeeSkillAssignmentIdPositiveResponse**](PatchHrisEmployeeSkillAssignmentsEmployeeSkillAssignmentIdPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## patch_hris_employees_employee_id

> <PatchHrisEmployeesEmployeeIdPositiveResponse> patch_hris_employees_employee_id(x_integration_id, employee_id, opts)

Update employee

Update an employee.  <Note>   This endpoint requires the permission **Create and manage employees** to be enabled in [your scope config](/scopes). </Note>  ### Example Request Body  ```json {   \"employee_id\": \"BkgfzSr5muN9cUTMD4wDQFn4\",   \"first_name\": \"John\",   \"last_name\": \"Doe\",   \"work_email\": \"john.doe@acme.com\",   \"ssn\": \"555-32-6395\",   \"tax_id\": \"12 345 678 901\",   \"gender\": \"MALE\",   \"marital_status\": \"MARRIED\",   \"date_of_birth\": \"1986-01-01\",   \"start_date\": \"2020-04-07\",   \"termination_date\": \"2022-05-20\",   \"job_title\": \"Integrations Team Lead\",   \"nationality\": \"DE\",   \"home_address\": {     \"city\": \"Berlin\",     \"country\": \"DE\",     \"state\": \"Berlin\",     \"street_1\": \"Sonnenallee 63\",     \"zip_code\": \"12045\"   } } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
employee_id = 'BkgfzSr5muN9cUTMD4wDQFn4' # String | The ID of the employee that should be updated. You can use their Kombo `id` or their ID in the remote system by prefixing it with `remote:` (e.g., `remote:12312`)
opts = {
  patch_hris_employees_employee_id_request_body: Kombo::PatchHrisEmployeesEmployeeIdRequestBody.new({work_email: 'work_email_example'}) # PatchHrisEmployeesEmployeeIdRequestBody | PATCH /hris/employees/:employee_id Request body
}

begin
  # Update employee
  result = api_instance.patch_hris_employees_employee_id(x_integration_id, employee_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->patch_hris_employees_employee_id: #{e}"
end
```

#### Using the patch_hris_employees_employee_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PatchHrisEmployeesEmployeeIdPositiveResponse>, Integer, Hash)> patch_hris_employees_employee_id_with_http_info(x_integration_id, employee_id, opts)

```ruby
begin
  # Update employee
  data, status_code, headers = api_instance.patch_hris_employees_employee_id_with_http_info(x_integration_id, employee_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PatchHrisEmployeesEmployeeIdPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->patch_hris_employees_employee_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **employee_id** | **String** | The ID of the employee that should be updated. You can use their Kombo &#x60;id&#x60; or their ID in the remote system by prefixing it with &#x60;remote:&#x60; (e.g., &#x60;remote:12312&#x60;) |  |
| **patch_hris_employees_employee_id_request_body** | [**PatchHrisEmployeesEmployeeIdRequestBody**](PatchHrisEmployeesEmployeeIdRequestBody.md) | PATCH /hris/employees/:employee_id Request body | [optional] |

### Return type

[**PatchHrisEmployeesEmployeeIdPositiveResponse**](PatchHrisEmployeesEmployeeIdPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## patch_hris_skills_skill_id

> <PatchHrisSkillsSkillIdPositiveResponse> patch_hris_skills_skill_id(x_integration_id, skill_id, opts)

Update skill

Update skill    <Warning>**Closed Beta Feature:** This endpoint is currently in closed beta. We're testing it with selected customers before its public release. If you're interested in learning more or getting early access, please reach out.</Warning>    Update an existing skill in the HRIS system.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
skill_id = 'skill_id_example' # String | The ID of the skill
opts = {
  patch_hris_skills_skill_id_request_body: Kombo::PatchHrisSkillsSkillIdRequestBody.new # PatchHrisSkillsSkillIdRequestBody | PATCH /hris/skills/:skill_id Request body
}

begin
  # Update skill
  result = api_instance.patch_hris_skills_skill_id(x_integration_id, skill_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->patch_hris_skills_skill_id: #{e}"
end
```

#### Using the patch_hris_skills_skill_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PatchHrisSkillsSkillIdPositiveResponse>, Integer, Hash)> patch_hris_skills_skill_id_with_http_info(x_integration_id, skill_id, opts)

```ruby
begin
  # Update skill
  data, status_code, headers = api_instance.patch_hris_skills_skill_id_with_http_info(x_integration_id, skill_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PatchHrisSkillsSkillIdPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->patch_hris_skills_skill_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **skill_id** | **String** | The ID of the skill |  |
| **patch_hris_skills_skill_id_request_body** | [**PatchHrisSkillsSkillIdRequestBody**](PatchHrisSkillsSkillIdRequestBody.md) | PATCH /hris/skills/:skill_id Request body | [optional] |

### Return type

[**PatchHrisSkillsSkillIdPositiveResponse**](PatchHrisSkillsSkillIdPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_hris_absences

> <PostHrisAbsencesPositiveResponse> post_hris_absences(x_integration_id, opts)

Create absence

Create a new absence.  Check [this page](/hris/features/creating-absences) for a detailed guide.  <Note>   This endpoint requires the permission **Manage absences** to be enabled in [your scope config](/scopes). </Note>  ### Example Request Body  ```json {   \"employee_id\": \"wXJMxwDvPAjrJ4CyqdV9\",   \"absence_type_id\": \"3YKtQ7qedsrcCady1jSyAkY1\",   \"start_date\": \"2019-09-17\",   \"end_date\": \"2019-09-21\",   \"start_time\": \"08:30:00\",   \"end_time\": \"16:00:00\",   \"start_half_day\": false,   \"end_half_day\": false,   \"employee_note\": \"Visiting the aliens\" } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  post_hris_absences_request_body: Kombo::PostHrisAbsencesRequestBody.new({employee_id: 'employee_id_example', absence_type_id: 'absence_type_id_example', start_date: Time.now, end_date: Time.now, employee_note: 'employee_note_example'}) # PostHrisAbsencesRequestBody | POST /hris/absences Request body
}

begin
  # Create absence
  result = api_instance.post_hris_absences(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->post_hris_absences: #{e}"
end
```

#### Using the post_hris_absences_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostHrisAbsencesPositiveResponse>, Integer, Hash)> post_hris_absences_with_http_info(x_integration_id, opts)

```ruby
begin
  # Create absence
  data, status_code, headers = api_instance.post_hris_absences_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostHrisAbsencesPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->post_hris_absences_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **post_hris_absences_request_body** | [**PostHrisAbsencesRequestBody**](PostHrisAbsencesRequestBody.md) | POST /hris/absences Request body | [optional] |

### Return type

[**PostHrisAbsencesPositiveResponse**](PostHrisAbsencesPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_hris_employee_skill_assignments

> <PostHrisEmployeeSkillAssignmentsPositiveResponse> post_hris_employee_skill_assignments(x_integration_id, opts)

Create employee skill assignment

Create employee skill assignment    <Warning>**Closed Beta Feature:** This endpoint is currently in closed beta. We're testing it with selected customers before its public release. If you're interested in learning more or getting early access, please reach out.</Warning>    Assign a skill to an employee with a specified skill level.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  post_hris_employee_skill_assignments_request_body: Kombo::PostHrisEmployeeSkillAssignmentsRequestBody.new({employee_id: 'employee_id_example', skill_id: 'skill_id_example'}) # PostHrisEmployeeSkillAssignmentsRequestBody | POST /hris/employee-skill-assignments Request body
}

begin
  # Create employee skill assignment
  result = api_instance.post_hris_employee_skill_assignments(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->post_hris_employee_skill_assignments: #{e}"
end
```

#### Using the post_hris_employee_skill_assignments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostHrisEmployeeSkillAssignmentsPositiveResponse>, Integer, Hash)> post_hris_employee_skill_assignments_with_http_info(x_integration_id, opts)

```ruby
begin
  # Create employee skill assignment
  data, status_code, headers = api_instance.post_hris_employee_skill_assignments_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostHrisEmployeeSkillAssignmentsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->post_hris_employee_skill_assignments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **post_hris_employee_skill_assignments_request_body** | [**PostHrisEmployeeSkillAssignmentsRequestBody**](PostHrisEmployeeSkillAssignmentsRequestBody.md) | POST /hris/employee-skill-assignments Request body | [optional] |

### Return type

[**PostHrisEmployeeSkillAssignmentsPositiveResponse**](PostHrisEmployeeSkillAssignmentsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_hris_employees

> <PostHrisEmployeesPositiveResponse> post_hris_employees(x_integration_id, opts)

[DEPRECATED] Create employee

Create a new employee.  <Warning>   We are deprecating this endpoint in favor of the new [create employee form](/hris/features/create-employee) endpoint. </Warning>  <Note>   This endpoint requires the permission **Create and manage employees** to be enabled in [your scope config](/scopes). </Note>  ### Example Request Body  ```json {   \"first_name\": \"John\",   \"last_name\": \"Doe\",   \"work_email\": \"john.doe@acme.com\",   \"gender\": \"MALE\",   \"date_of_birth\": \"1986-01-01\",   \"start_date\": \"2020-04-07\",   \"job_title\": \"Integrations Team Lead\",   \"home_address\": {     \"city\": \"Berlin\",     \"country\": \"DE\",     \"state\": \"Berlin\",     \"street_1\": \"Sonnenallee 63\",     \"zip_code\": \"12045\"   } } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  post_hris_employees_request_body: Kombo::PostHrisEmployeesRequestBody.new({first_name: 'first_name_example', last_name: 'last_name_example'}) # PostHrisEmployeesRequestBody | POST /hris/employees Request body
}

begin
  # [DEPRECATED] Create employee
  result = api_instance.post_hris_employees(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->post_hris_employees: #{e}"
end
```

#### Using the post_hris_employees_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostHrisEmployeesPositiveResponse>, Integer, Hash)> post_hris_employees_with_http_info(x_integration_id, opts)

```ruby
begin
  # [DEPRECATED] Create employee
  data, status_code, headers = api_instance.post_hris_employees_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostHrisEmployeesPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->post_hris_employees_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **post_hris_employees_request_body** | [**PostHrisEmployeesRequestBody**](PostHrisEmployeesRequestBody.md) | POST /hris/employees Request body | [optional] |

### Return type

[**PostHrisEmployeesPositiveResponse**](PostHrisEmployeesPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_hris_employees_employee_id_documents

> <PostHrisEmployeesEmployeeIdDocumentsPositiveResponse> post_hris_employees_employee_id_documents(x_integration_id, employee_id, opts)

Add document to employee

Uploads an document file for the specified employee.  <Note>   This endpoint requires the permission **Manage documents** to be enabled in [your scope config](/scopes). </Note>  ### Example Request Body  ```json {   \"category_id\": \"3Cjwu7nA7pH5cX5X1NAPmb7M\",   \"document\": {     \"name\": \"Frank Doe Employment Contract.txt\",     \"data\": \"SGkgdGhlcmUsIEtvbWJvIGlzIGN1cnJlbnRseSBoaXJpbmcgZW5naW5lZXJzIHRoYXQgbG92ZSB0byB3b3JrIG9uIGRldmVsb3BlciBwcm9kdWN0cy4=\",     \"content_type\": \"text/plain\"   } } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
employee_id = 'GRKdd9dibYKKCrmGRSMJf3wu' # String | POST /hris/employees/:employee_id/documents Parameter
opts = {
  post_hris_employees_employee_id_documents_request_body: Kombo::PostHrisEmployeesEmployeeIdDocumentsRequestBody.new({category_id: 'category_id_example', document: Kombo::PostPassthroughToolApiRequestBodyMultipartFormDataInnerValueOneOf.new({name: 'name_example'})}) # PostHrisEmployeesEmployeeIdDocumentsRequestBody | POST /hris/employees/:employee_id/documents Request body
}

begin
  # Add document to employee
  result = api_instance.post_hris_employees_employee_id_documents(x_integration_id, employee_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->post_hris_employees_employee_id_documents: #{e}"
end
```

#### Using the post_hris_employees_employee_id_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostHrisEmployeesEmployeeIdDocumentsPositiveResponse>, Integer, Hash)> post_hris_employees_employee_id_documents_with_http_info(x_integration_id, employee_id, opts)

```ruby
begin
  # Add document to employee
  data, status_code, headers = api_instance.post_hris_employees_employee_id_documents_with_http_info(x_integration_id, employee_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostHrisEmployeesEmployeeIdDocumentsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->post_hris_employees_employee_id_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **employee_id** | **String** | POST /hris/employees/:employee_id/documents Parameter |  |
| **post_hris_employees_employee_id_documents_request_body** | [**PostHrisEmployeesEmployeeIdDocumentsRequestBody**](PostHrisEmployeesEmployeeIdDocumentsRequestBody.md) | POST /hris/employees/:employee_id/documents Request body | [optional] |

### Return type

[**PostHrisEmployeesEmployeeIdDocumentsPositiveResponse**](PostHrisEmployeesEmployeeIdDocumentsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_hris_employees_form

> <PostHrisEmployeesFormPositiveResponse> post_hris_employees_form(x_integration_id, opts)

Create employee with form

Create an employee, based on the form schema.  <Note>   This endpoint requires the permission **Create and manage employees** to be enabled in [your scope config](/scopes). </Note>  ### Example Request Body  ```json {   \"properties\": {     \"firstName\": \"John\",     \"startDate\": \"2025-01-01\",     \"workLocation\": {       \"site\": \"8e422bf8cav\",       \"keyNumbers\": [         142,         525,         63       ]     }   } } ```

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  post_hris_employees_form_request_body: Kombo::PostHrisEmployeesFormRequestBody.new({properties: { key: nil}}) # PostHrisEmployeesFormRequestBody | POST /hris/employees/form Request body
}

begin
  # Create employee with form
  result = api_instance.post_hris_employees_form(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->post_hris_employees_form: #{e}"
end
```

#### Using the post_hris_employees_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostHrisEmployeesFormPositiveResponse>, Integer, Hash)> post_hris_employees_form_with_http_info(x_integration_id, opts)

```ruby
begin
  # Create employee with form
  data, status_code, headers = api_instance.post_hris_employees_form_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostHrisEmployeesFormPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->post_hris_employees_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **post_hris_employees_form_request_body** | [**PostHrisEmployeesFormRequestBody**](PostHrisEmployeesFormRequestBody.md) | POST /hris/employees/form Request body | [optional] |

### Return type

[**PostHrisEmployeesFormPositiveResponse**](PostHrisEmployeesFormPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_hris_provisioning_groups_group_id_diff

> <PostHrisProvisioningGroupsGroupIdDiffPositiveResponse> post_hris_provisioning_groups_group_id_diff(x_integration_id, group_id, opts)

Get provisioning diff

Get the list of users to provision, deprovision, and optionally update based on the users you've already provisioned in your system.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
group_id = 'n39n320clr8c5amf8v83nbch' # String | ID of the provisioning group (currently only `default` is allowed).
opts = {
  post_hris_provisioning_groups_group_id_diff_request_body: Kombo::PostHrisProvisioningGroupsGroupIdDiffRequestBody.new({provisioned_users: [Kombo::PostHrisProvisioningGroupsGroupIdDiffRequestBodyProvisionedUsersInner.new({origin_id: 'origin_id_example', email: 'email_example'})], options: Kombo::PostHrisProvisioningGroupsGroupIdDiffRequestBodyOptions.new({employee_fields: ['id']})}) # PostHrisProvisioningGroupsGroupIdDiffRequestBody | POST /hris/provisioning-groups/:group_id/diff Request body
}

begin
  # Get provisioning diff
  result = api_instance.post_hris_provisioning_groups_group_id_diff(x_integration_id, group_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->post_hris_provisioning_groups_group_id_diff: #{e}"
end
```

#### Using the post_hris_provisioning_groups_group_id_diff_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostHrisProvisioningGroupsGroupIdDiffPositiveResponse>, Integer, Hash)> post_hris_provisioning_groups_group_id_diff_with_http_info(x_integration_id, group_id, opts)

```ruby
begin
  # Get provisioning diff
  data, status_code, headers = api_instance.post_hris_provisioning_groups_group_id_diff_with_http_info(x_integration_id, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostHrisProvisioningGroupsGroupIdDiffPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->post_hris_provisioning_groups_group_id_diff_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **group_id** | **String** | ID of the provisioning group (currently only &#x60;default&#x60; is allowed). |  |
| **post_hris_provisioning_groups_group_id_diff_request_body** | [**PostHrisProvisioningGroupsGroupIdDiffRequestBody**](PostHrisProvisioningGroupsGroupIdDiffRequestBody.md) | POST /hris/provisioning-groups/:group_id/diff Request body | [optional] |

### Return type

[**PostHrisProvisioningGroupsGroupIdDiffPositiveResponse**](PostHrisProvisioningGroupsGroupIdDiffPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_hris_provisioning_groups_group_id_setup_links

> <PostHrisProvisioningGroupsGroupIdSetupLinksPositiveResponse> post_hris_provisioning_groups_group_id_setup_links(x_integration_id, group_id, opts)

Create provisioning setup link

Create a new link that can be passed to the Kombo Connect SDK to open the provisioning setup UI.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
group_id = 'n39n320clr8c5amf8v83nbch' # String | ID of the provisioning group (currently only `default` is allowed).
opts = {
  post_hris_provisioning_groups_group_id_setup_links_request_body: Kombo::PostHrisProvisioningGroupsGroupIdSetupLinksRequestBody.new # PostHrisProvisioningGroupsGroupIdSetupLinksRequestBody | POST /hris/provisioning-groups/:group_id/setup-links Request body
}

begin
  # Create provisioning setup link
  result = api_instance.post_hris_provisioning_groups_group_id_setup_links(x_integration_id, group_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->post_hris_provisioning_groups_group_id_setup_links: #{e}"
end
```

#### Using the post_hris_provisioning_groups_group_id_setup_links_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostHrisProvisioningGroupsGroupIdSetupLinksPositiveResponse>, Integer, Hash)> post_hris_provisioning_groups_group_id_setup_links_with_http_info(x_integration_id, group_id, opts)

```ruby
begin
  # Create provisioning setup link
  data, status_code, headers = api_instance.post_hris_provisioning_groups_group_id_setup_links_with_http_info(x_integration_id, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostHrisProvisioningGroupsGroupIdSetupLinksPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->post_hris_provisioning_groups_group_id_setup_links_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **group_id** | **String** | ID of the provisioning group (currently only &#x60;default&#x60; is allowed). |  |
| **post_hris_provisioning_groups_group_id_setup_links_request_body** | [**PostHrisProvisioningGroupsGroupIdSetupLinksRequestBody**](PostHrisProvisioningGroupsGroupIdSetupLinksRequestBody.md) | POST /hris/provisioning-groups/:group_id/setup-links Request body | [optional] |

### Return type

[**PostHrisProvisioningGroupsGroupIdSetupLinksPositiveResponse**](PostHrisProvisioningGroupsGroupIdSetupLinksPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_hris_skills

> <PostHrisSkillsPositiveResponse> post_hris_skills(x_integration_id, opts)

Create skill

Create skill    <Warning>**Closed Beta Feature:** This endpoint is currently in closed beta. We're testing it with selected customers before its public release. If you're interested in learning more or getting early access, please reach out.</Warning>    Create a new skill in the HRIS system with specified name and levels. Refer to our coverage grid for support of levels.

### Examples

```ruby
require 'time'
require 'kombo_client'
# setup authorization
Kombo.configure do |config|
  # Configure Bearer authorization: ApiKey
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Kombo::UnifiedHRISAPIApi.new
x_integration_id = 'bamboohr:HWUTwvyx2wLoSUHphiWVrp28' # String | ID of the integration you want to interact with.
opts = {
  post_hris_skills_request_body: Kombo::PostHrisSkillsRequestBody.new({name: 'name_example'}) # PostHrisSkillsRequestBody | POST /hris/skills Request body
}

begin
  # Create skill
  result = api_instance.post_hris_skills(x_integration_id, opts)
  p result
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->post_hris_skills: #{e}"
end
```

#### Using the post_hris_skills_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostHrisSkillsPositiveResponse>, Integer, Hash)> post_hris_skills_with_http_info(x_integration_id, opts)

```ruby
begin
  # Create skill
  data, status_code, headers = api_instance.post_hris_skills_with_http_info(x_integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostHrisSkillsPositiveResponse>
rescue Kombo::ApiError => e
  puts "Error when calling UnifiedHRISAPIApi->post_hris_skills_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_integration_id** | **String** | ID of the integration you want to interact with. |  |
| **post_hris_skills_request_body** | [**PostHrisSkillsRequestBody**](PostHrisSkillsRequestBody.md) | POST /hris/skills Request body | [optional] |

### Return type

[**PostHrisSkillsPositiveResponse**](PostHrisSkillsPositiveResponse.md)

### Authorization

[ApiKey](../README.md#ApiKey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

