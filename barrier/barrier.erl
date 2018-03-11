-module(barrier).
-compile(export_all).

coordinator(N) ->
  S =spawn(?MODULE, barrier_loop, [N]),
  register(barrier,S).


barrier_loop(0,N,L) ->
  [From!{Ref,ok} || {From, Ref} <- L],
  barrier_loop(N,N,[]);

barrier_loop(N,M,L) ->
  receive
    {From, Ref, arrived} ->
      barrier_loop(N-1, M, [{From,Ref} | L])
  end.

run_clients() ->
  spawn(fun client1/0),
  spawn(fun client2/0).


client1() ->
  io:format("a~n"),
  B = whereis(barrier),
  R = make_ref(),
  B!{self(), R,arrived},
  receive
    {R,ok} ->
      io:format("b")
  end.

  client2() ->
    io:format("c~n"),
    B = whereis(barrier),
    R = make_ref(),
    B!{self(), R,arrived},
    receive
      {R,ok} ->
        io:format("d")
    end.

% barrier_loop(N) ->
%   receive
%     {Pid_P, Ref, arrived} ->
%       %if that process is done then return ok
%       Num = N-1,
%       case N of
%         0 -> Pid_P!{self(), Ref, ok};
%         _ -> barrier_loop(Num)
%       end
%   end.
