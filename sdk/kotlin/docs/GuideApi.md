# GuideApi

All URIs are relative to *https://api/v1*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**guideGet**](GuideApi.md#guideGet) | **GET** /guide | 获取 guide 列表（按关键词） |
| [**guideIdIdGet**](GuideApi.md#guideIdIdGet) | **GET** /guide/id/{id} | 获取指定 guide（按 id） |
| [**guidePkgPkgnameGet**](GuideApi.md#guidePkgPkgnameGet) | **GET** /guide/pkg/{pkgname} | 获取某包名下的 guide 列表 |
| [**guideSearchPkgnameGet**](GuideApi.md#guideSearchPkgnameGet) | **GET** /guide/search/{pkgname} | 在指定包下根据关键词搜索 guide（词向量相似度） |


<a id="guideGet"></a>
# **guideGet**
> GuideListResponse guideGet(q, page, limit)

获取 guide 列表（按关键词）

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = GuideApi()
val q : kotlin.String = q_example // kotlin.String | 搜索关键词
val page : kotlin.Int = 56 // kotlin.Int | 页码（默认 1）
val limit : kotlin.Int = 56 // kotlin.Int | 每页数量（默认 20）
try {
    val result : GuideListResponse = apiInstance.guideGet(q, page, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling GuideApi#guideGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GuideApi#guideGet")
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

[**GuideListResponse**](GuideListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="guideIdIdGet"></a>
# **guideIdIdGet**
> GuideItemResponse guideIdIdGet(id)

获取指定 guide（按 id）

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = GuideApi()
val id : kotlin.Long = 789 // kotlin.Long | 
try {
    val result : GuideItemResponse = apiInstance.guideIdIdGet(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling GuideApi#guideIdIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GuideApi#guideIdIdGet")
    e.printStackTrace()
}
```

### Parameters
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **kotlin.Long**|  | |

### Return type

[**GuideItemResponse**](GuideItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="guidePkgPkgnameGet"></a>
# **guidePkgPkgnameGet**
> GuideListResponse guidePkgPkgnameGet(pkgname, page, limit)

获取某包名下的 guide 列表

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = GuideApi()
val pkgname : kotlin.String = pkgname_example // kotlin.String | 
val page : kotlin.Int = 56 // kotlin.Int | 页码（默认 1）
val limit : kotlin.Int = 56 // kotlin.Int | 每页数量（默认 20）
try {
    val result : GuideListResponse = apiInstance.guidePkgPkgnameGet(pkgname, page, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling GuideApi#guidePkgPkgnameGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GuideApi#guidePkgPkgnameGet")
    e.printStackTrace()
}
```

### Parameters
| **pkgname** | **kotlin.String**|  | |
| **page** | **kotlin.Int**| 页码（默认 1） | [optional] [default to 1] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limit** | **kotlin.Int**| 每页数量（默认 20） | [optional] [default to 20] |

### Return type

[**GuideListResponse**](GuideListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a id="guideSearchPkgnameGet"></a>
# **guideSearchPkgnameGet**
> GuideSearchResponse guideSearchPkgnameGet(pkgname, q, page, limit)

在指定包下根据关键词搜索 guide（词向量相似度）

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = GuideApi()
val pkgname : kotlin.String = pkgname_example // kotlin.String | 
val q : kotlin.String = q_example // kotlin.String | 搜索关键词
val page : kotlin.Int = 56 // kotlin.Int | 页码（默认 1）
val limit : kotlin.Int = 56 // kotlin.Int | 每页数量（默认 20）
try {
    val result : GuideSearchResponse = apiInstance.guideSearchPkgnameGet(pkgname, q, page, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling GuideApi#guideSearchPkgnameGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GuideApi#guideSearchPkgnameGet")
    e.printStackTrace()
}
```

### Parameters
| **pkgname** | **kotlin.String**|  | |
| **q** | **kotlin.String**| 搜索关键词 | |
| **page** | **kotlin.Int**| 页码（默认 1） | [optional] [default to 1] |
| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **limit** | **kotlin.Int**| 每页数量（默认 20） | [optional] [default to 20] |

### Return type

[**GuideSearchResponse**](GuideSearchResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

