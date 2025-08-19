-module(agent-context-sdk_guide_item_response).

-export([encode/1]).

-export_type([agent-context-sdk_guide_item_response/0]).

-type agent-context-sdk_guide_item_response() ::
    #{ 'data' := agent-context-sdk_guide:agent-context-sdk_guide()
     }.

encode(#{ 'data' := Data
        }) ->
    #{ 'data' => Data
     }.
