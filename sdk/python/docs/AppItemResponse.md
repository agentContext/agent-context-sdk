# AppItemResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**App**](App.md) |  | 

## Example

```python
from openapi_client.models.app_item_response import AppItemResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AppItemResponse from a JSON string
app_item_response_instance = AppItemResponse.from_json(json)
# print the JSON string representation of the object
print(AppItemResponse.to_json())

# convert the object into a dict
app_item_response_dict = app_item_response_instance.to_dict()
# create an instance of AppItemResponse from a dict
app_item_response_from_dict = AppItemResponse.from_dict(app_item_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


