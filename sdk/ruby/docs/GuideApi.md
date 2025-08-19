# OpenapiClient::GuideApi

All URIs are relative to *https://api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**guide_get**](GuideApi.md#guide_get) | **GET** /guide | 获取 guide 列表（按关键词） |
| [**guide_id_id_get**](GuideApi.md#guide_id_id_get) | **GET** /guide/id/{id} | 获取指定 guide（按 id） |
| [**guide_pkg_pkgname_get**](GuideApi.md#guide_pkg_pkgname_get) | **GET** /guide/pkg/{pkgname} | 获取某包名下的 guide 列表 |
| [**guide_search_pkgname_get**](GuideApi.md#guide_search_pkgname_get) | **GET** /guide/search/{pkgname} | 在指定包下根据关键词搜索 guide（词向量相似度） |


## guide_get

> <GuideListResponse> guide_get(q, opts)

获取 guide 列表（按关键词）

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::GuideApi.new
q = 'q_example' # String | 搜索关键词
opts = {
  page: 56, # Integer | 页码（默认 1）
  limit: 56 # Integer | 每页数量（默认 20）
}

begin
  # 获取 guide 列表（按关键词）
  result = api_instance.guide_get(q, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GuideApi->guide_get: #{e}"
end
```

#### Using the guide_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GuideListResponse>, Integer, Hash)> guide_get_with_http_info(q, opts)

```ruby
begin
  # 获取 guide 列表（按关键词）
  data, status_code, headers = api_instance.guide_get_with_http_info(q, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GuideListResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GuideApi->guide_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** | 搜索关键词 |  |
| **page** | **Integer** | 页码（默认 1） | [optional][default to 1] |
| **limit** | **Integer** | 每页数量（默认 20） | [optional][default to 20] |

### Return type

[**GuideListResponse**](GuideListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## guide_id_id_get

> <GuideItemResponse> guide_id_id_get(id)

获取指定 guide（按 id）

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::GuideApi.new
id = 789 # Integer | 

begin
  # 获取指定 guide（按 id）
  result = api_instance.guide_id_id_get(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GuideApi->guide_id_id_get: #{e}"
end
```

#### Using the guide_id_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GuideItemResponse>, Integer, Hash)> guide_id_id_get_with_http_info(id)

```ruby
begin
  # 获取指定 guide（按 id）
  data, status_code, headers = api_instance.guide_id_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GuideItemResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GuideApi->guide_id_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |

### Return type

[**GuideItemResponse**](GuideItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## guide_pkg_pkgname_get

> <GuideListResponse> guide_pkg_pkgname_get(pkgname, opts)

获取某包名下的 guide 列表

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::GuideApi.new
pkgname = 'pkgname_example' # String | 
opts = {
  page: 56, # Integer | 页码（默认 1）
  limit: 56 # Integer | 每页数量（默认 20）
}

begin
  # 获取某包名下的 guide 列表
  result = api_instance.guide_pkg_pkgname_get(pkgname, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GuideApi->guide_pkg_pkgname_get: #{e}"
end
```

#### Using the guide_pkg_pkgname_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GuideListResponse>, Integer, Hash)> guide_pkg_pkgname_get_with_http_info(pkgname, opts)

```ruby
begin
  # 获取某包名下的 guide 列表
  data, status_code, headers = api_instance.guide_pkg_pkgname_get_with_http_info(pkgname, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GuideListResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GuideApi->guide_pkg_pkgname_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pkgname** | **String** |  |  |
| **page** | **Integer** | 页码（默认 1） | [optional][default to 1] |
| **limit** | **Integer** | 每页数量（默认 20） | [optional][default to 20] |

### Return type

[**GuideListResponse**](GuideListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## guide_search_pkgname_get

> <GuideSearchResponse> guide_search_pkgname_get(pkgname, q, opts)

在指定包下根据关键词搜索 guide（词向量相似度）

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::GuideApi.new
pkgname = 'pkgname_example' # String | 
q = 'q_example' # String | 搜索关键词
opts = {
  page: 56, # Integer | 页码（默认 1）
  limit: 56 # Integer | 每页数量（默认 20）
}

begin
  # 在指定包下根据关键词搜索 guide（词向量相似度）
  result = api_instance.guide_search_pkgname_get(pkgname, q, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GuideApi->guide_search_pkgname_get: #{e}"
end
```

#### Using the guide_search_pkgname_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GuideSearchResponse>, Integer, Hash)> guide_search_pkgname_get_with_http_info(pkgname, q, opts)

```ruby
begin
  # 在指定包下根据关键词搜索 guide（词向量相似度）
  data, status_code, headers = api_instance.guide_search_pkgname_get_with_http_info(pkgname, q, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GuideSearchResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GuideApi->guide_search_pkgname_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pkgname** | **String** |  |  |
| **q** | **String** | 搜索关键词 |  |
| **page** | **Integer** | 页码（默认 1） | [optional][default to 1] |
| **limit** | **Integer** | 每页数量（默认 20） | [optional][default to 20] |

### Return type

[**GuideSearchResponse**](GuideSearchResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

