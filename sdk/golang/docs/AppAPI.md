# \AppAPI

All URIs are relative to *https://api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AppGet**](AppAPI.md#AppGet) | **Get** /app | 获取 app 列表
[**AppIdIdGet**](AppAPI.md#AppIdIdGet) | **Get** /app/id/{id} | 获取指定 app 信息（按 id）
[**AppPkgPkgnameGet**](AppAPI.md#AppPkgPkgnameGet) | **Get** /app/pkg/{pkgname} | 获取指定 app 信息（按包名）
[**AppSearchGet**](AppAPI.md#AppSearchGet) | **Get** /app/search | 搜索 app



## AppGet

> AppListResponse AppGet(ctx).Page(page).Limit(limit).Execute()

获取 app 列表

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	page := int32(56) // int32 | 页码（默认 1） (optional) (default to 1)
	limit := int32(56) // int32 | 每页数量（默认 20） (optional) (default to 20)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AppAPI.AppGet(context.Background()).Page(page).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AppAPI.AppGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AppGet`: AppListResponse
	fmt.Fprintf(os.Stdout, "Response from `AppAPI.AppGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAppGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int32** | 页码（默认 1） | [default to 1]
 **limit** | **int32** | 每页数量（默认 20） | [default to 20]

### Return type

[**AppListResponse**](AppListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AppIdIdGet

> AppItemResponse AppIdIdGet(ctx, id).Execute()

获取指定 app 信息（按 id）

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AppAPI.AppIdIdGet(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AppAPI.AppIdIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AppIdIdGet`: AppItemResponse
	fmt.Fprintf(os.Stdout, "Response from `AppAPI.AppIdIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAppIdIdGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AppItemResponse**](AppItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AppPkgPkgnameGet

> AppItemResponse AppPkgPkgnameGet(ctx, pkgname).Execute()

获取指定 app 信息（按包名）

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	pkgname := "pkgname_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AppAPI.AppPkgPkgnameGet(context.Background(), pkgname).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AppAPI.AppPkgPkgnameGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AppPkgPkgnameGet`: AppItemResponse
	fmt.Fprintf(os.Stdout, "Response from `AppAPI.AppPkgPkgnameGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**pkgname** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiAppPkgPkgnameGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**AppItemResponse**](AppItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AppSearchGet

> AppListResponse AppSearchGet(ctx).Q(q).Page(page).Limit(limit).Execute()

搜索 app

### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	q := "q_example" // string | 搜索关键词
	page := int32(56) // int32 | 页码（默认 1） (optional) (default to 1)
	limit := int32(56) // int32 | 每页数量（默认 20） (optional) (default to 20)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.AppAPI.AppSearchGet(context.Background()).Q(q).Page(page).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `AppAPI.AppSearchGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AppSearchGet`: AppListResponse
	fmt.Fprintf(os.Stdout, "Response from `AppAPI.AppSearchGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAppSearchGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string** | 搜索关键词 | 
 **page** | **int32** | 页码（默认 1） | [default to 1]
 **limit** | **int32** | 每页数量（默认 20） | [default to 20]

### Return type

[**AppListResponse**](AppListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

