-module(q7).
-compile(export_all).

%Zach Saegesser and Chris Lyons

client(Server_ID) ->
  Num = rand:uniform(11) -1,
  Ref = make_ref(),
  Server_ID!{self(),Ref,Num},
  receive
    {Server_ID,Ref, gotIt, N} ->
      io:format("~w is it. ~n",[N]),
      gotIt;
    {Server_ID,Ref,tryAgain,N} ->
      io:format("~w is not it, Trying again. ~n",[N]),
      client(Server_ID)
    end.




server(Num) ->
  receive
    {Client_ID, R, Num} ->
      Client_ID!{self(), R, gotIt, Num};
      %io:format("gotit");
    {Client_ID, R, N} ->
      Client_ID!{self(), R, tryAgain, N}
    end,
  server(Num).


start() ->
  Num = rand:uniform(11) -1,
  S = spawn(q7,server,[Num]),
  client(S).
