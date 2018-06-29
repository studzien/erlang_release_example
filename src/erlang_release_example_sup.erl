-module(erlang_release_example_sup).

-behaviour(supervisor).

-export([start_link/0]).

-export([init/1]).

-define(SERVER, ?MODULE).

start_link() ->
    supervisor:start_link({local, ?SERVER}, ?MODULE, []).

init([]) ->
    {ok, { #{strategy => one_for_all,
             intensity => 0,
             period => 1},
           [
            #{id => current_version, start => {current_version, start_link, []}}
           ]} }.
