-module(agent-context-sdk_app_list_response).

-export([encode/1]).

-export_type([agent-context-sdk_app_list_response/0]).

-type agent-context-sdk_app_list_response() ::
    #{ 'data' := list(),
       'paging' := agent-context-sdk_paging:agent-context-sdk_paging()
     }.

encode(#{ 'data' := Data,
          'paging' := Paging
        }) ->
    #{ 'data' => Data,
       'paging' => Paging
     }.
