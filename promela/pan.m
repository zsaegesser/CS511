#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: // STATE 1 - CR-LEAtest.pml:50 - [I = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((int)now.I);
		now.I = 1;
#ifdef VAR_RANGES
		logval("I", ((int)now.I));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - CR-LEAtest.pml:52 - [((I<=5))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((int)now.I)<=5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - CR-LEAtest.pml:54 - [(((Ini[0]==0)&&(5>=1)))] (20:0:2 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!(((((int)((P1 *)this)->Ini[0])==0)&&(5>=1))))
			continue;
		/* merge: Ini[0] = I(20, 4, 20) */
		reached[1][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->Ini[0]);
		((P1 *)this)->Ini[0] = ((int)now.I);
#ifdef VAR_RANGES
		logval(":init::Ini[0]", ((int)((P1 *)this)->Ini[0]));
#endif
		;
		/* merge: .(goto)(20, 16, 20) */
		reached[1][16] = 1;
		;
		/* merge: I = (I+1)(20, 17, 20) */
		reached[1][17] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.I);
		now.I = (((int)now.I)+1);
#ifdef VAR_RANGES
		logval("I", ((int)now.I));
#endif
		;
		/* merge: .(goto)(0, 21, 20) */
		reached[1][21] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 6: // STATE 5 - CR-LEAtest.pml:55 - [(((Ini[1]==0)&&(5>=2)))] (20:0:2 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		if (!(((((int)((P1 *)this)->Ini[1])==0)&&(5>=2))))
			continue;
		/* merge: Ini[1] = I(20, 6, 20) */
		reached[1][6] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->Ini[1]);
		((P1 *)this)->Ini[1] = ((int)now.I);
#ifdef VAR_RANGES
		logval(":init::Ini[1]", ((int)((P1 *)this)->Ini[1]));
#endif
		;
		/* merge: .(goto)(20, 16, 20) */
		reached[1][16] = 1;
		;
		/* merge: I = (I+1)(20, 17, 20) */
		reached[1][17] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.I);
		now.I = (((int)now.I)+1);
#ifdef VAR_RANGES
		logval("I", ((int)now.I));
#endif
		;
		/* merge: .(goto)(0, 21, 20) */
		reached[1][21] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 7: // STATE 7 - CR-LEAtest.pml:56 - [(((Ini[2]==0)&&(5>=3)))] (20:0:2 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		if (!(((((int)((P1 *)this)->Ini[2])==0)&&(5>=3))))
			continue;
		/* merge: Ini[2] = I(20, 8, 20) */
		reached[1][8] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->Ini[2]);
		((P1 *)this)->Ini[2] = ((int)now.I);
#ifdef VAR_RANGES
		logval(":init::Ini[2]", ((int)((P1 *)this)->Ini[2]));
#endif
		;
		/* merge: .(goto)(20, 16, 20) */
		reached[1][16] = 1;
		;
		/* merge: I = (I+1)(20, 17, 20) */
		reached[1][17] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.I);
		now.I = (((int)now.I)+1);
#ifdef VAR_RANGES
		logval("I", ((int)now.I));
#endif
		;
		/* merge: .(goto)(0, 21, 20) */
		reached[1][21] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 8: // STATE 9 - CR-LEAtest.pml:57 - [(((Ini[3]==0)&&(5>=4)))] (20:0:2 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		if (!(((((int)((P1 *)this)->Ini[3])==0)&&(5>=4))))
			continue;
		/* merge: Ini[3] = I(20, 10, 20) */
		reached[1][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->Ini[3]);
		((P1 *)this)->Ini[3] = ((int)now.I);
#ifdef VAR_RANGES
		logval(":init::Ini[3]", ((int)((P1 *)this)->Ini[3]));
#endif
		;
		/* merge: .(goto)(20, 16, 20) */
		reached[1][16] = 1;
		;
		/* merge: I = (I+1)(20, 17, 20) */
		reached[1][17] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.I);
		now.I = (((int)now.I)+1);
#ifdef VAR_RANGES
		logval("I", ((int)now.I));
#endif
		;
		/* merge: .(goto)(0, 21, 20) */
		reached[1][21] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 9: // STATE 11 - CR-LEAtest.pml:58 - [(((Ini[4]==0)&&(5>=5)))] (20:0:2 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!(((((int)((P1 *)this)->Ini[4])==0)&&(5>=5))))
			continue;
		/* merge: Ini[4] = I(20, 12, 20) */
		reached[1][12] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->Ini[4]);
		((P1 *)this)->Ini[4] = ((int)now.I);
#ifdef VAR_RANGES
		logval(":init::Ini[4]", ((int)((P1 *)this)->Ini[4]));
