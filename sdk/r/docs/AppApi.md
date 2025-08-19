# AppApi

All URIs are relative to *https://api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AppGet**](AppApi.md#AppGet) | **GET** /app | 获取 app 列表
[**AppIdIdGet**](AppApi.md#AppIdIdGet) | **GET** /app/id/{id} | 获取指定 app 信息（按 id）
[**AppPkgPkgnameGet**](AppApi.md#AppPkgPkgnameGet) | **GET** /app/pkg/{pkgname} | 获取指定 app 信息（按包名）
[**AppSearchGet**](AppApi.md#AppSearchGet) | **GET** /app/search | 搜索 app


# **AppGet**
> AppListResponse AppGet(page = 1, limit = 20)

获取 app 列表

### Example
```R
library(openapi)

# 获取 app 列表
#
# prepare function argument(s)
var_page <- 1 # integer | 页码（默认 1） (Optional)
var_limit <- 20 # integer | 每页数量（默认 20） (Optional)

api_instance <- AppApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AppGet(page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$AppGet(page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer**| 页码（默认 1） | [optional] [default to 1]
 **limit** | **integer**| 每页数量（默认 20） | [optional] [default to 20]

### Return type

[**AppListResponse**](AppListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | 成功 |  -  |
| **0** | 统一错误 |  -  |

# **AppIdIdGet**
> AppItemResponse AppIdIdGet(id)

获取指定 app 信息（按 id）

### Example
```R
library(openapi)

# 获取指定 app 信息（按 id）
#
# prepare function argument(s)
var_id <- 56 # integer | 

api_instance <- AppApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AppIdIdGet(var_iddata_file = "result.txt")
result <- api_instance$AppIdIdGet(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**|  | 

### Return type

[**AppItemResponse**](AppItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | 成功 |  -  |
| **0** | 统一错误 |  -  |

# **AppPkgPkgnameGet**
> AppItemResponse AppPkgPkgnameGet(pkgname)

获取指定 app 信息（按包名）

### Example
```R
library(openapi)

# 获取指定 app 信息（按包名）
#
# prepare function argument(s)
var_pkgname <- "pkgname_example" # character | 

api_instance <- AppApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AppPkgPkgnameGet(var_pkgnamedata_file = "result.txt")
result <- api_instance$AppPkgPkgnameGet(var_pkgname)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pkgname** | **character**|  | 

### Return type

[**AppItemResponse**](AppItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | 成功 |  -  |
| **0** | 统一错误 |  -  |

# **AppSearchGet**
> AppListResponse AppSearchGet(q, page = 1, limit = 20)

搜索 app

### Example
```R
library(openapi)

# 搜索 app
#
# prepare function argument(s)
var_q <- "q_example" # character | 搜索关键词
var_page <- 1 # integer | 页码（默认 1） (Optional)
var_limit <- 20 # integer | 每页数量（默认 20） (Optional)

api_instance <- AppApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$AppSearchGet(var_q, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$AppSearchGet(var_q, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **character**| 搜索关键词 | 
 **page** | **integer**| 页码（默认 1） | [optional] [default to 1]
 **limit** | **integer**| 每页数量（默认 20） | [optional] [default to 20]

### Return type

[**AppListResponse**](AppListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | 成功 |  -  |
| **0** | 统一错误 |  -  |

