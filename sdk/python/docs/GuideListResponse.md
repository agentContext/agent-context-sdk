# GuideListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[Guide]**](Guide.md) |  | 
**paging** | [**Paging**](Paging.md) |  | 

## Example

```python
from agent-context-sdk.models.guide_list_response import GuideListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of GuideListResponse from a JSON string
guide_list_response_instance = GuideListResponse.from_json(json)
# print the JSON string representation of the object
print(GuideListResponse.to_json())

# convert the object into a dict
guide_list_response_dict = guide_list_response_instance.to_dict()
# create an instance of GuideListResponse from a dict
guide_list_response_from_dict = GuideListResponse.from_dict(guide_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


