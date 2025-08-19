# AppApi

All URIs are relative to */v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appGet**](AppApi.md#appGet) | **GET** /app | 获取 app 列表
[**appIdIdGet**](AppApi.md#appIdIdGet) | **GET** /app/id/{id} | 获取指定 app 信息（按 id）
[**appPkgPkgnameGet**](AppApi.md#appPkgPkgnameGet) | **GET** /app/pkg/{pkgname} | 获取指定 app 信息（按包名）
[**appSearchGet**](AppApi.md#appSearchGet) | **GET** /app/search | 搜索 app



## appGet

获取 app 列表

### Example

```bash
 appGet  page=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **integer** | 页码（默认 1） | [optional] [default to 1]
 **limit** | **integer** | 每页数量（默认 20） | [optional] [default to 20]

### Return type

[**AppListResponse**](AppListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## appIdIdGet

获取指定 app 信息（按 id）

### Example

```bash
 appIdIdGet id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **integer** |  | [default to null]

### Return type

[**AppItemResponse**](AppItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## appPkgPkgnameGet

获取指定 app 信息（按包名）

### Example

```bash
 appPkgPkgnameGet pkgname=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pkgname** | **string** |  | [default to null]

### Return type

[**AppItemResponse**](AppItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## appSearchGet

搜索 app

### Example

```bash
 appSearchGet  q=value  page=value  limit=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string** | 搜索关键词 | [default to null]
 **page** | **integer** | 页码（默认 1） | [optional] [default to 1]
 **limit** | **integer** | 每页数量（默认 20） | [optional] [default to 20]

### Return type

[**AppListResponse**](AppListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

