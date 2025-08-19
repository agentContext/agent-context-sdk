# OpenAPI\Client\GuideApi

All URIs are relative to https://api/v1, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**guideGet()**](GuideApi.md#guideGet) | **GET** /guide | 获取 guide 列表（按关键词） |
| [**guideIdIdGet()**](GuideApi.md#guideIdIdGet) | **GET** /guide/id/{id} | 获取指定 guide（按 id） |
| [**guidePkgPkgnameGet()**](GuideApi.md#guidePkgPkgnameGet) | **GET** /guide/pkg/{pkgname} | 获取某包名下的 guide 列表 |
| [**guideSearchPkgnameGet()**](GuideApi.md#guideSearchPkgnameGet) | **GET** /guide/search/{pkgname} | 在指定包下根据关键词搜索 guide（词向量相似度） |


## `guideGet()`

```php
guideGet($q, $page, $limit): \OpenAPI\Client\Model\GuideListResponse
```

获取 guide 列表（按关键词）

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\GuideApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$q = 'q_example'; // string | 搜索关键词
$page = 1; // int | 页码（默认 1）
$limit = 20; // int | 每页数量（默认 20）

try {
    $result = $apiInstance->guideGet($q, $page, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GuideApi->guideGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **q** | **string**| 搜索关键词 | |
| **page** | **int**| 页码（默认 1） | [optional] [default to 1] |
| **limit** | **int**| 每页数量（默认 20） | [optional] [default to 20] |

### Return type

[**\OpenAPI\Client\Model\GuideListResponse**](../Model/GuideListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `guideIdIdGet()`

```php
guideIdIdGet($id): \OpenAPI\Client\Model\GuideItemResponse
```

获取指定 guide（按 id）

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\GuideApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 56; // int

try {
    $result = $apiInstance->guideIdIdGet($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GuideApi->guideIdIdGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |

### Return type

[**\OpenAPI\Client\Model\GuideItemResponse**](../Model/GuideItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `guidePkgPkgnameGet()`

```php
guidePkgPkgnameGet($pkgname, $page, $limit): \OpenAPI\Client\Model\GuideListResponse
```

获取某包名下的 guide 列表

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\GuideApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$pkgname = 'pkgname_example'; // string
$page = 1; // int | 页码（默认 1）
$limit = 20; // int | 每页数量（默认 20）

try {
    $result = $apiInstance->guidePkgPkgnameGet($pkgname, $page, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GuideApi->guidePkgPkgnameGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **pkgname** | **string**|  | |
| **page** | **int**| 页码（默认 1） | [optional] [default to 1] |
| **limit** | **int**| 每页数量（默认 20） | [optional] [default to 20] |

### Return type

[**\OpenAPI\Client\Model\GuideListResponse**](../Model/GuideListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `guideSearchPkgnameGet()`

```php
guideSearchPkgnameGet($pkgname, $q, $page, $limit): \OpenAPI\Client\Model\GuideSearchResponse
```

在指定包下根据关键词搜索 guide（词向量相似度）

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\GuideApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$pkgname = 'pkgname_example'; // string
$q = 'q_example'; // string | 搜索关键词
$page = 1; // int | 页码（默认 1）
$limit = 20; // int | 每页数量（默认 20）

try {
    $result = $apiInstance->guideSearchPkgnameGet($pkgname, $q, $page, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling GuideApi->guideSearchPkgnameGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **pkgname** | **string**|  | |
| **q** | **string**| 搜索关键词 | |
| **page** | **int**| 页码（默认 1） | [optional] [default to 1] |
| **limit** | **int**| 每页数量（默认 20） | [optional] [default to 20] |

### Return type

[**\OpenAPI\Client\Model\GuideSearchResponse**](../Model/GuideSearchResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
