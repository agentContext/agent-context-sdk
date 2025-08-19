# GuideApi

All URIs are relative to *https://api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GuideGet**](GuideApi.md#GuideGet) | **GET** /guide | 获取 guide 列表（按关键词）
[**GuideIdIdGet**](GuideApi.md#GuideIdIdGet) | **GET** /guide/id/{id} | 获取指定 guide（按 id）
[**GuidePkgPkgnameGet**](GuideApi.md#GuidePkgPkgnameGet) | **GET** /guide/pkg/{pkgname} | 获取某包名下的 guide 列表
[**GuideSearchPkgnameGet**](GuideApi.md#GuideSearchPkgnameGet) | **GET** /guide/search/{pkgname} | 在指定包下根据关键词搜索 guide（词向量相似度）


# **GuideGet**
> GuideListResponse GuideGet(q, page = 1, limit = 20)

获取 guide 列表（按关键词）

### Example
```R
library(openapi)

# 获取 guide 列表（按关键词）
#
# prepare function argument(s)
var_q <- "q_example" # character | 搜索关键词
var_page <- 1 # integer | 页码（默认 1） (Optional)
var_limit <- 20 # integer | 每页数量（默认 20） (Optional)

api_instance <- GuideApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GuideGet(var_q, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$GuideGet(var_q, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **character**| 搜索关键词 | 
 **page** | **integer**| 页码（默认 1） | [optional] [default to 1]
 **limit** | **integer**| 每页数量（默认 20） | [optional] [default to 20]

### Return type

[**GuideListResponse**](GuideListResponse.md)

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

# **GuideIdIdGet**
> GuideItemResponse GuideIdIdGet(id)

获取指定 guide（按 id）

### Example
```R
library(openapi)

# 获取指定 guide（按 id）
#
# prepare function argument(s)
var_id <- 56 # integer | 

api_instance <- GuideApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GuideIdIdGet(var_iddata_file = "result.txt")
result <- api_instance$GuideIdIdGet(var_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer**|  | 

### Return type

[**GuideItemResponse**](GuideItemResponse.md)

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

# **GuidePkgPkgnameGet**
> GuideListResponse GuidePkgPkgnameGet(pkgname, page = 1, limit = 20)

获取某包名下的 guide 列表

### Example
```R
library(openapi)

# 获取某包名下的 guide 列表
#
# prepare function argument(s)
var_pkgname <- "pkgname_example" # character | 
var_page <- 1 # integer | 页码（默认 1） (Optional)
var_limit <- 20 # integer | 每页数量（默认 20） (Optional)

api_instance <- GuideApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GuidePkgPkgnameGet(var_pkgname, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$GuidePkgPkgnameGet(var_pkgname, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pkgname** | **character**|  | 
 **page** | **integer**| 页码（默认 1） | [optional] [default to 1]
 **limit** | **integer**| 每页数量（默认 20） | [optional] [default to 20]

### Return type

[**GuideListResponse**](GuideListResponse.md)

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

# **GuideSearchPkgnameGet**
> GuideSearchResponse GuideSearchPkgnameGet(pkgname, q, page = 1, limit = 20)

在指定包下根据关键词搜索 guide（词向量相似度）

### Example
```R
library(openapi)

# 在指定包下根据关键词搜索 guide（词向量相似度）
#
# prepare function argument(s)
var_pkgname <- "pkgname_example" # character | 
var_q <- "q_example" # character | 搜索关键词
var_page <- 1 # integer | 页码（默认 1） (Optional)
var_limit <- 20 # integer | 每页数量（默认 20） (Optional)

api_instance <- GuideApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GuideSearchPkgnameGet(var_pkgname, var_q, page = var_page, limit = var_limitdata_file = "result.txt")
result <- api_instance$GuideSearchPkgnameGet(var_pkgname, var_q, page = var_page, limit = var_limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pkgname** | **character**|  | 
 **q** | **character**| 搜索关键词 | 
 **page** | **integer**| 页码（默认 1） | [optional] [default to 1]
 **limit** | **integer**| 每页数量（默认 20） | [optional] [default to 20]

### Return type

[**GuideSearchResponse**](GuideSearchResponse.md)

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

