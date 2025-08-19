-module(agent-context-sdk_guide).

-export([encode/1]).

-export_type([agent-context-sdk_guide/0]).

-type agent-context-sdk_guide() ::
    #{ 'id' := integer(),
       'packageName' := binary(),
       'vector' := agent-context-sdk_any_type:agent-context-sdk_any_type(),
       'action' := binary(),
       'description' := binary(),
       'tokens' := integer(),
       'source' := binary(),
       'solution' := binary()
     }.

encode(#{ 'id' := Id,
          'packageName' := PackageName,
          'vector' := Vector,
          'action' := Action,
          'description' := Description,
          'tokens' := Tokens,
          'source' := Source,
          'solution' := Solution
        }) ->
    #{ 'id' => Id,
       'packageName' => PackageName,
       'vector' => Vector,
       'action' => Action,
       'description' => Description,
       'tokens' => Tokens,
       'source' => Source,
       'solution' => Solution
     }.
