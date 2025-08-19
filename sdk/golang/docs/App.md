# App

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int32** |  | 
**AppName** | **string** |  | 
**PackageName** | **string** |  | 
**Description** | **string** |  | 
**Tokdens** | **int32** |  | 
**CreateAt** | **time.Time** |  | 
**UpdateAt** | **time.Time** |  | 

## Methods

### NewApp

`func NewApp(id int32, appName string, packageName string, description string, tokdens int32, createAt time.Time, updateAt time.Time, ) *App`

NewApp instantiates a new App object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAppWithDefaults

`func NewAppWithDefaults() *App`

NewAppWithDefaults instantiates a new App object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *App) GetId() int32`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *App) GetIdOk() (*int32, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *App) SetId(v int32)`

SetId sets Id field to given value.


### GetAppName

`func (o *App) GetAppName() string`

GetAppName returns the AppName field if non-nil, zero value otherwise.

### GetAppNameOk

`func (o *App) GetAppNameOk() (*string, bool)`

GetAppNameOk returns a tuple with the AppName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAppName

`func (o *App) SetAppName(v string)`

SetAppName sets AppName field to given value.


### GetPackageName

`func (o *App) GetPackageName() string`

GetPackageName returns the PackageName field if non-nil, zero value otherwise.

### GetPackageNameOk

`func (o *App) GetPackageNameOk() (*string, bool)`

GetPackageNameOk returns a tuple with the PackageName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPackageName

`func (o *App) SetPackageName(v string)`

SetPackageName sets PackageName field to given value.


### GetDescription

`func (o *App) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *App) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *App) SetDescription(v string)`

SetDescription sets Description field to given value.


### GetTokdens

`func (o *App) GetTokdens() int32`

GetTokdens returns the Tokdens field if non-nil, zero value otherwise.

### GetTokdensOk

`func (o *App) GetTokdensOk() (*int32, bool)`

GetTokdensOk returns a tuple with the Tokdens field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTokdens

`func (o *App) SetTokdens(v int32)`

SetTokdens sets Tokdens field to given value.


### GetCreateAt

`func (o *App) GetCreateAt() time.Time`

GetCreateAt returns the CreateAt field if non-nil, zero value otherwise.

### GetCreateAtOk

`func (o *App) GetCreateAtOk() (*time.Time, bool)`

GetCreateAtOk returns a tuple with the CreateAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreateAt

`func (o *App) SetCreateAt(v time.Time)`

SetCreateAt sets CreateAt field to given value.


### GetUpdateAt

`func (o *App) GetUpdateAt() time.Time`

GetUpdateAt returns the UpdateAt field if non-nil, zero value otherwise.

### GetUpdateAtOk

`func (o *App) GetUpdateAtOk() (*time.Time, bool)`

GetUpdateAtOk returns a tuple with the UpdateAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdateAt

`func (o *App) SetUpdateAt(v time.Time)`

SetUpdateAt sets UpdateAt field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


