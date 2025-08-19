# Guide


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**package_name** | **str** |  | 
**vector** | **object** |  | 
**action** | **str** |  | 
**description** | **str** |  | 
**tokens** | **int** |  | 
**source** | **str** |  | 
**solution** | **str** |  | 

## Example

```python
from agent-context-sdk.models.guide import Guide

# TODO update the JSON string below
json = "{}"
# create an instance of Guide from a JSON string
guide_instance = Guide.from_json(json)
# print the JSON string representation of the object
print(Guide.to_json())

# convert the object into a dict
guide_dict = guide_instance.to_dict()
# create an instance of Guide from a dict
guide_from_dict = Guide.from_dict(guide_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


