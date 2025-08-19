# AgentAppGuidePublicApi.AppApi

All URIs are relative to *https://api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appGet**](AppApi.md#appGet) | **GET** /app | 获取 app 列表
[**appIdIdGet**](AppApi.md#appIdIdGet) | **GET** /app/id/{id} | 获取指定 app 信息（按 id）
[**appPkgPkgnameGet**](AppApi.md#appPkgPkgnameGet) | **GET** /app/pkg/{pkgname} | 获取指定 app 信息（按包名）
[**appSearchGet**](AppApi.md#appSearchGet) | **GET** /app/search | 搜索 app



## appGet

> AppListResponse appGet(opts)

获取 app 列表

### Example

```javascript
import AgentAppGuidePublicApi from 'agent_app__guide_public_api';

let apiInstance = new AgentAppGuidePublicApi.AppApi();
let opts = {
  'page': 1, // Number | 页码（默认 1）
  'limit': 20 // Number | 每页数量（默认 20）
};
apiInstance.appGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Number**| 页码（默认 1） | [optional] [default to 1]
 **limit** | **Number**| 每页数量（默认 20） | [optional] [default to 20]

### Return type

[**AppListResponse**](AppListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## appIdIdGet

> AppItemResponse appIdIdGet(id)

获取指定 app 信息（按 id）

### Example

```javascript
import AgentAppGuidePublicApi from 'agent_app__guide_public_api';

let apiInstance = new AgentAppGuidePublicApi.AppApi();
let id = 56; // Number | 
apiInstance.appIdIdGet(id, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Number**|  | 

### Return type

[**AppItemResponse**](AppItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## appPkgPkgnameGet

> AppItemResponse appPkgPkgnameGet(pkgname)

获取指定 app 信息（按包名）

### Example

```javascript
import AgentAppGuidePublicApi from 'agent_app__guide_public_api';

let apiInstance = new AgentAppGuidePublicApi.AppApi();
let pkgname = "pkgname_example"; // String | 
apiInstance.appPkgPkgnameGet(pkgname, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## appSearchGet

> AppListResponse appSearchGet(q, opts)

搜索 app

### Example

```javascript
import AgentAppGuidePublicApi from 'agent_app__guide_public_api';

let apiInstance = new AgentAppGuidePublicApi.AppApi();
let q = "q_example"; // String | 搜索关键词
let opts = {
  'page': 1, // Number | 页码（默认 1）
  'limit': 20 // Number | 每页数量（默认 20）
};
apiInstance.appSearchGet(q, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| 搜索关键词 | 
 **page** | **Number**| 页码（默认 1） | [optional] [default to 1]
 **limit** | **Number**| 每页数量（默认 20） | [optional] [default to 20]

### Return type

[**AppListResponse**](AppListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

