int men = 0;
int women = 0;
mutexH  = new Semaphore(1);
mutexM  = new Semaphore(1);
mutexHM = new Semaphore(1);
toilet = new Semaphore(10);

men() {
    mutexHM.acquire()
    mutexH.acquire();
    if (++men == 1)
	mutexM.acquire();
    print("In comes a man, current total: " + men);
    mutexH.release();
    mutexHM.release();

    toilet.acquire();
    // usar toilete
    toilet.release();

    mutexH.acquire();
    if (--men == 0)
	mutexM.release();
    print("Sale un men quedan: " + men);
    mutexH.release();
}



woman() {
    mutexHM.acquire();
    mutexM.acquire();
    if (++women == 1)
	mutexH.acquire();
    print("Entra una woman hay: " + women);
    mutexM.release();
    mutexHM.release();

    toilet.acquire();
    // usar toilete
    toilet.release();

    mutexM.acquire();
    if (--women == 0)
	mutexH.release();
    print("Sale una woman quedan: " + women);
    mutexM.release();
}

