# GuideSearchResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[Guide]**](Guide.md) |  | 
**paging** | [**Paging**](Paging.md) |  | 
**score** | **List[float]** | 与 data 同顺序的相似度分数 | 

## Example

```python
from openapi_client.models.guide_search_response import GuideSearchResponse

# TODO update the JSON string below
json = "{}"
# create an instance of GuideSearchResponse from a JSON string
guide_search_response_instance = GuideSearchResponse.from_json(json)
# print the JSON string representation of the object
print(GuideSearchResponse.to_json())

# convert the object into a dict
guide_search_response_dict = guide_search_response_instance.to_dict()
# create an instance of GuideSearchResponse from a dict
guide_search_response_from_dict = GuideSearchResponse.from_dict(guide_search_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


