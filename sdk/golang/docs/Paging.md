# Paging

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Limit** | **int32** |  | 
**Page** | **int32** |  | 
**Total** | **int32** |  | 
**Kw** | Pointer to **string** | 可选，搜索关键词回显 | [optional] 

## Methods

### NewPaging

`func NewPaging(limit int32, page int32, total int32, ) *Paging`

NewPaging instantiates a new Paging object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPagingWithDefaults

`func NewPagingWithDefaults() *Paging`

NewPagingWithDefaults instantiates a new Paging object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetLimit

`func (o *Paging) GetLimit() int32`

GetLimit returns the Limit field if non-nil, zero value otherwise.

### GetLimitOk

`func (o *Paging) GetLimitOk() (*int32, bool)`

GetLimitOk returns a tuple with the Limit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimit

`func (o *Paging) SetLimit(v int32)`

SetLimit sets Limit field to given value.


### GetPage

`func (o *Paging) GetPage() int32`

GetPage returns the Page field if non-nil, zero value otherwise.

### GetPageOk

`func (o *Paging) GetPageOk() (*int32, bool)`

GetPageOk returns a tuple with the Page field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPage

`func (o *Paging) SetPage(v int32)`

SetPage sets Page field to given value.


### GetTotal

`func (o *Paging) GetTotal() int32`

GetTotal returns the Total field if non-nil, zero value otherwise.

### GetTotalOk

`func (o *Paging) GetTotalOk() (*int32, bool)`

GetTotalOk returns a tuple with the Total field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotal

`func (o *Paging) SetTotal(v int32)`

SetTotal sets Total field to given value.


### GetKw

`func (o *Paging) GetKw() string`

GetKw returns the Kw field if non-nil, zero value otherwise.

### GetKwOk

`func (o *Paging) GetKwOk() (*string, bool)`

GetKwOk returns a tuple with the Kw field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKw

`func (o *Paging) SetKw(v string)`

SetKw sets Kw field to given value.

### HasKw

`func (o *Paging) HasKw() bool`

HasKw returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


