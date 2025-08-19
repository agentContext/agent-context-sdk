-module(openapi_guide).

-export([encode/1]).

-export_type([openapi_guide/0]).

-type openapi_guide() ::
    #{ 'id' := integer(),
       'packageName' := binary(),
       'vector' := openapi_any_type:openapi_any_type(),
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
