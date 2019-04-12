-module(kv).
-behaviour(application).
-behaviour(supervisor).
-export([init/1, start/2, stop/1]).
init([]) -> {ok, { {one_for_one, 5, 10}, []} }.
start(_,_) -> supervisor:start_link({local, ?MODULE}, ?MODULE, []).
stop(_) -> ok.
