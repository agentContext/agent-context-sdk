# AppListResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | [**[]App**](App.md) |  | 
**Paging** | [**Paging**](Paging.md) |  | 

## Methods

### NewAppListResponse

`func NewAppListResponse(data []App, paging Paging, ) *AppListResponse`

NewAppListResponse instantiates a new AppListResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAppListResponseWithDefaults

`func NewAppListResponseWithDefaults() *AppListResponse`

NewAppListResponseWithDefaults instantiates a new AppListResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *AppListResponse) GetData() []App`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *AppListResponse) GetDataOk() (*[]App, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *AppListResponse) SetData(v []App)`

SetData sets Data field to given value.


### GetPaging

`func (o *AppListResponse) GetPaging() Paging`

GetPaging returns the Paging field if non-nil, zero value otherwise.

### GetPagingOk

`func (o *AppListResponse) GetPagingOk() (*Paging, bool)`

GetPagingOk returns a tuple with the Paging field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPaging

`func (o *AppListResponse) SetPaging(v Paging)`

SetPaging sets Paging field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


