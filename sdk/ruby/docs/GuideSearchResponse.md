# OpenapiClient::GuideSearchResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;Guide&gt;**](Guide.md) |  |  |
| **paging** | [**Paging**](Paging.md) |  |  |
| **score** | **Array&lt;Float&gt;** | 与 data 同顺序的相似度分数 |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GuideSearchResponse.new(
  data: null,
  paging: null,
  score: null
)
```

