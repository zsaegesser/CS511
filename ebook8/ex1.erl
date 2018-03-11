-module(ex1).
-compile(export_all).

counter(N) ->
  receive
    {From,Ref,bump} ->
      From!{Ref,ok},
      counter(N+1);
    {From,Ref,read} ->
      From!{self(),Ref,N},
      counter(N);
    stop ->
      ok
  end.
turnstile(_PID,0) ->
  ok;
turnstile(PID,N) ->
  timer:sleep(rand:uniform(200)),
  R=make_ref(),
  PID!{self(),R,bump},
  receive
    {self(),R,ok} ->
      turnstile(PID,N-1)
  end.

  %timer:sleep(rand:uniform(100))


start() ->
  C = spawn(?MODULE,counter,[0]),
  T1 = spawn(?MODULE,turnstile,[self(),C,50]),
  T2 = spawn(?MODULE,turnstile,[self(),C,50]),
  timer:sleep(rand:uniform(2000)),
  R= make_ref(),
  C!{self(),R,read},
  receive
    {C,R,N} ->
      io:format("The value of the counter is~w~n",[N])
    end,
    C!stop.
