%% @author Mochi Media <dev@mochimedia.com>
%% @copyright myapp Mochi Media <dev@mochimedia.com>

%% @doc Callbacks for the myapp application.

-module(myapp_app).
-author("Mochi Media <dev@mochimedia.com>").

-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for myapp.
start(_Type, _StartArgs) ->
    myapp_deps:ensure(),
    myapp_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for myapp.
stop(_State) ->
    ok.
