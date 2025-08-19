-module(agent-context-sdk_guide_search_response).

-export([encode/1]).

-export_type([agent-context-sdk_guide_search_response/0]).

-type agent-context-sdk_guide_search_response() ::
    #{ 'data' := list(),
       'paging' := agent-context-sdk_paging:agent-context-sdk_paging(),
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
