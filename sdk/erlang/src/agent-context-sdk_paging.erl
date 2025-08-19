-module(agent-context-sdk_paging).

-export([encode/1]).

-export_type([agent-context-sdk_paging/0]).

-type agent-context-sdk_paging() ::
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
