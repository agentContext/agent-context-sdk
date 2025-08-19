# agent-context-sdk.Api.GuideApi

All URIs are relative to *https://api/v1*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**GuideGet**](GuideApi.md#guideget) | **GET** /guide | 获取 guide 列表（按关键词） |
| [**GuideIdIdGet**](GuideApi.md#guideididget) | **GET** /guide/id/{id} | 获取指定 guide（按 id） |
| [**GuidePkgPkgnameGet**](GuideApi.md#guidepkgpkgnameget) | **GET** /guide/pkg/{pkgname} | 获取某包名下的 guide 列表 |
| [**GuideSearchPkgnameGet**](GuideApi.md#guidesearchpkgnameget) | **GET** /guide/search/{pkgname} | 在指定包下根据关键词搜索 guide（词向量相似度） |

<a id="guideget"></a>
# **GuideGet**
> GuideListResponse GuideGet (string q, int page = null, int limit = null)

获取 guide 列表（按关键词）


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **q** | **string** | 搜索关键词 |  |
| **page** | **int** | 页码（默认 1） | [optional] [default to 1] |
| **limit** | **int** | 每页数量（默认 20） | [optional] [default to 20] |

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

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="guideididget"></a>
# **GuideIdIdGet**
> GuideItemResponse GuideIdIdGet (long id)

获取指定 guide（按 id）


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **long** |  |  |

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

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="guidepkgpkgnameget"></a>
# **GuidePkgPkgnameGet**
> GuideListResponse GuidePkgPkgnameGet (string pkgname, int page = null, int limit = null)

获取某包名下的 guide 列表


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **pkgname** | **string** |  |  |
| **page** | **int** | 页码（默认 1） | [optional] [default to 1] |
| **limit** | **int** | 每页数量（默认 20） | [optional] [default to 20] |

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

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="guidesearchpkgnameget"></a>
# **GuideSearchPkgnameGet**
> GuideSearchResponse GuideSearchPkgnameGet (string pkgname, string q, int page = null, int limit = null)

在指定包下根据关键词搜索 guide（词向量相似度）


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **pkgname** | **string** |  |  |
| **q** | **string** | 搜索关键词 |  |
| **page** | **int** | 页码（默认 1） | [optional] [default to 1] |
| **limit** | **int** | 每页数量（默认 20） | [optional] [default to 20] |

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

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

