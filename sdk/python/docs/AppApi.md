# openapi_client.AppApi

All URIs are relative to *https://api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**app_get**](AppApi.md#app_get) | **GET** /app | 获取 app 列表
[**app_id_id_get**](AppApi.md#app_id_id_get) | **GET** /app/id/{id} | 获取指定 app 信息（按 id）
[**app_pkg_pkgname_get**](AppApi.md#app_pkg_pkgname_get) | **GET** /app/pkg/{pkgname} | 获取指定 app 信息（按包名）
[**app_search_get**](AppApi.md#app_search_get) | **GET** /app/search | 搜索 app


# **app_get**
> AppListResponse app_get(page=page, limit=limit)

获取 app 列表

### Example


```python
import openapi_client
from openapi_client.models.app_list_response import AppListResponse
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api/v1"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.AppApi(api_client)
    page = 1 # int | 页码（默认 1） (optional) (default to 1)
    limit = 20 # int | 每页数量（默认 20） (optional) (default to 20)

    try:
        # 获取 app 列表
        api_response = api_instance.app_get(page=page, limit=limit)
        print("The response of AppApi->app_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AppApi->app_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| 页码（默认 1） | [optional] [default to 1]
 **limit** | **int**| 每页数量（默认 20） | [optional] [default to 20]

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
**200** | 成功 |  -  |
**0** | 统一错误 |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **app_id_id_get**
> AppItemResponse app_id_id_get(id)

获取指定 app 信息（按 id）

### Example


```python
import openapi_client
from openapi_client.models.app_item_response import AppItemResponse
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api/v1"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.AppApi(api_client)
    id = 56 # int | 

    try:
        # 获取指定 app 信息（按 id）
        api_response = api_instance.app_id_id_get(id)
        print("The response of AppApi->app_id_id_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AppApi->app_id_id_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

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
**200** | 成功 |  -  |
**0** | 统一错误 |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **app_pkg_pkgname_get**
> AppItemResponse app_pkg_pkgname_get(pkgname)

获取指定 app 信息（按包名）

### Example


```python
import openapi_client
from openapi_client.models.app_item_response import AppItemResponse
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api/v1"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.AppApi(api_client)
    pkgname = 'pkgname_example' # str | 

    try:
        # 获取指定 app 信息（按包名）
        api_response = api_instance.app_pkg_pkgname_get(pkgname)
        print("The response of AppApi->app_pkg_pkgname_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AppApi->app_pkg_pkgname_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pkgname** | **str**|  | 

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
**200** | 成功 |  -  |
**0** | 统一错误 |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **app_search_get**
> AppListResponse app_search_get(q, page=page, limit=limit)

搜索 app

### Example


```python
import openapi_client
from openapi_client.models.app_list_response import AppListResponse
from openapi_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = openapi_client.Configuration(
    host = "https://api/v1"
)


# Enter a context with an instance of the API client
with openapi_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openapi_client.AppApi(api_client)
    q = 'q_example' # str | 搜索关键词
    page = 1 # int | 页码（默认 1） (optional) (default to 1)
    limit = 20 # int | 每页数量（默认 20） (optional) (default to 20)

    try:
        # 搜索 app
        api_response = api_instance.app_search_get(q, page=page, limit=limit)
        print("The response of AppApi->app_search_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AppApi->app_search_get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **str**| 搜索关键词 | 
 **page** | **int**| 页码（默认 1） | [optional] [default to 1]
 **limit** | **int**| 每页数量（默认 20） | [optional] [default to 20]

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
**200** | 成功 |  -  |
**0** | 统一错误 |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

