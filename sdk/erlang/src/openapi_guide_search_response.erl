-module(openapi_guide_search_response).

-export([encode/1]).

-export_type([openapi_guide_search_response/0]).

-type openapi_guide_search_response() ::
    #{ 'data' := list(),
       'paging' := openapi_paging:openapi_paging(),
       'score' := list()
     }.

encode(#{ 'data' := Data,
          'paging' := Paging,
          'score' := Score
        }) ->
    #{ 'data' => Data,
       'paging' => Paging,
       'score' => Score
     }.
