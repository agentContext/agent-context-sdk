# AgentAppGuidePublicApi.GuideApi

All URIs are relative to *https://api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**guideGet**](GuideApi.md#guideGet) | **GET** /guide | 获取 guide 列表（按关键词）
[**guideIdIdGet**](GuideApi.md#guideIdIdGet) | **GET** /guide/id/{id} | 获取指定 guide（按 id）
[**guidePkgPkgnameGet**](GuideApi.md#guidePkgPkgnameGet) | **GET** /guide/pkg/{pkgname} | 获取某包名下的 guide 列表
[**guideSearchPkgnameGet**](GuideApi.md#guideSearchPkgnameGet) | **GET** /guide/search/{pkgname} | 在指定包下根据关键词搜索 guide（词向量相似度）



## guideGet

> GuideListResponse guideGet(q, opts)

获取 guide 列表（按关键词）

### Example

```javascript
import AgentAppGuidePublicApi from 'agent_app__guide_public_api';

let apiInstance = new AgentAppGuidePublicApi.GuideApi();
let q = "q_example"; // String | 搜索关键词
let opts = {
  'page': 1, // Number | 页码（默认 1）
  'limit': 20 // Number | 每页数量（默认 20）
};
apiInstance.guideGet(q, opts, (error, data, response) => {
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

[**GuideListResponse**](GuideListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## guideIdIdGet

> GuideItemResponse guideIdIdGet(id)

获取指定 guide（按 id）

### Example

```javascript
import AgentAppGuidePublicApi from 'agent_app__guide_public_api';

let apiInstance = new AgentAppGuidePublicApi.GuideApi();
let id = 789; // Number | 
apiInstance.guideIdIdGet(id, (error, data, response) => {
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

[**GuideItemResponse**](GuideItemResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## guidePkgPkgnameGet

> GuideListResponse guidePkgPkgnameGet(pkgname, opts)

获取某包名下的 guide 列表

### Example

```javascript
import AgentAppGuidePublicApi from 'agent_app__guide_public_api';

let apiInstance = new AgentAppGuidePublicApi.GuideApi();
let pkgname = "pkgname_example"; // String | 
let opts = {
  'page': 1, // Number | 页码（默认 1）
  'limit': 20 // Number | 每页数量（默认 20）
};
apiInstance.guidePkgPkgnameGet(pkgname, opts, (error, data, response) => {
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
 **page** | **Number**| 页码（默认 1） | [optional] [default to 1]
 **limit** | **Number**| 每页数量（默认 20） | [optional] [default to 20]

### Return type

[**GuideListResponse**](GuideListResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## guideSearchPkgnameGet

> GuideSearchResponse guideSearchPkgnameGet(pkgname, q, opts)

在指定包下根据关键词搜索 guide（词向量相似度）

### Example

```javascript
import AgentAppGuidePublicApi from 'agent_app__guide_public_api';

let apiInstance = new AgentAppGuidePublicApi.GuideApi();
let pkgname = "pkgname_example"; // String | 
let q = "q_example"; // String | 搜索关键词
let opts = {
  'page': 1, // Number | 页码（默认 1）
  'limit': 20 // Number | 每页数量（默认 20）
};
apiInstance.guideSearchPkgnameGet(pkgname, q, opts, (error, data, response) => {
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
 **q** | **String**| 搜索关键词 | 
 **page** | **Number**| 页码（默认 1） | [optional] [default to 1]
 **limit** | **Number**| 每页数量（默认 20） | [optional] [default to 20]

### Return type

[**GuideSearchResponse**](GuideSearchResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

