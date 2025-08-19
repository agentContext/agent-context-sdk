# Guide

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int64** |  | 
**PackageName** | **string** |  | 
**Vector** | **interface{}** |  | 
**Action** | **string** |  | 
**Description** | **string** |  | 
**Tokens** | **int32** |  | 
**Source** | **string** |  | 
**Solution** | **string** |  | 

## Methods

### NewGuide

`func NewGuide(id int64, packageName string, vector interface{}, action string, description string, tokens int32, source string, solution string, ) *Guide`

NewGuide instantiates a new Guide object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGuideWithDefaults

`func NewGuideWithDefaults() *Guide`

NewGuideWithDefaults instantiates a new Guide object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *Guide) GetId() int64`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Guide) GetIdOk() (*int64, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Guide) SetId(v int64)`

SetId sets Id field to given value.


### GetPackageName

`func (o *Guide) GetPackageName() string`

GetPackageName returns the PackageName field if non-nil, zero value otherwise.

### GetPackageNameOk

`func (o *Guide) GetPackageNameOk() (*string, bool)`

GetPackageNameOk returns a tuple with the PackageName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPackageName

`func (o *Guide) SetPackageName(v string)`

SetPackageName sets PackageName field to given value.


### GetVector

`func (o *Guide) GetVector() interface{}`

GetVector returns the Vector field if non-nil, zero value otherwise.

### GetVectorOk

`func (o *Guide) GetVectorOk() (*interface{}, bool)`

GetVectorOk returns a tuple with the Vector field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVector

`func (o *Guide) SetVector(v interface{})`

SetVector sets Vector field to given value.


### SetVectorNil

`func (o *Guide) SetVectorNil(b bool)`

 SetVectorNil sets the value for Vector to be an explicit nil

### UnsetVector
`func (o *Guide) UnsetVector()`

UnsetVector ensures that no value is present for Vector, not even an explicit nil
### GetAction

`func (o *Guide) GetAction() string`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *Guide) GetActionOk() (*string, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *Guide) SetAction(v string)`

SetAction sets Action field to given value.


### GetDescription

`func (o *Guide) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *Guide) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *Guide) SetDescription(v string)`

SetDescription sets Description field to given value.


### GetTokens

`func (o *Guide) GetTokens() int32`

GetTokens returns the Tokens field if non-nil, zero value otherwise.

### GetTokensOk

`func (o *Guide) GetTokensOk() (*int32, bool)`

GetTokensOk returns a tuple with the Tokens field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokens

`func (o *Guide) SetTokens(v int32)`

SetTokens sets Tokens field to given value.


### GetSource

`func (o *Guide) GetSource() string`

GetSource returns the Source field if non-nil, zero value otherwise.

### GetSourceOk

`func (o *Guide) GetSourceOk() (*string, bool)`

GetSourceOk returns a tuple with the Source field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSource

`func (o *Guide) SetSource(v string)`

SetSource sets Source field to given value.


### GetSolution

`func (o *Guide) GetSolution() string`

GetSolution returns the Solution field if non-nil, zero value otherwise.

### GetSolutionOk

`func (o *Guide) GetSolutionOk() (*string, bool)`

GetSolutionOk returns a tuple with the Solution field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSolution

`func (o *Guide) SetSolution(v string)`

SetSolution sets Solution field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


