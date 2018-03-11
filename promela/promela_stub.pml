//Zach Saegesser
//Matt Stypulkoski

byte menc = 0;
byte womenc = 0;
byte mutexH = 1;
byte mutexM = 1;
byte mutexHM = 1;
byte toilet = 10;
byte crit = 0;

inline acquire(sem) {
  atomic {
    sem>0;
    sem--
  }
}

inline release(sem) {
  sem++
}

active proctype men() {
  acquire(mutexHM);
  acquire(mutexH);
  menc = menc +1;
  if
  :: (menc == 1) ->
      acquire(mutexM);
  :: else -> skip
  fi;
  printf("In comes a man, current total: %d\n", menc);
  release(mutexH);
  release(mutexHM);

  acquire(toilet);
  crit = crit +1;
  assert(crit == 1);
  crit = 0;
  release(toilet);

  acquire(mutexH);
  menc = menc -1;
  if
  :: menc == 0 ->
      release(mutexM);
  :: else -> skip
  fi;
  printf("Sale un men quedan: %d\n", menc);
  release(mutexH)
}



active proctype woman() {
  acquire(mutexHM);
  acquire(mutexM);
  womenc = womenc +1
  if
  :: womenc == 1 ->
      acquire(mutexH);
  :: else -> skip
  fi;
  printf("In comes a women, current total: %d\n", womenc);
  release(mutexM);
  release(mutexHM);

  acquire(toilet);
  crit = crit +1;
  assert(crit == 1);
  crit = 0;
  release(toilet);

  acquire(mutexM);
  womenc = womenc -1;
  if
  :: womenc == 0 ->
      release(mutexH);
  :: else -> skip
  fi
  printf("Sale una woman quedan: %d\n", womenc)
  release(mutexM)
}
