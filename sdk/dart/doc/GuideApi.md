# openapi.api.GuideApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**guideGet**](GuideApi.md#guideget) | **GET** /guide | 获取 guide 列表（按关键词）
[**guideIdIdGet**](GuideApi.md#guideididget) | **GET** /guide/id/{id} | 获取指定 guide（按 id）
[**guidePkgPkgnameGet**](GuideApi.md#guidepkgpkgnameget) | **GET** /guide/pkg/{pkgname} | 获取某包名下的 guide 列表
[**guideSearchPkgnameGet**](GuideApi.md#guidesearchpkgnameget) | **GET** /guide/search/{pkgname} | 在指定包下根据关键词搜索 guide（词向量相似度）


# **guideGet**
> GuideListResponse guideGet(q, page, limit)

获取 guide 列表（按关键词）

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = GuideApi();
final q = q_example; // String | 搜索关键词
final page = 56; // int | 页码（默认 1）
final limit = 56; // int | 每页数量（默认 20）

try {
    final result = api_instance.guideGet(q, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling GuideApi->guideGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| 搜索关键词 | 
 **page** | **int**| 页码（默认 1） | [optional] [default to 1]
 **limit** | **int**| 每页数量（默认 20） | [optional] [default to 20]

### Return type

[**GuideListResponse**](GuideListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **guideIdIdGet**
> GuideItemResponse guideIdIdGet(id)

获取指定 guide（按 id）

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = GuideApi();
final id = 789; // int | 

try {
    final result = api_instance.guideIdIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling GuideApi->guideIdIdGet: $e\n');
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **guidePkgPkgnameGet**
> GuideListResponse guidePkgPkgnameGet(pkgname, page, limit)

获取某包名下的 guide 列表

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = GuideApi();
final pkgname = pkgname_example; // String | 
final page = 56; // int | 页码（默认 1）
final limit = 56; // int | 每页数量（默认 20）

try {
    final result = api_instance.guidePkgPkgnameGet(pkgname, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling GuideApi->guidePkgPkgnameGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pkgname** | **String**|  | 
 **page** | **int**| 页码（默认 1） | [optional] [default to 1]
 **limit** | **int**| 每页数量（默认 20） | [optional] [default to 20]

### Return type

[**GuideListResponse**](GuideListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **guideSearchPkgnameGet**
> GuideSearchResponse guideSearchPkgnameGet(pkgname, q, page, limit)

在指定包下根据关键词搜索 guide（词向量相似度）

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = GuideApi();
final pkgname = pkgname_example; // String | 
final q = q_example; // String | 搜索关键词
final page = 56; // int | 页码（默认 1）
final limit = 56; // int | 每页数量（默认 20）

try {
    final result = api_instance.guideSearchPkgnameGet(pkgname, q, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling GuideApi->guideSearchPkgnameGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pkgname** | **String**|  | 
 **q** | **String**| 搜索关键词 | 
 **page** | **int**| 页码（默认 1） | [optional] [default to 1]
 **limit** | **int**| 每页数量（默认 20） | [optional] [default to 20]

### Return type

[**GuideSearchResponse**](GuideSearchResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

