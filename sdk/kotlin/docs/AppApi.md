# AppApi

All URIs are relative to *https://api/v1*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**appGet**](AppApi.md#appGet) | **GET** /app | 获取 app 列表 |
| [**appIdIdGet**](AppApi.md#appIdIdGet) | **GET** /app/id/{id} | 获取指定 app 信息（按 id） |
| [**appPkgPkgnameGet**](AppApi.md#appPkgPkgnameGet) | **GET** /app/pkg/{pkgname} | 获取指定 app 信息（按包名） |
| [**appSearchGet**](AppApi.md#appSearchGet) | **GET** /app/search | 搜索 app |


<a id="appGet"></a>
# **appGet**
> AppListResponse appGet(page, limit)

获取 app 列表

### Example
```kotlin
// Import classes:
//import agent-context-sdk.infrastructure.*
//import agent-context-sdk.models.*

val apiInstance = AppApi()
val page : kotlin.Int = 56 // kotlin.Int | 页码（默认 1）
val limit : kotlin.Int = 56 // kotlin.Int | 每页数量（默认 20）
try {
    val result : AppListResponse = apiInstance.appGet(page, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AppApi#appGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AppApi#appGet")
    e.printStackTrace()
}
```

### Parameters
| **page** | **kotlin.Int**| 页码（默认 1） | [optional] [default to 1] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limit** | **kotlin.Int**| 每页数量（默认 20） | [optional] [default to 20] |

### Return type

[**AppListResponse**](AppListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="appIdIdGet"></a>
# **appIdIdGet**
> AppItemResponse appIdIdGet(id)

获取指定 app 信息（按 id）

### Example
```kotlin
// Import classes:
//import agent-context-sdk.infrastructure.*
//import agent-context-sdk.models.*

val apiInstance = AppApi()
val id : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : AppItemResponse = apiInstance.appIdIdGet(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AppApi#appIdIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AppApi#appIdIdGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.Int**|  | |

### Return type

[**AppItemResponse**](AppItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="appPkgPkgnameGet"></a>
# **appPkgPkgnameGet**
> AppItemResponse appPkgPkgnameGet(pkgname)

获取指定 app 信息（按包名）

### Example
```kotlin
// Import classes:
//import agent-context-sdk.infrastructure.*
//import agent-context-sdk.models.*

val apiInstance = AppApi()
val pkgname : kotlin.String = pkgname_example // kotlin.String | 
try {
    val result : AppItemResponse = apiInstance.appPkgPkgnameGet(pkgname)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AppApi#appPkgPkgnameGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AppApi#appPkgPkgnameGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **pkgname** | **kotlin.String**|  | |

### Return type

[**AppItemResponse**](AppItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="appSearchGet"></a>
# **appSearchGet**
> AppListResponse appSearchGet(q, page, limit)

搜索 app

### Example
```kotlin
// Import classes:
//import agent-context-sdk.infrastructure.*
//import agent-context-sdk.models.*

val apiInstance = AppApi()
val q : kotlin.String = q_example // kotlin.String | 搜索关键词
val page : kotlin.Int = 56 // kotlin.Int | 页码（默认 1）
val limit : kotlin.Int = 56 // kotlin.Int | 每页数量（默认 20）
try {
    val result : AppListResponse = apiInstance.appSearchGet(q, page, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AppApi#appSearchGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AppApi#appSearchGet")
    e.printStackTrace()
}
```

### Parameters
| **q** | **kotlin.String**| 搜索关键词 | |
| **page** | **kotlin.Int**| 页码（默认 1） | [optional] [default to 1] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limit** | **kotlin.Int**| 每页数量（默认 20） | [optional] [default to 20] |

### Return type

[**AppListResponse**](AppListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