#endif
		;
		/* merge: .(goto)(20, 16, 20) */
		reached[1][16] = 1;
		;
		/* merge: I = (I+1)(20, 17, 20) */
		reached[1][17] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.I);
		now.I = (((int)now.I)+1);
#ifdef VAR_RANGES
		logval("I", ((int)now.I));
#endif
		;
		/* merge: .(goto)(0, 21, 20) */
		reached[1][21] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 10: // STATE 13 - CR-LEAtest.pml:59 - [(((Ini[5]==0)&&(5>=6)))] (20:0:2 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!(((((int)((P1 *)this)->Ini[5])==0)&&(5>=6))))
			continue;
		/* merge: Ini[5] = I(20, 14, 20) */
		reached[1][14] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->Ini[5]);
		((P1 *)this)->Ini[5] = ((int)now.I);
#ifdef VAR_RANGES
		logval(":init::Ini[5]", ((int)((P1 *)this)->Ini[5]));
#endif
		;
		/* merge: .(goto)(20, 16, 20) */
		reached[1][16] = 1;
		;
		/* merge: I = (I+1)(20, 17, 20) */
		reached[1][17] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.I);
		now.I = (((int)now.I)+1);
#ifdef VAR_RANGES
		logval("I", ((int)now.I));
#endif
		;
		/* merge: .(goto)(0, 21, 20) */
		reached[1][21] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 11: // STATE 17 - CR-LEAtest.pml:61 - [I = (I+1)] (0:20:1 - 7)
		IfNotBlocked
		reached[1][17] = 1;
		(trpt+1)->bup.oval = ((int)now.I);
		now.I = (((int)now.I)+1);
#ifdef VAR_RANGES
		logval("I", ((int)now.I));
#endif
		;
		/* merge: .(goto)(0, 21, 20) */
		reached[1][21] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 12: // STATE 18 - CR-LEAtest.pml:62 - [((I>5))] (29:0:1 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		if (!((((int)now.I)>5)))
			continue;
		/* merge: goto :b1(29, 19, 29) */
		reached[1][19] = 1;
		;
		/* merge: proc = 1(29, 23, 29) */
		reached[1][23] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->proc);
		((P1 *)this)->proc = 1;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P1 *)this)->proc));
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[1][30] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 13: // STATE 23 - CR-LEAtest.pml:66 - [proc = 1] (0:29:1 - 3)
		IfNotBlocked
		reached[1][23] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->proc);
		((P1 *)this)->proc = 1;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P1 *)this)->proc));
#endif
		;
		/* merge: .(goto)(0, 30, 29) */
		reached[1][30] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 14: // STATE 24 - CR-LEAtest.pml:68 - [((proc<=5))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][24] = 1;
		if (!((((int)((P1 *)this)->proc)<=5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 25 - CR-LEAtest.pml:69 - [(run nnode(q[(proc-1)],q[(proc%5)],Ini[(proc-1)]))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		if (!(addproc(II, 1, 0, now.q[ Index((((int)((P1 *)this)->proc)-1), 5) ], now.q[ Index((((int)((P1 *)this)->proc)%5), 5) ], ((int)((P1 *)this)->Ini[ Index((((int)((P1 *)this)->proc)-1), 6) ]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 26 - CR-LEAtest.pml:70 - [proc = (proc+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->proc);
		((P1 *)this)->proc = (((int)((P1 *)this)->proc)+1);
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P1 *)this)->proc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 27 - CR-LEAtest.pml:71 - [((proc>5))] (31:0:1 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		if (!((((int)((P1 *)this)->proc)>5)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: proc */  (trpt+1)->bup.oval = ((P1 *)this)->proc;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->proc = 0;
		/* merge: goto :b2(0, 28, 31) */
		reached[1][28] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 18: // STATE 33 - CR-LEAtest.pml:75 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC nnode */
	case 19: // STATE 1 - CR-LEAtest.pml:19 - [printf(' MSC: %d\\n',mynumber)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		Printf(" MSC: %d\n", ((int)((P0 *)this)->mynumber));
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 2 - CR-LEAtest.pml:21 - [out!elect,mynumber] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		
#if !defined(XUSAFE) && !defined(NOREDUCE)
		if (q_claim[((P0 *)this)->out]&2)
		{	q_S_check(((P0 *)this)->out, II);
		}
#endif
		if (q_full(((P0 *)this)->out))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)this)->out);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->mynumber)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)this)->out, 0, 2, ((int)((P0 *)this)->mynumber), 2);
		_m = 2; goto P999; /* 0 */
	case 21: // STATE 3 - CR-LEAtest.pml:23 - [inp?elect,nr] (0:0:1 - 1)
		reached[0][3] = 1;
		
#if !defined(XUSAFE) && !defined(NOREDUCE)
		if (q_claim[((P0 *)this)->inp]&1)
		{	q_R_check(((P0 *)this)->inp, II);
		}
#endif
		if (q_len(((P0 *)this)->inp) == 0) continue;

		XX=1;
		if (2 != qrecv(((P0 *)this)->inp, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->nr);
		;
		((P0 *)this)->nr = qrecv(((P0 *)this)->inp, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("nnode:nr", ((int)((P0 *)this)->nr));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)this)->inp);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->nr)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 22: // STATE 4 - CR-LEAtest.pml:25 - [((nr==mynumber))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (!((((int)((P0 *)this)->nr)==((int)((P0 *)this)->mynumber))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: nr */  (trpt+1)->bup.oval = ((P0 *)this)->nr;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->nr = 0;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 5 - CR-LEAtest.pml:25 - [out!leader,mynumber] (24:0:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		
#if !defined(XUSAFE) && !defined(NOREDUCE)
		if (q_claim[((P0 *)this)->out]&2)
		{	q_S_check(((P0 *)this)->out, II);
		}
#endif
		if (q_full(((P0 *)this)->out))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)this)->out);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->mynumber)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)this)->out, 0, 1, ((int)((P0 *)this)->mynumber), 2);
		/* merge: printf('MSC: Leader %d\\n',mynumber)(0, 6, 24) */
		reached[0][6] = 1;
		Printf("MSC: Leader %d\n", ((int)((P0 *)this)->mynumber));
		/* merge: goto :b0(0, 7, 24) */
		reached[0][7] = 1;
		;
		_m = 2; goto P999; /* 2 */
	case 24: // STATE 8 - CR-LEAtest.pml:28 - [((nr>mynumber))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!((((int)((P0 *)this)->nr)>((int)((P0 *)this)->mynumber))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 9 - CR-LEAtest.pml:28 - [out!elect,nr] (0:0:0 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		
