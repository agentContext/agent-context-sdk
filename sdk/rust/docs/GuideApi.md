# \GuideApi

All URIs are relative to *https://api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**guide_get**](GuideApi.md#guide_get) | **GET** /guide | 获取 guide 列表（按关键词）
[**guide_id_id_get**](GuideApi.md#guide_id_id_get) | **GET** /guide/id/{id} | 获取指定 guide（按 id）
[**guide_pkg_pkgname_get**](GuideApi.md#guide_pkg_pkgname_get) | **GET** /guide/pkg/{pkgname} | 获取某包名下的 guide 列表
[**guide_search_pkgname_get**](GuideApi.md#guide_search_pkgname_get) | **GET** /guide/search/{pkgname} | 在指定包下根据关键词搜索 guide（词向量相似度）



## guide_get

> models::GuideListResponse guide_get(q, page, limit)
获取 guide 列表（按关键词）

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**q** | **String** | 搜索关键词 | [required] |
**page** | Option<**i32**> | 页码（默认 1） |  |[default to 1]
**limit** | Option<**i32**> | 每页数量（默认 20） |  |[default to 20]

### Return type

[**models::GuideListResponse**](GuideListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## guide_id_id_get

> models::GuideItemResponse guide_id_id_get(id)
获取指定 guide（按 id）

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i64** |  | [required] |

### Return type

[**models::GuideItemResponse**](GuideItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## guide_pkg_pkgname_get

> models::GuideListResponse guide_pkg_pkgname_get(pkgname, page, limit)
获取某包名下的 guide 列表

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**pkgname** | **String** |  | [required] |
**page** | Option<**i32**> | 页码（默认 1） |  |[default to 1]
**limit** | Option<**i32**> | 每页数量（默认 20） |  |[default to 20]

### Return type

[**models::GuideListResponse**](GuideListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## guide_search_pkgname_get

> models::GuideSearchResponse guide_search_pkgname_get(pkgname, q, page, limit)
在指定包下根据关键词搜索 guide（词向量相似度）

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**pkgname** | **String** |  | [required] |
**q** | **String** | 搜索关键词 | [required] |
**page** | Option<**i32**> | 页码（默认 1） |  |[default to 1]
**limit** | Option<**i32**> | 每页数量（默认 20） |  |[default to 20]

### Return type

[**models::GuideSearchResponse**](GuideSearchResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

