# agent-context-sdk.Api.AppApi

All URIs are relative to *https://api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**AppGet**](AppApi.md#appget) | **GET** /app | 获取 app 列表 |
| [**AppIdIdGet**](AppApi.md#appididget) | **GET** /app/id/{id} | 获取指定 app 信息（按 id） |
| [**AppPkgPkgnameGet**](AppApi.md#apppkgpkgnameget) | **GET** /app/pkg/{pkgname} | 获取指定 app 信息（按包名） |
| [**AppSearchGet**](AppApi.md#appsearchget) | **GET** /app/search | 搜索 app |

<a id="appget"></a>
# **AppGet**
> AppListResponse AppGet (int page = null, int limit = null)

获取 app 列表


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **page** | **int** | 页码（默认 1） | [optional] [default to 1] |
| **limit** | **int** | 每页数量（默认 20） | [optional] [default to 20] |

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

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="appididget"></a>
# **AppIdIdGet**
> AppItemResponse AppIdIdGet (int id)

获取指定 app 信息（按 id）


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **int** |  |  |

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

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="apppkgpkgnameget"></a>
# **AppPkgPkgnameGet**
> AppItemResponse AppPkgPkgnameGet (string pkgname)

获取指定 app 信息（按包名）


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **pkgname** | **string** |  |  |

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

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="appsearchget"></a>
# **AppSearchGet**
> AppListResponse AppSearchGet (string q, int page = null, int limit = null)

搜索 app


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **q** | **string** | 搜索关键词 |  |
| **page** | **int** | 页码（默认 1） | [optional] [default to 1] |
| **limit** | **int** | 每页数量（默认 20） | [optional] [default to 20] |

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

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

