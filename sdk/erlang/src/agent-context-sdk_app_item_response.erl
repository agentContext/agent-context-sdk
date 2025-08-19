-module(agent-context-sdk_app_item_response).

-export([encode/1]).

-export_type([agent-context-sdk_app_item_response/0]).

-type agent-context-sdk_app_item_response() ::
    #{ 'data' := agent-context-sdk_app:agent-context-sdk_app()
     }.

encode(#{ 'data' := Data
        }) ->
    #{ 'data' => Data
     }.
