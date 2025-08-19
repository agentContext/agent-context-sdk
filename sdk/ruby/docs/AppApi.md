# OpenapiClient::AppApi

All URIs are relative to *https://api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**app_get**](AppApi.md#app_get) | **GET** /app | 获取 app 列表 |
| [**app_id_id_get**](AppApi.md#app_id_id_get) | **GET** /app/id/{id} | 获取指定 app 信息（按 id） |
| [**app_pkg_pkgname_get**](AppApi.md#app_pkg_pkgname_get) | **GET** /app/pkg/{pkgname} | 获取指定 app 信息（按包名） |
| [**app_search_get**](AppApi.md#app_search_get) | **GET** /app/search | 搜索 app |


## app_get

> <AppListResponse> app_get(opts)

获取 app 列表

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::AppApi.new
opts = {
  page: 56, # Integer | 页码（默认 1）
  limit: 56 # Integer | 每页数量（默认 20）
}

begin
  # 获取 app 列表
  result = api_instance.app_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AppApi->app_get: #{e}"
end
```

#### Using the app_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppListResponse>, Integer, Hash)> app_get_with_http_info(opts)

```ruby
begin
  # 获取 app 列表
  data, status_code, headers = api_instance.app_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppListResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AppApi->app_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | 页码（默认 1） | [optional][default to 1] |
| **limit** | **Integer** | 每页数量（默认 20） | [optional][default to 20] |

### Return type

[**AppListResponse**](AppListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## app_id_id_get

> <AppItemResponse> app_id_id_get(id)

获取指定 app 信息（按 id）

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::AppApi.new
id = 56 # Integer | 

begin
  # 获取指定 app 信息（按 id）
  result = api_instance.app_id_id_get(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AppApi->app_id_id_get: #{e}"
end
```

#### Using the app_id_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppItemResponse>, Integer, Hash)> app_id_id_get_with_http_info(id)

```ruby
begin
  # 获取指定 app 信息（按 id）
  data, status_code, headers = api_instance.app_id_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppItemResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AppApi->app_id_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |

### Return type

[**AppItemResponse**](AppItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## app_pkg_pkgname_get

> <AppItemResponse> app_pkg_pkgname_get(pkgname)

获取指定 app 信息（按包名）

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::AppApi.new
pkgname = 'pkgname_example' # String | 

begin
  # 获取指定 app 信息（按包名）
  result = api_instance.app_pkg_pkgname_get(pkgname)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AppApi->app_pkg_pkgname_get: #{e}"
end
```

#### Using the app_pkg_pkgname_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppItemResponse>, Integer, Hash)> app_pkg_pkgname_get_with_http_info(pkgname)

```ruby
begin
  # 获取指定 app 信息（按包名）
  data, status_code, headers = api_instance.app_pkg_pkgname_get_with_http_info(pkgname)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppItemResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AppApi->app_pkg_pkgname_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pkgname** | **String** |  |  |

### Return type

[**AppItemResponse**](AppItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## app_search_get

> <AppListResponse> app_search_get(q, opts)

搜索 app

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::AppApi.new
q = 'q_example' # String | 搜索关键词
opts = {
  page: 56, # Integer | 页码（默认 1）
  limit: 56 # Integer | 每页数量（默认 20）
}

begin
  # 搜索 app
  result = api_instance.app_search_get(q, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AppApi->app_search_get: #{e}"
end
```

#### Using the app_search_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AppListResponse>, Integer, Hash)> app_search_get_with_http_info(q, opts)

```ruby
begin
  # 搜索 app
  data, status_code, headers = api_instance.app_search_get_with_http_info(q, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AppListResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AppApi->app_search_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** | 搜索关键词 |  |
| **page** | **Integer** | 页码（默认 1） | [optional][default to 1] |
| **limit** | **Integer** | 每页数量（默认 20） | [optional][default to 20] |

### Return type

[**AppListResponse**](AppListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

