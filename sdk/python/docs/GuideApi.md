# agent-context-sdk.GuideApi

All URIs are relative to *https://api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**guide_get**](GuideApi.md#guide_get) | **GET** /guide | 获取 guide 列表（按关键词）
[**guide_id_id_get**](GuideApi.md#guide_id_id_get) | **GET** /guide/id/{id} | 获取指定 guide（按 id）
[**guide_pkg_pkgname_get**](GuideApi.md#guide_pkg_pkgname_get) | **GET** /guide/pkg/{pkgname} | 获取某包名下的 guide 列表
[**guide_search_pkgname_get**](GuideApi.md#guide_search_pkgname_get) | **GET** /guide/search/{pkgname} | 在指定包下根据关键词搜索 guide（词向量相似度）


# **guide_get**
> GuideListResponse guide_get(q, page=page, limit=limit)

获取 guide 列表（按关键词）

### Example


```python
import agent-context-sdk
from agent-context-sdk.models.guide_list_response import GuideListResponse
from agent-context-sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = agent-context-sdk.Configuration(
    host = "https://api/v1"
)


# Enter a context with an instance of the API client
with agent-context-sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = agent-context-sdk.GuideApi(api_client)
    q = 'q_example' # str | 搜索关键词
    page = 1 # int | 页码（默认 1） (optional) (default to 1)
    limit = 20 # int | 每页数量（默认 20） (optional) (default to 20)

    try:
        # 获取 guide 列表（按关键词）
        api_response = api_instance.guide_get(q, page=page, limit=limit)
        print("The response of GuideApi->guide_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GuideApi->guide_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **str**| 搜索关键词 | 
 **page** | **int**| 页码（默认 1） | [optional] [default to 1]
 **limit** | **int**| 每页数量（默认 20） | [optional] [default to 20]

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
**200** | 成功 |  -  |
**0** | 统一错误 |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **guide_id_id_get**
> GuideItemResponse guide_id_id_get(id)

获取指定 guide（按 id）

### Example


```python
import agent-context-sdk
from agent-context-sdk.models.guide_item_response import GuideItemResponse
from agent-context-sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = agent-context-sdk.Configuration(
    host = "https://api/v1"
)


# Enter a context with an instance of the API client
with agent-context-sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = agent-context-sdk.GuideApi(api_client)
    id = 56 # int | 

    try:
        # 获取指定 guide（按 id）
        api_response = api_instance.guide_id_id_get(id)
        print("The response of GuideApi->guide_id_id_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GuideApi->guide_id_id_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

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
**200** | 成功 |  -  |
**0** | 统一错误 |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **guide_pkg_pkgname_get**
> GuideListResponse guide_pkg_pkgname_get(pkgname, page=page, limit=limit)

获取某包名下的 guide 列表

### Example


```python
import agent-context-sdk
from agent-context-sdk.models.guide_list_response import GuideListResponse
from agent-context-sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = agent-context-sdk.Configuration(
    host = "https://api/v1"
)


# Enter a context with an instance of the API client
with agent-context-sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = agent-context-sdk.GuideApi(api_client)
    pkgname = 'pkgname_example' # str | 
    page = 1 # int | 页码（默认 1） (optional) (default to 1)
    limit = 20 # int | 每页数量（默认 20） (optional) (default to 20)

    try:
        # 获取某包名下的 guide 列表
        api_response = api_instance.guide_pkg_pkgname_get(pkgname, page=page, limit=limit)
        print("The response of GuideApi->guide_pkg_pkgname_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GuideApi->guide_pkg_pkgname_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pkgname** | **str**|  | 
 **page** | **int**| 页码（默认 1） | [optional] [default to 1]
 **limit** | **int**| 每页数量（默认 20） | [optional] [default to 20]

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
**200** | 成功 |  -  |
**0** | 统一错误 |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **guide_search_pkgname_get**
> GuideSearchResponse guide_search_pkgname_get(pkgname, q, page=page, limit=limit)

在指定包下根据关键词搜索 guide（词向量相似度）

### Example


```python
import agent-context-sdk
from agent-context-sdk.models.guide_search_response import GuideSearchResponse
from agent-context-sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = agent-context-sdk.Configuration(
    host = "https://api/v1"
)


# Enter a context with an instance of the API client
with agent-context-sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = agent-context-sdk.GuideApi(api_client)
    pkgname = 'pkgname_example' # str | 
    q = 'q_example' # str | 搜索关键词
    page = 1 # int | 页码（默认 1） (optional) (default to 1)
    limit = 20 # int | 每页数量（默认 20） (optional) (default to 20)

    try:
        # 在指定包下根据关键词搜索 guide（词向量相似度）
        api_response = api_instance.guide_search_pkgname_get(pkgname, q, page=page, limit=limit)
        print("The response of GuideApi->guide_search_pkgname_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GuideApi->guide_search_pkgname_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pkgname** | **str**|  | 
 **q** | **str**| 搜索关键词 | 
 **page** | **int**| 页码（默认 1） | [optional] [default to 1]
 **limit** | **int**| 每页数量（默认 20） | [optional] [default to 20]

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
**200** | 成功 |  -  |
**0** | 统一错误 |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

