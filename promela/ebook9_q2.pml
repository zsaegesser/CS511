
byte np = 0;
byte nq = 0;
byte critical = 0;
active proctype P() {
  endP;
  np = 1;
  np = nq + 1;

  np == 0 || np <= nq;
  critical = critical + 1;
  assert(critical == 1);
  critical = 0

  np = 0
}

active proctype Q() {
  endQ;
  nq = 1;
  nq = np + 1;
  atomic {
    nq == 0 || nq <= np;
  }
  critical = critical + 1;
  assert(critical == 1);
  critical = 0
  
  nq = 0
}
