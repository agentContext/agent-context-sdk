# OpenAPI\Client\AppApi

All URIs are relative to https://api/v1, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**appGet()**](AppApi.md#appGet) | **GET** /app | 获取 app 列表 |
| [**appIdIdGet()**](AppApi.md#appIdIdGet) | **GET** /app/id/{id} | 获取指定 app 信息（按 id） |
| [**appPkgPkgnameGet()**](AppApi.md#appPkgPkgnameGet) | **GET** /app/pkg/{pkgname} | 获取指定 app 信息（按包名） |
| [**appSearchGet()**](AppApi.md#appSearchGet) | **GET** /app/search | 搜索 app |


## `appGet()`

```php
appGet($page, $limit): \OpenAPI\Client\Model\AppListResponse
```

获取 app 列表

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\AppApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$page = 1; // int | 页码（默认 1）
$limit = 20; // int | 每页数量（默认 20）

try {
    $result = $apiInstance->appGet($page, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AppApi->appGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **page** | **int**| 页码（默认 1） | [optional] [default to 1] |
| **limit** | **int**| 每页数量（默认 20） | [optional] [default to 20] |

### Return type

[**\OpenAPI\Client\Model\AppListResponse**](../Model/AppListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `appIdIdGet()`

```php
appIdIdGet($id): \OpenAPI\Client\Model\AppItemResponse
```

获取指定 app 信息（按 id）

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\AppApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$id = 56; // int

try {
    $result = $apiInstance->appIdIdGet($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AppApi->appIdIdGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **id** | **int**|  | |

### Return type

[**\OpenAPI\Client\Model\AppItemResponse**](../Model/AppItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `appPkgPkgnameGet()`

```php
appPkgPkgnameGet($pkgname): \OpenAPI\Client\Model\AppItemResponse
```

获取指定 app 信息（按包名）

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\AppApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$pkgname = 'pkgname_example'; // string

try {
    $result = $apiInstance->appPkgPkgnameGet($pkgname);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AppApi->appPkgPkgnameGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **pkgname** | **string**|  | |

### Return type

[**\OpenAPI\Client\Model\AppItemResponse**](../Model/AppItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `appSearchGet()`

```php
appSearchGet($q, $page, $limit): \OpenAPI\Client\Model\AppListResponse
```

搜索 app

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\AppApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$q = 'q_example'; // string | 搜索关键词
$page = 1; // int | 页码（默认 1）
$limit = 20; // int | 每页数量（默认 20）

try {
    $result = $apiInstance->appSearchGet($q, $page, $limit);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling AppApi->appSearchGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **q** | **string**| 搜索关键词 | |
| **page** | **int**| 页码（默认 1） | [optional] [default to 1] |
| **limit** | **int**| 每页数量（默认 20） | [optional] [default to 20] |

### Return type

[**\OpenAPI\Client\Model\AppListResponse**](../Model/AppListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
