# GuideListResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | [**[]Guide**](Guide.md) |  | 
**Paging** | [**Paging**](Paging.md) |  | 

## Methods

### NewGuideListResponse

`func NewGuideListResponse(data []Guide, paging Paging, ) *GuideListResponse`

NewGuideListResponse instantiates a new GuideListResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGuideListResponseWithDefaults

`func NewGuideListResponseWithDefaults() *GuideListResponse`

NewGuideListResponseWithDefaults instantiates a new GuideListResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *GuideListResponse) GetData() []Guide`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *GuideListResponse) GetDataOk() (*[]Guide, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *GuideListResponse) SetData(v []Guide)`

SetData sets Data field to given value.


### GetPaging

`func (o *GuideListResponse) GetPaging() Paging`

GetPaging returns the Paging field if non-nil, zero value otherwise.

### GetPagingOk

`func (o *GuideListResponse) GetPagingOk() (*Paging, bool)`

GetPagingOk returns a tuple with the Paging field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPaging

`func (o *GuideListResponse) SetPaging(v Paging)`

SetPaging sets Paging field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


