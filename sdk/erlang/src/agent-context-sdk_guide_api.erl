-module(agent-context-sdk_guide_api).

-export([guide_get/2, guide_get/3,
         guide_id_id_get/2, guide_id_id_get/3,
         guide_pkg_pkgname_get/2, guide_pkg_pkgname_get/3,
         guide_search_pkgname_get/3, guide_search_pkgname_get/4]).

-define(BASE_URL, <<"/v1">>).

%% @doc 获取 guide 列表（按关键词）
%% 
-spec guide_get(ctx:ctx(), binary()) -> {ok, agent-context-sdk_guide_list_response:agent-context-sdk_guide_list_response(), agent-context-sdk_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), agent-context-sdk_utils:response_info()}.
guide_get(Ctx, Q) ->
    guide_get(Ctx, Q, #{}).

-spec guide_get(ctx:ctx(), binary(), maps:map()) -> {ok, agent-context-sdk_guide_list_response:agent-context-sdk_guide_list_response(), agent-context-sdk_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), agent-context-sdk_utils:response_info()}.
guide_get(Ctx, Q, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(agent-context-sdk_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/guide"],
    QS = lists:flatten([{<<"q">>, Q}])++agent-context-sdk_utils:optional_params(['page', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = agent-context-sdk_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    agent-context-sdk_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 获取指定 guide（按 id）
%% 
-spec guide_id_id_get(ctx:ctx(), integer()) -> {ok, agent-context-sdk_guide_item_response:agent-context-sdk_guide_item_response(), agent-context-sdk_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), agent-context-sdk_utils:response_info()}.
guide_id_id_get(Ctx, Id) ->
    guide_id_id_get(Ctx, Id, #{}).

-spec guide_id_id_get(ctx:ctx(), integer(), maps:map()) -> {ok, agent-context-sdk_guide_item_response:agent-context-sdk_guide_item_response(), agent-context-sdk_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), agent-context-sdk_utils:response_info()}.
guide_id_id_get(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(agent-context-sdk_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/guide/id/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = agent-context-sdk_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    agent-context-sdk_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 获取某包名下的 guide 列表
%% 
-spec guide_pkg_pkgname_get(ctx:ctx(), binary()) -> {ok, agent-context-sdk_guide_list_response:agent-context-sdk_guide_list_response(), agent-context-sdk_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), agent-context-sdk_utils:response_info()}.
guide_pkg_pkgname_get(Ctx, Pkgname) ->
    guide_pkg_pkgname_get(Ctx, Pkgname, #{}).

-spec guide_pkg_pkgname_get(ctx:ctx(), binary(), maps:map()) -> {ok, agent-context-sdk_guide_list_response:agent-context-sdk_guide_list_response(), agent-context-sdk_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), agent-context-sdk_utils:response_info()}.
guide_pkg_pkgname_get(Ctx, Pkgname, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(agent-context-sdk_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/guide/pkg/", Pkgname, ""],
    QS = lists:flatten([])++agent-context-sdk_utils:optional_params(['page', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = agent-context-sdk_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    agent-context-sdk_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 在指定包下根据关键词搜索 guide（词向量相似度）
%% 
-spec guide_search_pkgname_get(ctx:ctx(), binary(), binary()) -> {ok, agent-context-sdk_guide_search_response:agent-context-sdk_guide_search_response(), agent-context-sdk_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), agent-context-sdk_utils:response_info()}.
guide_search_pkgname_get(Ctx, Pkgname, Q) ->
    guide_search_pkgname_get(Ctx, Pkgname, Q, #{}).

-spec guide_search_pkgname_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, agent-context-sdk_guide_search_response:agent-context-sdk_guide_search_response(), agent-context-sdk_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), agent-context-sdk_utils:response_info()}.
guide_search_pkgname_get(Ctx, Pkgname, Q, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(agent-context-sdk_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/guide/search/", Pkgname, ""],
    QS = lists:flatten([{<<"q">>, Q}])++agent-context-sdk_utils:optional_params(['page', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = agent-context-sdk_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    agent-context-sdk_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


