-module(openapi_guide_item_response).

-export([encode/1]).

-export_type([openapi_guide_item_response/0]).

-type openapi_guide_item_response() ::
    #{ 'data' := openapi_guide:openapi_guide()
     }.

encode(#{ 'data' := Data
        }) ->
    #{ 'data' => Data
     }.
