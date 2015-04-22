%% @author Mochi Media <dev@mochimedia.com>
%% @copyright 2010 Mochi Media <dev@mochimedia.com>

%% @doc myapp.

-module(myapp).
-author("Mochi Media <dev@mochimedia.com>").
-export([start/0, stop/0]).

ensure_started(App) ->
    case application:start(App) of
        ok ->
            ok;
        {error, {already_started, App}} ->
            ok
    end.


%% @spec start() -> ok
%% @doc Start the myapp server.
start() ->
    myapp_deps:ensure(),
    ensure_started(crypto),
    application:start(myapp).


%% @spec stop() -> ok
%% @doc Stop the myapp server.
stop() ->
    application:stop(myapp).
