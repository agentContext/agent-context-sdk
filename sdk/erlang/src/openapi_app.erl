-module(openapi_app).

-export([encode/1]).

-export_type([openapi_app/0]).

-type openapi_app() ::
    #{ 'Id' := integer(),
       'AppName' := binary(),
       'PackageName' := binary(),
       'Description' := binary(),
       'Tokdens' := integer(),
       'CreateAt' := openapi_date_time:openapi_date_time(),
       'UpdateAt' := openapi_date_time:openapi_date_time()
     }.

encode(#{ 'Id' := Id,
          'AppName' := AppName,
          'PackageName' := PackageName,
          'Description' := Description,
          'Tokdens' := Tokdens,
          'CreateAt' := CreateAt,
          'UpdateAt' := UpdateAt
        }) ->
    #{ 'Id' => Id,
       'AppName' => AppName,
       'PackageName' => PackageName,
       'Description' => Description,
       'Tokdens' => Tokdens,
       'CreateAt' => CreateAt,
       'UpdateAt' => UpdateAt
     }.
