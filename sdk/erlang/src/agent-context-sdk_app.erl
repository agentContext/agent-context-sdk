-module(agent-context-sdk_app).

-export([encode/1]).

-export_type([agent-context-sdk_app/0]).

-type agent-context-sdk_app() ::
    #{ 'Id' := integer(),
       'AppName' := binary(),
       'PackageName' := binary(),
       'Description' := binary(),
       'Tokdens' := integer(),
       'CreateAt' := agent-context-sdk_date_time:agent-context-sdk_date_time(),
       'UpdateAt' := agent-context-sdk_date_time:agent-context-sdk_date_time()
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
