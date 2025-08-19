-module(openapi_app_api).

-export([app_get/1, app_get/2,
         app_id_id_get/2, app_id_id_get/3,
         app_pkg_pkgname_get/2, app_pkg_pkgname_get/3,
         app_search_get/2, app_search_get/3]).

-define(BASE_URL, <<"/v1">>).

%% @doc 获取 app 列表
%% 
-spec app_get(ctx:ctx()) -> {ok, openapi_app_list_response:openapi_app_list_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
app_get(Ctx) ->
    app_get(Ctx, #{}).

-spec app_get(ctx:ctx(), maps:map()) -> {ok, openapi_app_list_response:openapi_app_list_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
app_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/app"],
    QS = lists:flatten([])++openapi_utils:optional_params(['page', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 获取指定 app 信息（按 id）
%% 
-spec app_id_id_get(ctx:ctx(), integer()) -> {ok, openapi_app_item_response:openapi_app_item_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
app_id_id_get(Ctx, Id) ->
    app_id_id_get(Ctx, Id, #{}).

-spec app_id_id_get(ctx:ctx(), integer(), maps:map()) -> {ok, openapi_app_item_response:openapi_app_item_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
app_id_id_get(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/app/id/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 获取指定 app 信息（按包名）
%% 
-spec app_pkg_pkgname_get(ctx:ctx(), binary()) -> {ok, openapi_app_item_response:openapi_app_item_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
app_pkg_pkgname_get(Ctx, Pkgname) ->
    app_pkg_pkgname_get(Ctx, Pkgname, #{}).

-spec app_pkg_pkgname_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_app_item_response:openapi_app_item_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
app_pkg_pkgname_get(Ctx, Pkgname, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/app/pkg/", Pkgname, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 搜索 app
%% 
-spec app_search_get(ctx:ctx(), binary()) -> {ok, openapi_app_list_response:openapi_app_list_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
app_search_get(Ctx, Q) ->
    app_search_get(Ctx, Q, #{}).

-spec app_search_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_app_list_response:openapi_app_list_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
app_search_get(Ctx, Q, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/app/search"],
    QS = lists:flatten([{<<"q">>, Q}])++openapi_utils:optional_params(['page', 'limit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


