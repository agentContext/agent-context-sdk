# GuideApi

All URIs are relative to *https://api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**guideGet**](GuideApi.md#guideGet) | **GET** /guide | 获取 guide 列表（按关键词） |
| [**guideIdIdGet**](GuideApi.md#guideIdIdGet) | **GET** /guide/id/{id} | 获取指定 guide（按 id） |
| [**guidePkgPkgnameGet**](GuideApi.md#guidePkgPkgnameGet) | **GET** /guide/pkg/{pkgname} | 获取某包名下的 guide 列表 |
| [**guideSearchPkgnameGet**](GuideApi.md#guideSearchPkgnameGet) | **GET** /guide/search/{pkgname} | 在指定包下根据关键词搜索 guide（词向量相似度） |


<a id="guideGet"></a>
# **guideGet**
> GuideListResponse guideGet(q, page, limit)

获取 guide 列表（按关键词）

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.GuideApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api/v1");

    GuideApi apiInstance = new GuideApi(defaultClient);
    String q = "q_example"; // String | 搜索关键词
    Integer page = 1; // Integer | 页码（默认 1）
    Integer limit = 20; // Integer | 每页数量（默认 20）
    try {
      GuideListResponse result = apiInstance.guideGet(q, page, limit);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling GuideApi#guideGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **q** | **String**| 搜索关键词 | |
| **page** | **Integer**| 页码（默认 1） | [optional] [default to 1] |
| **limit** | **Integer**| 每页数量（默认 20） | [optional] [default to 20] |

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

<a id="guideIdIdGet"></a>
# **guideIdIdGet**
> GuideItemResponse guideIdIdGet(id)

获取指定 guide（按 id）

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.GuideApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api/v1");

    GuideApi apiInstance = new GuideApi(defaultClient);
    Long id = 56L; // Long | 
    try {
      GuideItemResponse result = apiInstance.guideIdIdGet(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling GuideApi#guideIdIdGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **id** | **Long**|  | |

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

<a id="guidePkgPkgnameGet"></a>
# **guidePkgPkgnameGet**
> GuideListResponse guidePkgPkgnameGet(pkgname, page, limit)

获取某包名下的 guide 列表

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.GuideApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api/v1");

    GuideApi apiInstance = new GuideApi(defaultClient);
    String pkgname = "pkgname_example"; // String | 
    Integer page = 1; // Integer | 页码（默认 1）
    Integer limit = 20; // Integer | 每页数量（默认 20）
    try {
      GuideListResponse result = apiInstance.guidePkgPkgnameGet(pkgname, page, limit);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling GuideApi#guidePkgPkgnameGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **pkgname** | **String**|  | |
| **page** | **Integer**| 页码（默认 1） | [optional] [default to 1] |
| **limit** | **Integer**| 每页数量（默认 20） | [optional] [default to 20] |

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

<a id="guideSearchPkgnameGet"></a>
# **guideSearchPkgnameGet**
> GuideSearchResponse guideSearchPkgnameGet(pkgname, q, page, limit)

在指定包下根据关键词搜索 guide（词向量相似度）

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.GuideApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api/v1");

    GuideApi apiInstance = new GuideApi(defaultClient);
    String pkgname = "pkgname_example"; // String | 
    String q = "q_example"; // String | 搜索关键词
    Integer page = 1; // Integer | 页码（默认 1）
    Integer limit = 20; // Integer | 每页数量（默认 20）
    try {
      GuideSearchResponse result = apiInstance.guideSearchPkgnameGet(pkgname, q, page, limit);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling GuideApi#guideSearchPkgnameGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **pkgname** | **String**|  | |
| **q** | **String**| 搜索关键词 | |
| **page** | **Integer**| 页码（默认 1） | [optional] [default to 1] |
| **limit** | **Integer**| 每页数量（默认 20） | [optional] [default to 20] |

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

