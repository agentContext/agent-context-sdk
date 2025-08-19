# openapi.api.AppApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appGet**](AppApi.md#appget) | **GET** /app | 获取 app 列表
[**appIdIdGet**](AppApi.md#appididget) | **GET** /app/id/{id} | 获取指定 app 信息（按 id）
[**appPkgPkgnameGet**](AppApi.md#apppkgpkgnameget) | **GET** /app/pkg/{pkgname} | 获取指定 app 信息（按包名）
[**appSearchGet**](AppApi.md#appsearchget) | **GET** /app/search | 搜索 app


# **appGet**
> AppListResponse appGet(page, limit)

获取 app 列表

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AppApi();
final page = 56; // int | 页码（默认 1）
final limit = 56; // int | 每页数量（默认 20）

try {
    final result = api_instance.appGet(page, limit);
    print(result);
} catch (e) {
    print('Exception when calling AppApi->appGet: $e\n');
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appIdIdGet**
> AppItemResponse appIdIdGet(id)

获取指定 app 信息（按 id）

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AppApi();
final id = 56; // int | 

try {
    final result = api_instance.appIdIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling AppApi->appIdIdGet: $e\n');
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appPkgPkgnameGet**
> AppItemResponse appPkgPkgnameGet(pkgname)

获取指定 app 信息（按包名）

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AppApi();
final pkgname = pkgname_example; // String | 

try {
    final result = api_instance.appPkgPkgnameGet(pkgname);
    print(result);
} catch (e) {
    print('Exception when calling AppApi->appPkgPkgnameGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pkgname** | **String**|  | 

### Return type

[**AppItemResponse**](AppItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appSearchGet**
> AppListResponse appSearchGet(q, page, limit)

搜索 app

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AppApi();
final q = q_example; // String | 搜索关键词
final page = 56; // int | 页码（默认 1）
final limit = 56; // int | 每页数量（默认 20）

try {
    final result = api_instance.appSearchGet(q, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling AppApi->appSearchGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| 搜索关键词 | 
 **page** | **int**| 页码（默认 1） | [optional] [default to 1]
 **limit** | **int**| 每页数量（默认 20） | [optional] [default to 20]

### Return type

[**AppListResponse**](AppListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

