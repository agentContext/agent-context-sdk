# \AppApi

All URIs are relative to *https://api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**app_get**](AppApi.md#app_get) | **GET** /app | 获取 app 列表
[**app_id_id_get**](AppApi.md#app_id_id_get) | **GET** /app/id/{id} | 获取指定 app 信息（按 id）
[**app_pkg_pkgname_get**](AppApi.md#app_pkg_pkgname_get) | **GET** /app/pkg/{pkgname} | 获取指定 app 信息（按包名）
[**app_search_get**](AppApi.md#app_search_get) | **GET** /app/search | 搜索 app



## app_get

> models::AppListResponse app_get(page, limit)
获取 app 列表

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**page** | Option<**i32**> | 页码（默认 1） |  |[default to 1]
**limit** | Option<**i32**> | 每页数量（默认 20） |  |[default to 20]

### Return type

[**models::AppListResponse**](AppListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## app_id_id_get

> models::AppItemResponse app_id_id_get(id)
获取指定 app 信息（按 id）

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** |  | [required] |

### Return type

[**models::AppItemResponse**](AppItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## app_pkg_pkgname_get

> models::AppItemResponse app_pkg_pkgname_get(pkgname)
获取指定 app 信息（按包名）

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**pkgname** | **String** |  | [required] |

### Return type

[**models::AppItemResponse**](AppItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## app_search_get

> models::AppListResponse app_search_get(q, page, limit)
搜索 app

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**q** | **String** | 搜索关键词 | [required] |
**page** | Option<**i32**> | 页码（默认 1） |  |[default to 1]
**limit** | Option<**i32**> | 每页数量（默认 20） |  |[default to 20]

### Return type

[**models::AppListResponse**](AppListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

