byte np = 0;
byte nq = 0;
byte crit = 0;

active proctype P(){
  endP;
  do
  ::np =1;
    np = nq+1;
    np== 0 || np <= nq;

    crit = crit +1;
    assert(crit == 1);
    crit = 0;

    np = 0
  od
}

active proctype Q(){
  endQ;
  do
  ::nq =1;
    nq = np+1;
    nq== 0 || nq<=np;

    crit = crit +1;
    assert(crit == 1);
    crit = 0;

    nq = 0
  od
}
