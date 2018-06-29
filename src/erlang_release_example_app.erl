%%%-------------------------------------------------------------------
%% @doc erlang_release_example public API
%% @end
%%%-------------------------------------------------------------------

-module(erlang_release_example_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    erlang_release_example_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================