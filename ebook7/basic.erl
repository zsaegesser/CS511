-module(basic).
-import(math,[sqrt/1]).
-import(lists,[append/2]).
-compile(export_all).

%-spec mult(integer(), integer() -> integer()).

mult(A,B) ->
  A * B.

double(A) ->
  A * 2.

distance({A,B}, {C,D}) ->
  sqrt(((C-A) * (C-A)) + ((D-B) * (D-B))).

myand(A,B) ->
  A and B.

mynot(A) ->
  not A.

% agt() ->
%   {node, 1,[{node,2,[]},{node,2,[]}]}.
%
% mapgtree(F,{node,N, TS}) ->
%   {node,F(N), mapL(fun (X) -> mapgtree(F, X) end, TS)}.
%
% foldgtree(F, G, A, {node, N, TS}) ->
%   F(N, foldL(G,A,mapL(fun (x) foldgtree(F,G,A,X) end,TS))).

fib(0) ->
  0;
fib(1) ->
  1;
fib(N) ->
  fib(N-1) + fib(N-2).

fib_TR(N) ->
  fib_TR(N,0,1).

fib_TR(0,A,B) ->
  A;
fib_TR(1,A,B) ->
  B;
fib_TR(N,A,B) ->
  fib_TR(N-1, B, A+B).


sumL([]) ->
  0;
sumL([H|T]) ->
  sumL(H) + sumL(T).

reverseL([]) ->
  [];
reverseL([H|T]) ->
  append(reverseL(T), [H]).


evenL([]) ->
  [];
evenL([H|T]) ->
  if
    H rem 2 == 0 -> append([H], evenL(T));
    H rem 2 == 1 -> evenL(T)
  end.
