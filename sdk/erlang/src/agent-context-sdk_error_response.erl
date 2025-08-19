-module(agent-context-sdk_error_response).

-export([encode/1]).

-export_type([agent-context-sdk_error_response/0]).

-type agent-context-sdk_error_response() ::
    #{ 'error' := binary()
     }.

encode(#{ 'error' := Error
        }) ->
    #{ 'error' => Error
     }.
