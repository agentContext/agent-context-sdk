# AppListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[App]**](App.md) |  | 
**paging** | [**Paging**](Paging.md) |  | 

## Example

```python
from openapi_client.models.app_list_response import AppListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AppListResponse from a JSON string
app_list_response_instance = AppListResponse.from_json(json)
# print the JSON string representation of the object
print(AppListResponse.to_json())

# convert the object into a dict
app_list_response_dict = app_list_response_instance.to_dict()
# create an instance of AppListResponse from a dict
app_list_response_from_dict = AppListResponse.from_dict(app_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


