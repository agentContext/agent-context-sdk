# GuideSearchResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Data** | [**[]Guide**](Guide.md) |  | 
**Paging** | [**Paging**](Paging.md) |  | 
**Score** | **[]float32** | 与 data 同顺序的相似度分数 | 

## Methods

### NewGuideSearchResponse

`func NewGuideSearchResponse(data []Guide, paging Paging, score []float32, ) *GuideSearchResponse`

NewGuideSearchResponse instantiates a new GuideSearchResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGuideSearchResponseWithDefaults

`func NewGuideSearchResponseWithDefaults() *GuideSearchResponse`

NewGuideSearchResponseWithDefaults instantiates a new GuideSearchResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetData

`func (o *GuideSearchResponse) GetData() []Guide`

GetData returns the Data field if non-nil, zero value otherwise.

### GetDataOk

`func (o *GuideSearchResponse) GetDataOk() (*[]Guide, bool)`

GetDataOk returns a tuple with the Data field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetData

`func (o *GuideSearchResponse) SetData(v []Guide)`

SetData sets Data field to given value.


### GetPaging

`func (o *GuideSearchResponse) GetPaging() Paging`

GetPaging returns the Paging field if non-nil, zero value otherwise.

### GetPagingOk

`func (o *GuideSearchResponse) GetPagingOk() (*Paging, bool)`

GetPagingOk returns a tuple with the Paging field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPaging

`func (o *GuideSearchResponse) SetPaging(v Paging)`

SetPaging sets Paging field to given value.


### GetScore

`func (o *GuideSearchResponse) GetScore() []float32`

GetScore returns the Score field if non-nil, zero value otherwise.

### GetScoreOk

`func (o *GuideSearchResponse) GetScoreOk() (*[]float32, bool)`

GetScoreOk returns a tuple with the Score field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetScore

`func (o *GuideSearchResponse) SetScore(v []float32)`

SetScore sets Score field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


