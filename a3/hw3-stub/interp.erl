-module(interp).
-export([scanAndParse/1,runFile/1,runStr/1, scanAndParseString/1]).
-include("types.hrl").

loop(InFile,Acc) ->
    case io:request(InFile,{get_until,prompt,lexer,token,[1]}) of
        {ok,Token,_EndLine} ->
            loop(InFile,Acc ++ [Token]);
        {error,token} ->
            exit(scanning_error);
        {eof,_} ->
            Acc
    end.

scanAndParse(FileName) ->
    {ok, InFile} = file:open(FileName, [read]),
    Acc = loop(InFile,[]),
    file:close(InFile),
    {Result, AST} = parser:parse(Acc),
    case Result of
	ok -> AST;
	_ -> io:format("Parse error~n")
    end.


-spec runFile(string()) -> valType().
runFile(FileName) ->
    valueOf(scanAndParse(FileName),env:new()).

scanAndParseString(String) ->
    {_ResultL, TKs, _L} = lexer:string(String),
    parser:parse(TKs).

-spec runStr(string()) -> valType().
runStr(String) ->
    {Result, AST} = scanAndParseString(String),
    case Result  of
    	ok -> valueOf(AST,env:new());
    	_ -> io:format("Parse error~n")
    end.


-spec numVal2Num(numValType()) -> integer().
numVal2Num({num, N}) ->
    N.

-spec boolVal2Bool(boolValType()) -> boolean().
boolVal2Bool({bool, B}) ->
    B.

-spec valueOf(expType(),envType()) -> valType().
valueOf({num, N}, _Env) ->
  {num, N};
valueOf({bool, B}, _Env) ->
  {bool, B};
valueOf({numExp, {num, _, N}}, _Env) ->
  {num, N};
valueOf({idExp, {id, _, ID}}, Env) ->
  env:lookup(Env, ID);
valueOf({diffExp, E1, E2}, Env) ->
  {num, numVal2Num(valueOf(E1, Env)) - numVal2Num(valueOf(E2, Env))};
valueOf({plusExp, E1, E2}, Env) ->
  {num, numVal2Num(valueOf(E1, Env)) + numVal2Num(valueOf(E2, Env))};
valueOf({isZeroExp, E1}, Env) ->
  Boolean = numVal2Num(valueOf(E1, Env)) == 0,
  {bool, Boolean};
valueOf({ifThenElseExp, IfExpress, ThenExpress, ElseExpress}, Env) ->
  IfVal = valueOf(IfExpress, Env),
  ThenVal = valueOf(ThenExpress, Env),
  ElseVal = valueOf(ElseExpress, Env),
  Boolean = boolVal2Bool(IfVal),
  if
    Boolean == true ->
        ThenVal;
    true ->
        ElseVal
  end;
valueOf({letExp, {id, _, Id}, E1, InExp}, Env) ->
  NewEnvVar = valueOf(E1, Env),
  valueOf(InExp, env:add(Env, Id, NewEnvVar));
valueOf({procExp, {id, _, Id}, E1}, Env) ->
  {proc, Id, E1, Env};
valueOf({appExp, Id, E1}, Env) ->
  {proc, PId, PExp, PEnv} = valueOf(Id, Env),
  valueOf({letExp, {id, 1, PId}, valueOf(E1, Env), PExp}, PEnv).
