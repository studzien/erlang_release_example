-module(current_version).

-export([start_link/0, get/0]).
-export([init/1, handle_call/3, handle_cast/2, handle_info/2,
         terminate/2, code_change/3]).

start_link() ->
    gen_server:start_link({local, ?MODULE}, ?MODULE, [], []).

get() ->
    gen_server:call(?MODULE, get).

init([]) ->
    {ok, no_state}.

handle_call(get, _From, State) ->
    {reply, "0.2.0", State}.

handle_cast(_, State) ->
    {noreply, State}.

handle_info(_, State) ->
    {noreply, State}.

terminate(_, _) -> ok.

code_change(_, _, State) ->
    {ok, State}.
