-module(openapi_paging).

-export([encode/1]).

-export_type([openapi_paging/0]).

-type openapi_paging() ::
    #{ 'limit' := integer(),
       'page' := integer(),
       'total' := integer(),
       'kw' => binary()
     }.

encode(#{ 'limit' := Limit,
          'page' := Page,
          'total' := Total,
          'kw' := Kw
        }) ->
    #{ 'limit' => Limit,
       'page' => Page,
       'total' => Total,
       'kw' => Kw
     }.
