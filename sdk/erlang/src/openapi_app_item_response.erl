-module(openapi_app_item_response).

-export([encode/1]).

-export_type([openapi_app_item_response/0]).

-type openapi_app_item_response() ::
    #{ 'data' := openapi_app:openapi_app()
     }.

encode(#{ 'data' := Data
        }) ->
    #{ 'data' => Data
     }.
