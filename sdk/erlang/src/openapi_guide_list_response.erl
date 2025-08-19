-module(openapi_guide_list_response).

-export([encode/1]).

-export_type([openapi_guide_list_response/0]).

-type openapi_guide_list_response() ::
    #{ 'data' := list(),
       'paging' := openapi_paging:openapi_paging()
     }.

encode(#{ 'data' := Data,
          'paging' := Paging
        }) ->
    #{ 'data' => Data,
       'paging' => Paging
     }.
