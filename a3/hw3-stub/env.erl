-module(env).
-compile(export_all).
-include("types.hrl").


-spec new()-> envType().
new() ->
    [].

-spec add(envType(),atom(),valType())-> envType().
add([],Key,Value) ->
    [[Key, Value]];
add(Env, Key, Value) ->
    lists:append([[Key, Value]],Env).

-spec lookup(envType(),atom())-> valType().
lookup([],_Key) ->
    erlang:error('Key not in Env');
lookup([[K,V]|_T],Key) when Key == K ->
    V;
lookup([[_K,_V]|T],Key) ->
    lookup(T, Key).
