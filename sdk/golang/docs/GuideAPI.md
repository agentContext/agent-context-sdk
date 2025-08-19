# \GuideAPI

All URIs are relative to *https://api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GuideGet**](GuideAPI.md#GuideGet) | **Get** /guide | 获取 guide 列表（按关键词）
[**GuideIdIdGet**](GuideAPI.md#GuideIdIdGet) | **Get** /guide/id/{id} | 获取指定 guide（按 id）
[**GuidePkgPkgnameGet**](GuideAPI.md#GuidePkgPkgnameGet) | **Get** /guide/pkg/{pkgname} | 获取某包名下的 guide 列表
[**GuideSearchPkgnameGet**](GuideAPI.md#GuideSearchPkgnameGet) | **Get** /guide/search/{pkgname} | 在指定包下根据关键词搜索 guide（词向量相似度）



## GuideGet

> GuideListResponse GuideGet(ctx).Q(q).Page(page).Limit(limit).Execute()

获取 guide 列表（按关键词）

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
	resp, r, err := apiClient.GuideAPI.GuideGet(context.Background()).Q(q).Page(page).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `GuideAPI.GuideGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GuideGet`: GuideListResponse
	fmt.Fprintf(os.Stdout, "Response from `GuideAPI.GuideGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGuideGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string** | 搜索关键词 | 
 **page** | **int32** | 页码（默认 1） | [default to 1]
 **limit** | **int32** | 每页数量（默认 20） | [default to 20]

### Return type

[**GuideListResponse**](GuideListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GuideIdIdGet

> GuideItemResponse GuideIdIdGet(ctx, id).Execute()

获取指定 guide（按 id）

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
	id := int64(789) // int64 | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.GuideAPI.GuideIdIdGet(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `GuideAPI.GuideIdIdGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GuideIdIdGet`: GuideItemResponse
	fmt.Fprintf(os.Stdout, "Response from `GuideAPI.GuideIdIdGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int64** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGuideIdIdGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**GuideItemResponse**](GuideItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GuidePkgPkgnameGet

> GuideListResponse GuidePkgPkgnameGet(ctx, pkgname).Page(page).Limit(limit).Execute()

获取某包名下的 guide 列表

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
	page := int32(56) // int32 | 页码（默认 1） (optional) (default to 1)
	limit := int32(56) // int32 | 每页数量（默认 20） (optional) (default to 20)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.GuideAPI.GuidePkgPkgnameGet(context.Background(), pkgname).Page(page).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `GuideAPI.GuidePkgPkgnameGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GuidePkgPkgnameGet`: GuideListResponse
	fmt.Fprintf(os.Stdout, "Response from `GuideAPI.GuidePkgPkgnameGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**pkgname** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGuidePkgPkgnameGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **page** | **int32** | 页码（默认 1） | [default to 1]
 **limit** | **int32** | 每页数量（默认 20） | [default to 20]

### Return type

[**GuideListResponse**](GuideListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GuideSearchPkgnameGet

> GuideSearchResponse GuideSearchPkgnameGet(ctx, pkgname).Q(q).Page(page).Limit(limit).Execute()

在指定包下根据关键词搜索 guide（词向量相似度）

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
	q := "q_example" // string | 搜索关键词
	page := int32(56) // int32 | 页码（默认 1） (optional) (default to 1)
	limit := int32(56) // int32 | 每页数量（默认 20） (optional) (default to 20)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.GuideAPI.GuideSearchPkgnameGet(context.Background(), pkgname).Q(q).Page(page).Limit(limit).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `GuideAPI.GuideSearchPkgnameGet``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GuideSearchPkgnameGet`: GuideSearchResponse
	fmt.Fprintf(os.Stdout, "Response from `GuideAPI.GuideSearchPkgnameGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**pkgname** | **string** |  | 

### Other Parameters

Other parameters are passed through a pointer to a apiGuideSearchPkgnameGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **q** | **string** | 搜索关键词 | 
 **page** | **int32** | 页码（默认 1） | [default to 1]
 **limit** | **int32** | 每页数量（默认 20） | [default to 20]

### Return type

[**GuideSearchResponse**](GuideSearchResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

