# AppApi

All URIs are relative to *https://api/v1*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**appGet**](AppApi.md#appGet) | **GET** /app | 获取 app 列表 |
| [**appIdIdGet**](AppApi.md#appIdIdGet) | **GET** /app/id/{id} | 获取指定 app 信息（按 id） |
| [**appPkgPkgnameGet**](AppApi.md#appPkgPkgnameGet) | **GET** /app/pkg/{pkgname} | 获取指定 app 信息（按包名） |
| [**appSearchGet**](AppApi.md#appSearchGet) | **GET** /app/search | 搜索 app |


<a id="appGet"></a>
# **appGet**
> AppListResponse appGet(page, limit)

获取 app 列表

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.AppApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api/v1");

    AppApi apiInstance = new AppApi(defaultClient);
    Integer page = 1; // Integer | 页码（默认 1）
    Integer limit = 20; // Integer | 每页数量（默认 20）
    try {
      AppListResponse result = apiInstance.appGet(page, limit);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AppApi#appGet");
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
| **page** | **Integer**| 页码（默认 1） | [optional] [default to 1] |
| **limit** | **Integer**| 每页数量（默认 20） | [optional] [default to 20] |

### Return type

[**AppListResponse**](AppListResponse.md)

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

<a id="appIdIdGet"></a>
# **appIdIdGet**
> AppItemResponse appIdIdGet(id)

获取指定 app 信息（按 id）

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.AppApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api/v1");

    AppApi apiInstance = new AppApi(defaultClient);
    Integer id = 56; // Integer | 
    try {
      AppItemResponse result = apiInstance.appIdIdGet(id);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AppApi#appIdIdGet");
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
| **id** | **Integer**|  | |

### Return type

[**AppItemResponse**](AppItemResponse.md)

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

<a id="appPkgPkgnameGet"></a>
# **appPkgPkgnameGet**
> AppItemResponse appPkgPkgnameGet(pkgname)

获取指定 app 信息（按包名）

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.AppApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api/v1");

    AppApi apiInstance = new AppApi(defaultClient);
    String pkgname = "pkgname_example"; // String | 
    try {
      AppItemResponse result = apiInstance.appPkgPkgnameGet(pkgname);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AppApi#appPkgPkgnameGet");
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

### Return type

[**AppItemResponse**](AppItemResponse.md)

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

<a id="appSearchGet"></a>
# **appSearchGet**
> AppListResponse appSearchGet(q, page, limit)

搜索 app

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.AppApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api/v1");

    AppApi apiInstance = new AppApi(defaultClient);
    String q = "q_example"; // String | 搜索关键词
    Integer page = 1; // Integer | 页码（默认 1）
    Integer limit = 20; // Integer | 每页数量（默认 20）
    try {
      AppListResponse result = apiInstance.appSearchGet(q, page, limit);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling AppApi#appSearchGet");
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

[**AppListResponse**](AppListResponse.md)

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