#if !defined(XUSAFE) && !defined(NOREDUCE)
		if (q_claim[((P0 *)this)->out]&2)
		{	q_S_check(((P0 *)this)->out, II);
		}
#endif
		if (q_full(((P0 *)this)->out))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)this)->out);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->nr)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)this)->out, 0, 2, ((int)((P0 *)this)->nr), 2);
		_m = 2; goto P999; /* 0 */
	case 26: // STATE 10 - CR-LEAtest.pml:29 - [((nr<mynumber))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!((((int)((P0 *)this)->nr)<((int)((P0 *)this)->mynumber))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: nr */  (trpt+1)->bup.oval = ((P0 *)this)->nr;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->nr = 0;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 14 - CR-LEAtest.pml:32 - [inp?leader,nr] (0:0:1 - 1)
		reached[0][14] = 1;
		
#if !defined(XUSAFE) && !defined(NOREDUCE)
		if (q_claim[((P0 *)this)->inp]&1)
		{	q_R_check(((P0 *)this)->inp, II);
		}
#endif
		if (q_len(((P0 *)this)->inp) == 0) continue;

		XX=1;
		if (1 != qrecv(((P0 *)this)->inp, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->nr);
		;
		((P0 *)this)->nr = qrecv(((P0 *)this)->inp, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("nnode:nr", ((int)((P0 *)this)->nr));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", ((P0 *)this)->inp);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->nr)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 28: // STATE 15 - CR-LEAtest.pml:34 - [((nr!=mynumber))] (17:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (!((((int)((P0 *)this)->nr)!=((int)((P0 *)this)->mynumber))))
			continue;
		/* merge: printf('MSC: I am node %d and I know the Leader is %d\\n',mynumber,nr)(0, 16, 17) */
		reached[0][16] = 1;
		Printf("MSC: I am node %d and I know the Leader is %d\n", ((int)((P0 *)this)->mynumber), ((int)((P0 *)this)->nr));
		_m = 3; goto P999; /* 1 */
	case 29: // STATE 17 - CR-LEAtest.pml:36 - [out!leader,nr] (0:0:0 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		
#if !defined(XUSAFE) && !defined(NOREDUCE)
		if (q_claim[((P0 *)this)->out]&2)
		{	q_S_check(((P0 *)this)->out, II);
		}
#endif
		if (q_full(((P0 *)this)->out))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", ((P0 *)this)->out);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->nr)); strcat(simvals, simtmp);		}
#endif
		
		qsend(((P0 *)this)->out, 0, 1, ((int)((P0 *)this)->nr), 2);
		_m = 2; goto P999; /* 0 */
	case 30: // STATE 24 - CR-LEAtest.pml:42 - [-end-] (0:0:0 - 6)
		IfNotBlocked
		reached[0][24] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

