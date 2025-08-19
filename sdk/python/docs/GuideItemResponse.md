# GuideItemResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**Guide**](Guide.md) |  | 

## Example

```python
from agent-context-sdk.models.guide_item_response import GuideItemResponse

# TODO update the JSON string below
json = "{}"
# create an instance of GuideItemResponse from a JSON string
guide_item_response_instance = GuideItemResponse.from_json(json)
# print the JSON string representation of the object
print(GuideItemResponse.to_json())

# convert the object into a dict
guide_item_response_dict = guide_item_response_instance.to_dict()
# create an instance of GuideItemResponse from a dict
guide_item_response_from_dict = GuideItemResponse.from_dict(guide_item_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


