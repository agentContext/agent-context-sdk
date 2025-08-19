# GuideApi

All URIs are relative to */v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**guideGet**](GuideApi.md#guideGet) | **GET** /guide | 获取 guide 列表（按关键词）
[**guideIdIdGet**](GuideApi.md#guideIdIdGet) | **GET** /guide/id/{id} | 获取指定 guide（按 id）
[**guidePkgPkgnameGet**](GuideApi.md#guidePkgPkgnameGet) | **GET** /guide/pkg/{pkgname} | 获取某包名下的 guide 列表
[**guideSearchPkgnameGet**](GuideApi.md#guideSearchPkgnameGet) | **GET** /guide/search/{pkgname} | 在指定包下根据关键词搜索 guide（词向量相似度）



## guideGet

获取 guide 列表（按关键词）

### Example

```bash
 guideGet  q=value  page=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string** | 搜索关键词 | [default to null]
 **page** | **integer** | 页码（默认 1） | [optional] [default to 1]
 **limit** | **integer** | 每页数量（默认 20） | [optional] [default to 20]

### Return type

[**GuideListResponse**](GuideListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## guideIdIdGet

获取指定 guide（按 id）

### Example

```bash
 guideIdIdGet id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer** |  | [default to null]

### Return type

[**GuideItemResponse**](GuideItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## guidePkgPkgnameGet

获取某包名下的 guide 列表

### Example

```bash
 guidePkgPkgnameGet pkgname=value  page=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pkgname** | **string** |  | [default to null]
 **page** | **integer** | 页码（默认 1） | [optional] [default to 1]
 **limit** | **integer** | 每页数量（默认 20） | [optional] [default to 20]

### Return type

[**GuideListResponse**](GuideListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## guideSearchPkgnameGet

在指定包下根据关键词搜索 guide（词向量相似度）

### Example

```bash
 guideSearchPkgnameGet pkgname=value  q=value  page=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pkgname** | **string** |  | [default to null]
 **q** | **string** | 搜索关键词 | [default to null]
 **page** | **integer** | 页码（默认 1） | [optional] [default to 1]
 **limit** | **integer** | 每页数量（默认 20） | [optional] [default to 20]

### Return type

[**GuideSearchResponse**](GuideSearchResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

