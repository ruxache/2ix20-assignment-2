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

		 /* CLAIM f2 */
	case 3: // STATE 1 - _spin_nvr.tmp:32 - [(!(low_req[0]))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][1] = 1;
		if (!( !(((int)now.low_req[0]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 8 - _spin_nvr.tmp:37 - [(!(low_req[0]))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][8] = 1;
		if (!( !(((int)now.low_req[0]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 13 - _spin_nvr.tmp:39 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM f1 */
	case 6: // STATE 1 - _spin_nvr.tmp:21 - [(!(high_req[notlast]))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][1] = 1;
		if (!( !(((int)now.high_req[ Index(((int)now.notlast), 3) ]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 8 - _spin_nvr.tmp:26 - [(!(high_req[notlast]))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][8] = 1;
		if (!( !(((int)now.high_req[ Index(((int)now.notlast), 3) ]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 13 - _spin_nvr.tmp:28 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM e2 */
	case 9: // STATE 1 - _spin_nvr.tmp:12 - [(!((!(high_req[i])||(334==1))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][1] = 1;
		if (!( !(( !(((int)now.high_req[ Index(((int)now.i), 3) ]))||(334==1)))))
			continue;
		/* merge: assert(!(!((!(high_req[i])||(334==1)))))(0, 2, 6) */
		reached[5][2] = 1;
		spin_assert( !( !(( !(((int)now.high_req[ Index(((int)now.i), 3) ]))||(334==1)))), " !( !(( !(high_req[i])||(334==1))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[5][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 10: // STATE 10 - _spin_nvr.tmp:17 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM e1 */
	case 11: // STATE 1 - _spin_nvr.tmp:3 - [(!((!(low_req[i])||(334==1))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!( !(( !(((int)now.low_req[ Index(((int)now.i), 3) ]))||(334==1)))))
			continue;
		/* merge: assert(!(!((!(low_req[i])||(334==1)))))(0, 2, 6) */
		reached[4][2] = 1;
		spin_assert( !( !(( !(((int)now.low_req[ Index(((int)now.i), 3) ]))||(334==1)))), " !( !(( !(low_req[i])||(334==1))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[4][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 12: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 13: // STATE 1 - multiplelocks.pml:384 - [(run main_control())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!(addproc(II, 1, 2, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 2 - multiplelocks.pml:387 - [proc = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->proc);
		((P3 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P3 *)_this)->proc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 3 - multiplelocks.pml:389 - [((proc<3))] (10:0:6 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		if (!((((int)((P3 *)_this)->proc)<3)))
			continue;
		/* merge: doors_status[proc].lower = 2(10, 4, 10) */
		reached[3][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = now.doors_status[ Index(((int)((P3 *)_this)->proc), 3) ].lower;
		now.doors_status[ Index(((P3 *)_this)->proc, 3) ].lower = 2;
#ifdef VAR_RANGES
		logval("doors_status[:init::proc].lower", now.doors_status[ Index(((int)((P3 *)_this)->proc), 3) ].lower);
#endif
		;
		/* merge: doors_status[proc].higher = 2(10, 5, 10) */
		reached[3][5] = 1;
		(trpt+1)->bup.ovals[1] = now.doors_status[ Index(((int)((P3 *)_this)->proc), 3) ].higher;
		now.doors_status[ Index(((P3 *)_this)->proc, 3) ].higher = 2;
#ifdef VAR_RANGES
		logval("doors_status[:init::proc].higher", now.doors_status[ Index(((int)((P3 *)_this)->proc), 3) ].higher);
#endif
		;
		/* merge: slide_status[proc].lower = 2(10, 6, 10) */
		reached[3][6] = 1;
		(trpt+1)->bup.ovals[2] = now.slide_status[ Index(((int)((P3 *)_this)->proc), 3) ].lower;
		now.slide_status[ Index(((P3 *)_this)->proc, 3) ].lower = 2;
#ifdef VAR_RANGES
		logval("slide_status[:init::proc].lower", now.slide_status[ Index(((int)((P3 *)_this)->proc), 3) ].lower);
#endif
		;
		/* merge: slide_status[proc].higher = 2(10, 7, 10) */
		reached[3][7] = 1;
		(trpt+1)->bup.ovals[3] = now.slide_status[ Index(((int)((P3 *)_this)->proc), 3) ].higher;
		now.slide_status[ Index(((P3 *)_this)->proc, 3) ].higher = 2;
#ifdef VAR_RANGES
		logval("slide_status[:init::proc].higher", now.slide_status[ Index(((int)((P3 *)_this)->proc), 3) ].higher);
#endif
		;
		/* merge: lock_water_level[proc] = 1(10, 8, 10) */
		reached[3][8] = 1;
		(trpt+1)->bup.ovals[4] = lock_water_level[ Index(((int)((P3 *)_this)->proc), 3) ];
		lock_water_level[ Index(((P3 *)_this)->proc, 3) ] = 1;
#ifdef VAR_RANGES
		logval("lock_water_level[:init::proc]", lock_water_level[ Index(((int)((P3 *)_this)->proc), 3) ]);
#endif
		;
		/* merge: lock_is_occupied[proc] = 0(10, 9, 10) */
		reached[3][9] = 1;
		(trpt+1)->bup.ovals[5] = ((int)now.lock_is_occupied[ Index(((int)((P3 *)_this)->proc), 3) ]);
		now.lock_is_occupied[ Index(((P3 *)_this)->proc, 3) ] = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied[:init::proc]", ((int)now.lock_is_occupied[ Index(((int)((P3 *)_this)->proc), 3) ]));
#endif
		;
		_m = 3; goto P999; /* 6 */
	case 16: // STATE 10 - multiplelocks.pml:396 - [(run lock(proc))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][10] = 1;
		if (!(addproc(II, 1, 0, ((int)((P3 *)_this)->proc))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 11 - multiplelocks.pml:397 - [proc = (proc+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[3][11] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->proc);
		((P3 *)_this)->proc = (((int)((P3 *)_this)->proc)+1);
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P3 *)_this)->proc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 12 - multiplelocks.pml:398 - [((proc==3))] (25:0:2 - 1)
		IfNotBlocked
		reached[3][12] = 1;
		if (!((((int)((P3 *)_this)->proc)==3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: proc */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P3 *)_this)->proc;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->proc = 0;
		/* merge: goto :b7(25, 13, 25) */
		reached[3][13] = 1;
		;
		/* merge: proc = 0(25, 17, 25) */
		reached[3][17] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->proc);
		((P3 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P3 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 26, 25) */
		reached[3][26] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 19: // STATE 17 - multiplelocks.pml:402 - [proc = 0] (0:25:1 - 3)
		IfNotBlocked
		reached[3][17] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->proc);
		((P3 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P3 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 26, 25) */
		reached[3][26] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 20: // STATE 18 - multiplelocks.pml:404 - [((proc<2))] (21:0:2 - 1)
		IfNotBlocked
		reached[3][18] = 1;
		if (!((((int)((P3 *)_this)->proc)<2)))
			continue;
		/* merge: ship_status[proc] = 3(21, 19, 21) */
		reached[3][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P3 *)_this)->proc), 2) ];
		now.ship_status[ Index(((P3 *)_this)->proc, 2) ] = 3;
#ifdef VAR_RANGES
		logval("ship_status[:init::proc]", now.ship_status[ Index(((int)((P3 *)_this)->proc), 2) ]);
#endif
		;
		/* merge: ship_pos[proc] = 0(21, 20, 21) */
		reached[3][20] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.ship_pos[ Index(((int)((P3 *)_this)->proc), 2) ]);
		now.ship_pos[ Index(((P3 *)_this)->proc, 2) ] = 0;
#ifdef VAR_RANGES
		logval("ship_pos[:init::proc]", ((int)now.ship_pos[ Index(((int)((P3 *)_this)->proc), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 21: // STATE 21 - multiplelocks.pml:407 - [(run ship(proc))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][21] = 1;
		if (!(addproc(II, 1, 1, ((int)((P3 *)_this)->proc))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 22 - multiplelocks.pml:408 - [proc = (proc+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[3][22] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->proc);
		((P3 *)_this)->proc = (((int)((P3 *)_this)->proc)+1);
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P3 *)_this)->proc));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 23 - multiplelocks.pml:409 - [((proc==2))] (34:0:2 - 1)
		IfNotBlocked
		reached[3][23] = 1;
		if (!((((int)((P3 *)_this)->proc)==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: proc */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P3 *)_this)->proc;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P3 *)_this)->proc = 0;
		/* merge: goto :b8(34, 24, 34) */
		reached[3][24] = 1;
		;
		/* merge: proc = 0(34, 28, 34) */
		reached[3][28] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->proc);
		((P3 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P3 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 35, 34) */
		reached[3][35] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 24: // STATE 28 - multiplelocks.pml:414 - [proc = 0] (0:34:1 - 3)
		IfNotBlocked
		reached[3][28] = 1;
		(trpt+1)->bup.oval = ((int)((P3 *)_this)->proc);
		((P3 *)_this)->proc = 0;
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P3 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 35, 34) */
		reached[3][35] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 25: // STATE 29 - multiplelocks.pml:416 - [((proc<2))] (34:0:2 - 1)
		IfNotBlocked
		reached[3][29] = 1;
		if (!((((int)((P3 *)_this)->proc)<2)))
			continue;
		/* merge: nr_of_ships_at_pos[ship_pos[proc]] = (nr_of_ships_at_pos[ship_pos[proc]]+1)(34, 30, 34) */
		reached[3][30] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P3 *)_this)->proc), 2) ]), 4) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P3 *)_this)->proc, 2) ], 4) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P3 *)_this)->proc), 2) ]), 4) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[:init::proc]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P3 *)_this)->proc), 2) ]), 4) ]));
#endif
		;
		/* merge: proc = (proc+1)(34, 31, 34) */
		reached[3][31] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P3 *)_this)->proc);
		((P3 *)_this)->proc = (((int)((P3 *)_this)->proc)+1);
#ifdef VAR_RANGES
		logval(":init::proc", ((int)((P3 *)_this)->proc));
#endif
		;
		/* merge: .(goto)(0, 35, 34) */
		reached[3][35] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 26: // STATE 38 - multiplelocks.pml:420 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][38] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC main_control */
	case 27: // STATE 1 - multiplelocks.pml:263 - [request_low?1,lockid] (0:0:1 - 1)
		reached[2][1] = 1;
		if (q_zero(now.request_low))
		{	if (boq != now.request_low) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.request_low) == 0) continue;

		XX=1;
		if (1 != qrecv(now.request_low, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->lockid);
		;
		((P2 *)_this)->lockid = qrecv(now.request_low, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("main_control:lockid", ((int)((P2 *)_this)->lockid));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.request_low);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->lockid)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.request_low))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 28: // STATE 2 - multiplelocks.pml:267 - [((doors_status[lockid].lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!((now.doors_status[ Index(((int)((P2 *)_this)->lockid), 3) ].lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 3 - multiplelocks.pml:269 - [((slide_status[lockid].higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!((now.slide_status[ Index(((int)((P2 *)_this)->lockid), 3) ].higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 4 - multiplelocks.pml:270 - [change_slide_pos[lockid]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (q_full(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 1, 0, 1);
		if (q_zero(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ])) { boq = now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 31: // STATE 5 - multiplelocks.pml:270 - [slide_pos_changed[lockid]?1] (0:0:0 - 1)
		reached[2][5] = 1;
		if (q_zero(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	if (boq != now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 32: // STATE 6 - multiplelocks.pml:271 - [((slide_status[lockid].higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][6] = 1;
		if (!((now.slide_status[ Index(((int)((P2 *)_this)->lockid), 3) ].higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 10 - multiplelocks.pml:275 - [((doors_status[lockid].higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][10] = 1;
		if (!((now.doors_status[ Index(((int)((P2 *)_this)->lockid), 3) ].higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 11 - multiplelocks.pml:276 - [change_doors_pos[lockid]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][11] = 1;
		if (q_full(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 1, 0, 1);
		if (q_zero(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ])) { boq = now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 35: // STATE 12 - multiplelocks.pml:276 - [doors_pos_changed[lockid]?1] (0:0:0 - 1)
		reached[2][12] = 1;
		if (q_zero(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	if (boq != now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 36: // STATE 13 - multiplelocks.pml:277 - [((doors_status[lockid].higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][13] = 1;
		if (!((now.doors_status[ Index(((int)((P2 *)_this)->lockid), 3) ].higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 17 - multiplelocks.pml:281 - [((slide_status[lockid].lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][17] = 1;
		if (!((now.slide_status[ Index(((int)((P2 *)_this)->lockid), 3) ].lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 18 - multiplelocks.pml:282 - [change_slide_pos[lockid]!2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][18] = 1;
		if (q_full(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 2, 0, 1);
		if (q_zero(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ])) { boq = now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 39: // STATE 19 - multiplelocks.pml:282 - [slide_pos_changed[lockid]?1] (0:0:0 - 1)
		reached[2][19] = 1;
		if (q_zero(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	if (boq != now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 40: // STATE 20 - multiplelocks.pml:283 - [((slide_status[lockid].lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][20] = 1;
		if (!((now.slide_status[ Index(((int)((P2 *)_this)->lockid), 3) ].lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 24 - multiplelocks.pml:285 - [change_doors_pos[lockid]!2] (0:0:0 - 3)
		IfNotBlocked
		reached[2][24] = 1;
		if (q_full(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 2, 0, 1);
		if (q_zero(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ])) { boq = now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 42: // STATE 25 - multiplelocks.pml:285 - [doors_pos_changed[lockid]?1] (0:0:0 - 1)
		reached[2][25] = 1;
		if (q_zero(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	if (boq != now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 43: // STATE 26 - multiplelocks.pml:286 - [((doors_status[lockid].lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][26] = 1;
		if (!((now.doors_status[ Index(((int)((P2 *)_this)->lockid), 3) ].lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 30 - multiplelocks.pml:288 - [observed_low[lockid]?1] (0:0:1 - 3)
		reached[2][30] = 1;
		if (q_zero(now.observed_low[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	if (boq != now.observed_low[ Index(((int)((P2 *)_this)->lockid), 3) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.observed_low[ Index(((int)((P2 *)_this)->lockid), 3) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.observed_low[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.observed_low[ Index(((int)((P2 *)_this)->lockid), 3) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.observed_low[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.observed_low[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.observed_low[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		if (TstOnly) return 1; /* TT */
		/* dead 1: lockid */  (trpt+1)->bup.oval = ((P2 *)_this)->lockid;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->lockid = 0;
		_m = 4; goto P999; /* 0 */
	case 45: // STATE 31 - multiplelocks.pml:290 - [request_high?1,lockid] (0:0:1 - 1)
		reached[2][31] = 1;
		if (q_zero(now.request_high))
		{	if (boq != now.request_high) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.request_high) == 0) continue;

		XX=1;
		if (1 != qrecv(now.request_high, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->lockid);
		;
		((P2 *)_this)->lockid = qrecv(now.request_high, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("main_control:lockid", ((int)((P2 *)_this)->lockid));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.request_high);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->lockid)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.request_high))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 46: // STATE 32 - multiplelocks.pml:293 - [((doors_status[lockid].higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][32] = 1;
		if (!((now.doors_status[ Index(((int)((P2 *)_this)->lockid), 3) ].higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 33 - multiplelocks.pml:295 - [((slide_status[lockid].lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][33] = 1;
		if (!((now.slide_status[ Index(((int)((P2 *)_this)->lockid), 3) ].lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 34 - multiplelocks.pml:296 - [change_slide_pos[lockid]!2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][34] = 1;
		if (q_full(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 2, 0, 1);
		if (q_zero(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ])) { boq = now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 49: // STATE 35 - multiplelocks.pml:296 - [slide_pos_changed[lockid]?1] (0:0:0 - 1)
		reached[2][35] = 1;
		if (q_zero(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	if (boq != now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 50: // STATE 36 - multiplelocks.pml:297 - [((slide_status[lockid].lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][36] = 1;
		if (!((now.slide_status[ Index(((int)((P2 *)_this)->lockid), 3) ].lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 40 - multiplelocks.pml:301 - [((doors_status[lockid].lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][40] = 1;
		if (!((now.doors_status[ Index(((int)((P2 *)_this)->lockid), 3) ].lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 41 - multiplelocks.pml:302 - [change_doors_pos[lockid]!2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][41] = 1;
		if (q_full(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 2, 0, 1);
		if (q_zero(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ])) { boq = now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 53: // STATE 42 - multiplelocks.pml:302 - [doors_pos_changed[lockid]?1] (0:0:0 - 1)
		reached[2][42] = 1;
		if (q_zero(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	if (boq != now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 54: // STATE 43 - multiplelocks.pml:303 - [((doors_status[lockid].lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][43] = 1;
		if (!((now.doors_status[ Index(((int)((P2 *)_this)->lockid), 3) ].lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 47 - multiplelocks.pml:307 - [((slide_status[lockid].higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][47] = 1;
		if (!((now.slide_status[ Index(((int)((P2 *)_this)->lockid), 3) ].higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 48 - multiplelocks.pml:308 - [change_slide_pos[lockid]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][48] = 1;
		if (q_full(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 1, 0, 1);
		if (q_zero(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ])) { boq = now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 57: // STATE 49 - multiplelocks.pml:308 - [slide_pos_changed[lockid]?1] (0:0:0 - 1)
		reached[2][49] = 1;
		if (q_zero(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	if (boq != now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 58: // STATE 50 - multiplelocks.pml:309 - [((slide_status[lockid].higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][50] = 1;
		if (!((now.slide_status[ Index(((int)((P2 *)_this)->lockid), 3) ].higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 54 - multiplelocks.pml:311 - [change_doors_pos[lockid]!1] (0:0:0 - 3)
		IfNotBlocked
		reached[2][54] = 1;
		if (q_full(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 1, 0, 1);
		if (q_zero(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ])) { boq = now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 60: // STATE 55 - multiplelocks.pml:311 - [doors_pos_changed[lockid]?1] (0:0:0 - 1)
		reached[2][55] = 1;
		if (q_zero(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	if (boq != now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 61: // STATE 56 - multiplelocks.pml:312 - [((doors_status[lockid].higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][56] = 1;
		if (!((now.doors_status[ Index(((int)((P2 *)_this)->lockid), 3) ].higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 60 - multiplelocks.pml:314 - [observed_high[lockid]?1] (0:0:1 - 3)
		reached[2][60] = 1;
		if (q_zero(now.observed_high[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	if (boq != now.observed_high[ Index(((int)((P2 *)_this)->lockid), 3) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.observed_high[ Index(((int)((P2 *)_this)->lockid), 3) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.observed_high[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.observed_high[ Index(((int)((P2 *)_this)->lockid), 3) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.observed_high[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.observed_high[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.observed_high[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		if (TstOnly) return 1; /* TT */
		/* dead 1: lockid */  (trpt+1)->bup.oval = ((P2 *)_this)->lockid;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->lockid = 0;
		_m = 4; goto P999; /* 0 */
	case 63: // STATE 61 - multiplelocks.pml:316 - [request_low?0,lockid] (0:0:1 - 1)
		reached[2][61] = 1;
		if (q_zero(now.request_low))
		{	if (boq != now.request_low) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.request_low) == 0) continue;

		XX=1;
		if (0 != qrecv(now.request_low, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->lockid);
		;
		((P2 *)_this)->lockid = qrecv(now.request_low, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("main_control:lockid", ((int)((P2 *)_this)->lockid));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.request_low);
		sprintf(simtmp, "%d", 0); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->lockid)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.request_low))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 64: // STATE 62 - multiplelocks.pml:319 - [(lock_is_occupied[lockid])] (0:0:0 - 1)
		IfNotBlocked
		reached[2][62] = 1;
		if (!(((int)now.lock_is_occupied[ Index(((int)((P2 *)_this)->lockid), 3) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 63 - multiplelocks.pml:323 - [((doors_status[lockid].lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][63] = 1;
		if (!((now.doors_status[ Index(((int)((P2 *)_this)->lockid), 3) ].lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 64 - multiplelocks.pml:325 - [((slide_status[lockid].lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][64] = 1;
		if (!((now.slide_status[ Index(((int)((P2 *)_this)->lockid), 3) ].lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 65 - multiplelocks.pml:326 - [change_slide_pos[lockid]!2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][65] = 1;
		if (q_full(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 2, 0, 1);
		if (q_zero(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ])) { boq = now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 68: // STATE 66 - multiplelocks.pml:327 - [slide_pos_changed[lockid]?1] (0:0:0 - 1)
		reached[2][66] = 1;
		if (q_zero(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	if (boq != now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 69: // STATE 67 - multiplelocks.pml:328 - [((slide_status[lockid].lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][67] = 1;
		if (!((now.slide_status[ Index(((int)((P2 *)_this)->lockid), 3) ].lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 71 - multiplelocks.pml:331 - [change_doors_pos[lockid]!2] (0:0:0 - 3)
		IfNotBlocked
		reached[2][71] = 1;
		if (q_full(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 2, 0, 1);
		if (q_zero(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ])) { boq = now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 71: // STATE 72 - multiplelocks.pml:332 - [doors_pos_changed[lockid]?1] (0:0:1 - 1)
		reached[2][72] = 1;
		if (q_zero(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	if (boq != now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		if (TstOnly) return 1; /* TT */
		/* dead 1: lockid */  (trpt+1)->bup.oval = ((P2 *)_this)->lockid;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->lockid = 0;
		_m = 4; goto P999; /* 0 */
	case 72: // STATE 73 - multiplelocks.pml:334 - [((doors_status[lockid].lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][73] = 1;
		if (!((now.doors_status[ Index(((int)((P2 *)_this)->lockid), 3) ].lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 74 - multiplelocks.pml:336 - [((slide_status[lockid].lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][74] = 1;
		if (!((now.slide_status[ Index(((int)((P2 *)_this)->lockid), 3) ].lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 75 - multiplelocks.pml:337 - [change_slide_pos[lockid]!2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][75] = 1;
		if (q_full(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 2, 0, 1);
		if (q_zero(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ])) { boq = now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 75: // STATE 76 - multiplelocks.pml:338 - [slide_pos_changed[lockid]?1] (0:0:1 - 1)
		reached[2][76] = 1;
		if (q_zero(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	if (boq != now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		if (TstOnly) return 1; /* TT */
		/* dead 1: lockid */  (trpt+1)->bup.oval = ((P2 *)_this)->lockid;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->lockid = 0;
		_m = 4; goto P999; /* 0 */
	case 76: // STATE 77 - multiplelocks.pml:339 - [((slide_status[lockid].lower==2))] (0:0:1 - 1)
		IfNotBlocked
		reached[2][77] = 1;
		if (!((now.slide_status[ Index(((int)((P2 *)_this)->lockid), 3) ].lower==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: lockid */  (trpt+1)->bup.oval = ((P2 *)_this)->lockid;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->lockid = 0;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 83 - multiplelocks.pml:343 - [(!(lock_is_occupied[lockid]))] (0:0:1 - 1)
		IfNotBlocked
		reached[2][83] = 1;
		if (!( !(((int)now.lock_is_occupied[ Index(((int)((P2 *)_this)->lockid), 3) ]))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: lockid */  (trpt+1)->bup.oval = ((P2 *)_this)->lockid;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->lockid = 0;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 87 - multiplelocks.pml:346 - [request_high?0,lockid] (0:0:1 - 1)
		reached[2][87] = 1;
		if (q_zero(now.request_high))
		{	if (boq != now.request_high) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.request_high) == 0) continue;

		XX=1;
		if (0 != qrecv(now.request_high, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((int)((P2 *)_this)->lockid);
		;
		((P2 *)_this)->lockid = qrecv(now.request_high, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("main_control:lockid", ((int)((P2 *)_this)->lockid));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.request_high);
		sprintf(simtmp, "%d", 0); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->lockid)); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.request_high))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 79: // STATE 88 - multiplelocks.pml:348 - [(lock_is_occupied[lockid])] (0:0:0 - 1)
		IfNotBlocked
		reached[2][88] = 1;
		if (!(((int)now.lock_is_occupied[ Index(((int)((P2 *)_this)->lockid), 3) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 89 - multiplelocks.pml:351 - [((doors_status[lockid].higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][89] = 1;
		if (!((now.doors_status[ Index(((int)((P2 *)_this)->lockid), 3) ].higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 90 - multiplelocks.pml:353 - [((slide_status[lockid].higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][90] = 1;
		if (!((now.slide_status[ Index(((int)((P2 *)_this)->lockid), 3) ].higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 91 - multiplelocks.pml:354 - [change_slide_pos[lockid]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][91] = 1;
		if (q_full(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 1, 0, 1);
		if (q_zero(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ])) { boq = now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 83: // STATE 92 - multiplelocks.pml:355 - [slide_pos_changed[lockid]?1] (0:0:0 - 1)
		reached[2][92] = 1;
		if (q_zero(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	if (boq != now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 84: // STATE 93 - multiplelocks.pml:356 - [((slide_status[lockid].higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][93] = 1;
		if (!((now.slide_status[ Index(((int)((P2 *)_this)->lockid), 3) ].higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 85: // STATE 97 - multiplelocks.pml:359 - [change_doors_pos[lockid]!1] (0:0:0 - 3)
		IfNotBlocked
		reached[2][97] = 1;
		if (q_full(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 1, 0, 1);
		if (q_zero(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ])) { boq = now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 86: // STATE 98 - multiplelocks.pml:360 - [doors_pos_changed[lockid]?1] (0:0:1 - 1)
		reached[2][98] = 1;
		if (q_zero(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	if (boq != now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		if (TstOnly) return 1; /* TT */
		/* dead 1: lockid */  (trpt+1)->bup.oval = ((P2 *)_this)->lockid;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->lockid = 0;
		_m = 4; goto P999; /* 0 */
	case 87: // STATE 99 - multiplelocks.pml:362 - [((doors_status[lockid].higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][99] = 1;
		if (!((now.doors_status[ Index(((int)((P2 *)_this)->lockid), 3) ].higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 88: // STATE 100 - multiplelocks.pml:364 - [((slide_status[lockid].higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][100] = 1;
		if (!((now.slide_status[ Index(((int)((P2 *)_this)->lockid), 3) ].higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 89: // STATE 101 - multiplelocks.pml:365 - [change_slide_pos[lockid]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][101] = 1;
		if (q_full(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 1, 0, 1);
		if (q_zero(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ])) { boq = now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 90: // STATE 102 - multiplelocks.pml:366 - [slide_pos_changed[lockid]?1] (0:0:1 - 1)
		reached[2][102] = 1;
		if (q_zero(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	if (boq != now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		if (TstOnly) return 1; /* TT */
		/* dead 1: lockid */  (trpt+1)->bup.oval = ((P2 *)_this)->lockid;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->lockid = 0;
		_m = 4; goto P999; /* 0 */
	case 91: // STATE 103 - multiplelocks.pml:367 - [((slide_status[lockid].higher==2))] (0:0:1 - 1)
		IfNotBlocked
		reached[2][103] = 1;
		if (!((now.slide_status[ Index(((int)((P2 *)_this)->lockid), 3) ].higher==2)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: lockid */  (trpt+1)->bup.oval = ((P2 *)_this)->lockid;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->lockid = 0;
		_m = 3; goto P999; /* 0 */
	case 92: // STATE 109 - multiplelocks.pml:372 - [(!(lock_is_occupied[lockid]))] (0:0:1 - 1)
		IfNotBlocked
		reached[2][109] = 1;
		if (!( !(((int)now.lock_is_occupied[ Index(((int)((P2 *)_this)->lockid), 3) ]))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: lockid */  (trpt+1)->bup.oval = ((P2 *)_this)->lockid;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P2 *)_this)->lockid = 0;
		_m = 3; goto P999; /* 0 */
	case 93: // STATE 116 - multiplelocks.pml:375 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][116] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC ship */
	case 94: // STATE 1 - multiplelocks.pml:144 - [(((ship_status[shipid]==5)&&(ship_pos[shipid]!=0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!(((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]==5)&&(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])!=0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 95: // STATE 2 - multiplelocks.pml:145 - [lockid = (ship_pos[shipid]-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->lockid);
		((P1 *)_this)->lockid = (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1);
#ifdef VAR_RANGES
		logval("ship:lockid", ((int)((P1 *)_this)->lockid));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 96: // STATE 3 - multiplelocks.pml:147 - [((doors_status[lockid].higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!((now.doors_status[ Index(((int)((P1 *)_this)->lockid), 3) ].higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 97: // STATE 4 - multiplelocks.pml:148 - [request_high!1,lockid] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (q_full(now.request_high))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.request_high);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->lockid)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.request_high, 0, 1, ((int)((P1 *)_this)->lockid), 2);
		if (q_zero(now.request_high)) { boq = now.request_high; };
		_m = 2; goto P999; /* 0 */
	case 98: // STATE 5 - multiplelocks.pml:150 - [high_req[lockid] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = ((int)now.high_req[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		now.high_req[ Index(((P1 *)_this)->lockid, 3) ] = 1;
#ifdef VAR_RANGES
		logval("high_req[ship:lockid]", ((int)now.high_req[ Index(((int)((P1 *)_this)->lockid), 3) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 99: // STATE 6 - multiplelocks.pml:151 - [((doors_status[lockid].higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		if (!((now.doors_status[ Index(((int)((P1 *)_this)->lockid), 3) ].higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 100: // STATE 7 - multiplelocks.pml:153 - [(!(lock_is_occupied[lockid]))] (11:0:3 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		if (!( !(((int)now.lock_is_occupied[ Index(((int)((P1 *)_this)->lockid), 3) ]))))
			continue;
		/* merge: ship_status[shipid] = 4(11, 8, 11) */
		reached[1][8] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 4;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		/* merge: lock_is_occupied[lockid] = 1(11, 9, 11) */
		reached[1][9] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		now.lock_is_occupied[ Index(((P1 *)_this)->lockid, 3) ] = 1;
#ifdef VAR_RANGES
		logval("lock_is_occupied[ship:lockid]", ((int)now.lock_is_occupied[ Index(((int)((P1 *)_this)->lockid), 3) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)(11, 10, 11) */
		reached[1][10] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ])-1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 101: // STATE 11 - multiplelocks.pml:157 - [observed_high[lockid]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (q_full(now.observed_high[ Index(((int)((P1 *)_this)->lockid), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_high[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_high[ Index(((int)((P1 *)_this)->lockid), 3) ], 0, 1, 0, 1);
		if (q_zero(now.observed_high[ Index(((int)((P1 *)_this)->lockid), 3) ])) { boq = now.observed_high[ Index(((int)((P1 *)_this)->lockid), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 102: // STATE 13 - multiplelocks.pml:159 - [(lock_is_occupied[lockid])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (!(((int)now.lock_is_occupied[ Index(((int)((P1 *)_this)->lockid), 3) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 103: // STATE 14 - multiplelocks.pml:160 - [observed_high[lockid]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		if (q_full(now.observed_high[ Index(((int)((P1 *)_this)->lockid), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_high[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_high[ Index(((int)((P1 *)_this)->lockid), 3) ], 0, 1, 0, 1);
		if (q_zero(now.observed_high[ Index(((int)((P1 *)_this)->lockid), 3) ])) { boq = now.observed_high[ Index(((int)((P1 *)_this)->lockid), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 104: // STATE 18 - multiplelocks.pml:163 - [(((doors_status[lockid].higher==1)&&!(lock_is_occupied[lockid])))] (116:0:3 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		if (!(((now.doors_status[ Index(((int)((P1 *)_this)->lockid), 3) ].higher==1)&& !(((int)now.lock_is_occupied[ Index(((int)((P1 *)_this)->lockid), 3) ])))))
			continue;
		/* merge: ship_status[shipid] = 4(116, 19, 116) */
		reached[1][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 4;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		/* merge: lock_is_occupied[lockid] = 1(116, 20, 116) */
		reached[1][20] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		now.lock_is_occupied[ Index(((P1 *)_this)->lockid, 3) ] = 1;
#ifdef VAR_RANGES
		logval("lock_is_occupied[ship:lockid]", ((int)now.lock_is_occupied[ Index(((int)((P1 *)_this)->lockid), 3) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)(116, 21, 116) */
		reached[1][21] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ])-1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]));
#endif
		;
		/* merge: goto :b2(116, 22, 116) */
		reached[1][22] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 105: // STATE 27 - multiplelocks.pml:169 - [((ship_status[shipid]==4))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		if (!((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 106: // STATE 28 - multiplelocks.pml:171 - [((doors_status[lockid].lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][28] = 1;
		if (!((now.doors_status[ Index(((int)((P1 *)_this)->lockid), 3) ].lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 107: // STATE 29 - multiplelocks.pml:172 - [request_low!1,lockid] (0:0:0 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		if (q_full(now.request_low))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.request_low);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->lockid)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.request_low, 0, 1, ((int)((P1 *)_this)->lockid), 2);
		if (q_zero(now.request_low)) { boq = now.request_low; };
		_m = 2; goto P999; /* 0 */
	case 108: // STATE 30 - multiplelocks.pml:173 - [requested_lock = lockid] (0:0:1 - 1)
		IfNotBlocked
		reached[1][30] = 1;
		(trpt+1)->bup.oval = ((int)requested_lock);
		requested_lock = ((int)((P1 *)_this)->lockid);
#ifdef VAR_RANGES
		logval("requested_lock", ((int)requested_lock));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 109: // STATE 31 - multiplelocks.pml:174 - [low_req[lockid] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		(trpt+1)->bup.oval = ((int)now.low_req[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		now.low_req[ Index(((P1 *)_this)->lockid, 3) ] = 1;
#ifdef VAR_RANGES
		logval("low_req[ship:lockid]", ((int)now.low_req[ Index(((int)((P1 *)_this)->lockid), 3) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 110: // STATE 32 - multiplelocks.pml:175 - [((doors_status[lockid].lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		if (!((now.doors_status[ Index(((int)((P1 *)_this)->lockid), 3) ].lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 33 - multiplelocks.pml:178 - [(((nr_of_ships_at_pos[(ship_pos[shipid]-1)]<2)||((ship_pos[shipid]-1)==0)))] (38:0:4 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		if (!(((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ])<2)||((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1)==0))))
			continue;
		/* merge: ship_status[shipid] = 5(38, 34, 38) */
		reached[1][34] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 5;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		/* merge: lock_is_occupied[lockid] = 0(38, 35, 38) */
		reached[1][35] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		now.lock_is_occupied[ Index(((P1 *)_this)->lockid, 3) ] = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied[ship:lockid]", ((int)now.lock_is_occupied[ Index(((int)((P1 *)_this)->lockid), 3) ]));
#endif
		;
		/* merge: ship_pos[shipid] = (ship_pos[shipid]-1)(38, 36, 38) */
		reached[1][36] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]);
		now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ] = (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1);
#ifdef VAR_RANGES
		logval("ship_pos[ship:shipid]", ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)(38, 37, 38) */
		reached[1][37] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 112: // STATE 38 - multiplelocks.pml:183 - [observed_low[lockid]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][38] = 1;
		if (q_full(now.observed_low[ Index(((int)((P1 *)_this)->lockid), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_low[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_low[ Index(((int)((P1 *)_this)->lockid), 3) ], 0, 1, 0, 1);
		if (q_zero(now.observed_low[ Index(((int)((P1 *)_this)->lockid), 3) ])) { boq = now.observed_low[ Index(((int)((P1 *)_this)->lockid), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 113: // STATE 40 - multiplelocks.pml:186 - [(((nr_of_ships_at_pos[(ship_pos[shipid]-1)]==2)&&((ship_pos[shipid]-1)!=0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][40] = 1;
		if (!(((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ])==2)&&((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1)!=0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 114: // STATE 41 - multiplelocks.pml:187 - [observed_low[lockid]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		if (q_full(now.observed_low[ Index(((int)((P1 *)_this)->lockid), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_low[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_low[ Index(((int)((P1 *)_this)->lockid), 3) ], 0, 1, 0, 1);
		if (q_zero(now.observed_low[ Index(((int)((P1 *)_this)->lockid), 3) ])) { boq = now.observed_low[ Index(((int)((P1 *)_this)->lockid), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 115: // STATE 45 - multiplelocks.pml:191 - [(((doors_status[lockid].lower==1)&&((nr_of_ships_at_pos[(ship_pos[shipid]-1)]<2)||((ship_pos[shipid]-1)==0))))] (116:0:4 - 1)
		IfNotBlocked
		reached[1][45] = 1;
		if (!(((now.doors_status[ Index(((int)((P1 *)_this)->lockid), 3) ].lower==1)&&((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1), 4) ])<2)||((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1)==0)))))
			continue;
		/* merge: ship_status[shipid] = 5(116, 46, 116) */
		reached[1][46] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 5;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		/* merge: lock_is_occupied[lockid] = 0(116, 47, 116) */
		reached[1][47] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		now.lock_is_occupied[ Index(((P1 *)_this)->lockid, 3) ] = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied[ship:lockid]", ((int)now.lock_is_occupied[ Index(((int)((P1 *)_this)->lockid), 3) ]));
#endif
		;
		/* merge: ship_pos[shipid] = (ship_pos[shipid]-1)(116, 48, 116) */
		reached[1][48] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]);
		now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ] = (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])-1);
#ifdef VAR_RANGES
		logval("ship_pos[ship:shipid]", ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)(116, 49, 116) */
		reached[1][49] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]));
#endif
		;
		/* merge: goto :b3(116, 50, 116) */
		reached[1][50] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 116: // STATE 55 - multiplelocks.pml:198 - [(((ship_status[shipid]==3)&&(ship_pos[shipid]!=3)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][55] = 1;
		if (!(((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]==3)&&(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])!=3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 117: // STATE 56 - multiplelocks.pml:199 - [lockid = ship_pos[shipid]] (0:0:1 - 1)
		IfNotBlocked
		reached[1][56] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->lockid);
		((P1 *)_this)->lockid = ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#ifdef VAR_RANGES
		logval("ship:lockid", ((int)((P1 *)_this)->lockid));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 118: // STATE 57 - multiplelocks.pml:201 - [((doors_status[lockid].lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][57] = 1;
		if (!((now.doors_status[ Index(((int)((P1 *)_this)->lockid), 3) ].lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 119: // STATE 58 - multiplelocks.pml:202 - [request_low!1,lockid] (0:0:0 - 1)
		IfNotBlocked
		reached[1][58] = 1;
		if (q_full(now.request_low))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.request_low);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->lockid)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.request_low, 0, 1, ((int)((P1 *)_this)->lockid), 2);
		if (q_zero(now.request_low)) { boq = now.request_low; };
		_m = 2; goto P999; /* 0 */
	case 120: // STATE 59 - multiplelocks.pml:203 - [requested_lock = lockid] (0:0:1 - 1)
		IfNotBlocked
		reached[1][59] = 1;
		(trpt+1)->bup.oval = ((int)requested_lock);
		requested_lock = ((int)((P1 *)_this)->lockid);
#ifdef VAR_RANGES
		logval("requested_lock", ((int)requested_lock));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 121: // STATE 60 - multiplelocks.pml:204 - [low_req[lockid] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][60] = 1;
		(trpt+1)->bup.oval = ((int)now.low_req[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		now.low_req[ Index(((P1 *)_this)->lockid, 3) ] = 1;
#ifdef VAR_RANGES
		logval("low_req[ship:lockid]", ((int)now.low_req[ Index(((int)((P1 *)_this)->lockid), 3) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 122: // STATE 61 - multiplelocks.pml:205 - [((doors_status[lockid].lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][61] = 1;
		if (!((now.doors_status[ Index(((int)((P1 *)_this)->lockid), 3) ].lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 123: // STATE 62 - multiplelocks.pml:207 - [(!(lock_is_occupied[lockid]))] (66:0:3 - 1)
		IfNotBlocked
		reached[1][62] = 1;
		if (!( !(((int)now.lock_is_occupied[ Index(((int)((P1 *)_this)->lockid), 3) ]))))
			continue;
		/* merge: ship_status[shipid] = 2(66, 63, 66) */
		reached[1][63] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 2;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		/* merge: lock_is_occupied[lockid] = 1(66, 64, 66) */
		reached[1][64] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		now.lock_is_occupied[ Index(((P1 *)_this)->lockid, 3) ] = 1;
#ifdef VAR_RANGES
		logval("lock_is_occupied[ship:lockid]", ((int)now.lock_is_occupied[ Index(((int)((P1 *)_this)->lockid), 3) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)(66, 65, 66) */
		reached[1][65] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ])-1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 124: // STATE 66 - multiplelocks.pml:211 - [observed_low[lockid]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][66] = 1;
		if (q_full(now.observed_low[ Index(((int)((P1 *)_this)->lockid), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_low[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_low[ Index(((int)((P1 *)_this)->lockid), 3) ], 0, 1, 0, 1);
		if (q_zero(now.observed_low[ Index(((int)((P1 *)_this)->lockid), 3) ])) { boq = now.observed_low[ Index(((int)((P1 *)_this)->lockid), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 125: // STATE 68 - multiplelocks.pml:213 - [(lock_is_occupied[lockid])] (0:0:0 - 1)
		IfNotBlocked
		reached[1][68] = 1;
		if (!(((int)now.lock_is_occupied[ Index(((int)((P1 *)_this)->lockid), 3) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 126: // STATE 69 - multiplelocks.pml:214 - [observed_low[lockid]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][69] = 1;
		if (q_full(now.observed_low[ Index(((int)((P1 *)_this)->lockid), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_low[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_low[ Index(((int)((P1 *)_this)->lockid), 3) ], 0, 1, 0, 1);
		if (q_zero(now.observed_low[ Index(((int)((P1 *)_this)->lockid), 3) ])) { boq = now.observed_low[ Index(((int)((P1 *)_this)->lockid), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 127: // STATE 73 - multiplelocks.pml:217 - [(((doors_status[lockid].lower==1)&&!(lock_is_occupied[lockid])))] (116:0:3 - 1)
		IfNotBlocked
		reached[1][73] = 1;
		if (!(((now.doors_status[ Index(((int)((P1 *)_this)->lockid), 3) ].lower==1)&& !(((int)now.lock_is_occupied[ Index(((int)((P1 *)_this)->lockid), 3) ])))))
			continue;
		/* merge: ship_status[shipid] = 2(116, 74, 116) */
		reached[1][74] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 2;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		/* merge: lock_is_occupied[lockid] = 1(116, 75, 116) */
		reached[1][75] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		now.lock_is_occupied[ Index(((P1 *)_this)->lockid, 3) ] = 1;
#ifdef VAR_RANGES
		logval("lock_is_occupied[ship:lockid]", ((int)now.lock_is_occupied[ Index(((int)((P1 *)_this)->lockid), 3) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]-1)(116, 76, 116) */
		reached[1][76] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ])-1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]));
#endif
		;
		/* merge: goto :b4(116, 77, 116) */
		reached[1][77] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 128: // STATE 82 - multiplelocks.pml:223 - [((ship_status[shipid]==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][82] = 1;
		if (!((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 129: // STATE 83 - multiplelocks.pml:225 - [((doors_status[lockid].higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][83] = 1;
		if (!((now.doors_status[ Index(((int)((P1 *)_this)->lockid), 3) ].higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 130: // STATE 84 - multiplelocks.pml:226 - [request_high!1,lockid] (0:0:0 - 1)
		IfNotBlocked
		reached[1][84] = 1;
		if (q_full(now.request_high))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.request_high);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->lockid)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.request_high, 0, 1, ((int)((P1 *)_this)->lockid), 2);
		if (q_zero(now.request_high)) { boq = now.request_high; };
		_m = 2; goto P999; /* 0 */
	case 131: // STATE 85 - multiplelocks.pml:227 - [requested_lock = lockid] (0:0:1 - 1)
		IfNotBlocked
		reached[1][85] = 1;
		(trpt+1)->bup.oval = ((int)requested_lock);
		requested_lock = ((int)((P1 *)_this)->lockid);
#ifdef VAR_RANGES
		logval("requested_lock", ((int)requested_lock));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 132: // STATE 86 - multiplelocks.pml:228 - [high_req[lockid] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][86] = 1;
		(trpt+1)->bup.oval = ((int)now.high_req[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		now.high_req[ Index(((P1 *)_this)->lockid, 3) ] = 1;
#ifdef VAR_RANGES
		logval("high_req[ship:lockid]", ((int)now.high_req[ Index(((int)((P1 *)_this)->lockid), 3) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 133: // STATE 87 - multiplelocks.pml:229 - [((doors_status[lockid].higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][87] = 1;
		if (!((now.doors_status[ Index(((int)((P1 *)_this)->lockid), 3) ].higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 134: // STATE 88 - multiplelocks.pml:232 - [(((nr_of_ships_at_pos[(ship_pos[shipid]+1)]<2)||((ship_pos[shipid]+1)==3)))] (93:0:4 - 1)
		IfNotBlocked
		reached[1][88] = 1;
		if (!(((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])+1), 4) ])<2)||((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])+1)==3))))
			continue;
		/* merge: ship_status[shipid] = 3(93, 89, 93) */
		reached[1][89] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 3;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		/* merge: lock_is_occupied[lockid] = 0(93, 90, 93) */
		reached[1][90] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		now.lock_is_occupied[ Index(((P1 *)_this)->lockid, 3) ] = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied[ship:lockid]", ((int)now.lock_is_occupied[ Index(((int)((P1 *)_this)->lockid), 3) ]));
#endif
		;
		/* merge: ship_pos[shipid] = (ship_pos[shipid]+1)(93, 91, 93) */
		reached[1][91] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]);
		now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ] = (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])+1);
#ifdef VAR_RANGES
		logval("ship_pos[ship:shipid]", ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)(93, 92, 93) */
		reached[1][92] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 135: // STATE 93 - multiplelocks.pml:237 - [observed_high[lockid]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][93] = 1;
		if (q_full(now.observed_high[ Index(((int)((P1 *)_this)->lockid), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_high[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_high[ Index(((int)((P1 *)_this)->lockid), 3) ], 0, 1, 0, 1);
		if (q_zero(now.observed_high[ Index(((int)((P1 *)_this)->lockid), 3) ])) { boq = now.observed_high[ Index(((int)((P1 *)_this)->lockid), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 136: // STATE 95 - multiplelocks.pml:240 - [(((nr_of_ships_at_pos[(ship_pos[shipid]+1)]==2)&&((ship_pos[shipid]+1)!=3)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][95] = 1;
		if (!(((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])+1), 4) ])==2)&&((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])+1)!=3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 137: // STATE 96 - multiplelocks.pml:241 - [observed_high[lockid]!1] (0:0:0 - 1)
		IfNotBlocked
		reached[1][96] = 1;
		if (q_full(now.observed_high[ Index(((int)((P1 *)_this)->lockid), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.observed_high[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.observed_high[ Index(((int)((P1 *)_this)->lockid), 3) ], 0, 1, 0, 1);
		if (q_zero(now.observed_high[ Index(((int)((P1 *)_this)->lockid), 3) ])) { boq = now.observed_high[ Index(((int)((P1 *)_this)->lockid), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 138: // STATE 100 - multiplelocks.pml:245 - [(((doors_status[lockid].higher==1)&&((nr_of_ships_at_pos[(ship_pos[shipid]+1)]<2)||((ship_pos[shipid]+1)==3))))] (116:0:4 - 1)
		IfNotBlocked
		reached[1][100] = 1;
		if (!(((now.doors_status[ Index(((int)((P1 *)_this)->lockid), 3) ].higher==1)&&((((int)now.nr_of_ships_at_pos[ Index((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])+1), 4) ])<2)||((((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])+1)==3)))))
			continue;
		/* merge: ship_status[shipid] = 3(116, 101, 116) */
		reached[1][101] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 3;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		/* merge: lock_is_occupied[lockid] = 0(116, 102, 116) */
		reached[1][102] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.lock_is_occupied[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		now.lock_is_occupied[ Index(((P1 *)_this)->lockid, 3) ] = 0;
#ifdef VAR_RANGES
		logval("lock_is_occupied[ship:lockid]", ((int)now.lock_is_occupied[ Index(((int)((P1 *)_this)->lockid), 3) ]));
#endif
		;
		/* merge: ship_pos[shipid] = (ship_pos[shipid]+1)(116, 103, 116) */
		reached[1][103] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]);
		now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ] = (((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])+1);
#ifdef VAR_RANGES
		logval("ship_pos[ship:shipid]", ((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]));
#endif
		;
		/* merge: nr_of_ships_at_pos[ship_pos[shipid]] = (nr_of_ships_at_pos[ship_pos[shipid]]+1)(116, 104, 116) */
		reached[1][104] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]);
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = (((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ])+1);
#ifdef VAR_RANGES
		logval("nr_of_ships_at_pos[ship_pos[ship:shipid]]", ((int)now.nr_of_ships_at_pos[ Index(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ]), 4) ]));
#endif
		;
		/* merge: goto :b5(116, 105, 116) */
		reached[1][105] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 139: // STATE 110 - multiplelocks.pml:252 - [(((ship_status[shipid]==5)&&(ship_pos[shipid]==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][110] = 1;
		if (!(((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]==5)&&(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 140: // STATE 111 - multiplelocks.pml:253 - [ship_status[shipid] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][111] = 1;
		(trpt+1)->bup.oval = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 1;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 141: // STATE 112 - multiplelocks.pml:253 - [ship_status[shipid] = 3] (0:0:1 - 1)
		IfNotBlocked
		reached[1][112] = 1;
		(trpt+1)->bup.oval = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 3;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 142: // STATE 113 - multiplelocks.pml:254 - [(((ship_status[shipid]==3)&&(ship_pos[shipid]==3)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][113] = 1;
		if (!(((now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]==3)&&(((int)now.ship_pos[ Index(((int)((P1 *)_this)->shipid), 2) ])==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 143: // STATE 114 - multiplelocks.pml:255 - [ship_status[shipid] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][114] = 1;
		(trpt+1)->bup.oval = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 1;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 144: // STATE 115 - multiplelocks.pml:255 - [ship_status[shipid] = 5] (0:0:1 - 1)
		IfNotBlocked
		reached[1][115] = 1;
		(trpt+1)->bup.oval = now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = 5;
#ifdef VAR_RANGES
		logval("ship_status[ship:shipid]", now.ship_status[ Index(((int)((P1 *)_this)->shipid), 2) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 145: // STATE 119 - multiplelocks.pml:257 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][119] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC lock */
	case 146: // STATE 1 - multiplelocks.pml:100 - [change_doors_pos[lockid]?2] (0:0:0 - 1)
		reached[0][1] = 1;
		if (q_zero(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 3) ]))
		{	if (boq != now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 3) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 3) ]) == 0) continue;

		XX=1;
		if (2 != qrecv(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 3) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 3) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 3) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 3) ]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 147: // STATE 2 - multiplelocks.pml:102 - [((doors_status[lockid].lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.doors_status[ Index(((int)((P0 *)_this)->lockid), 3) ].lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 148: // STATE 3 - multiplelocks.pml:102 - [doors_status[lockid].lower = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.doors_status[ Index(((int)((P0 *)_this)->lockid), 3) ].lower;
		now.doors_status[ Index(((P0 *)_this)->lockid, 3) ].lower = 1;
#ifdef VAR_RANGES
		logval("doors_status[lock:lockid].lower", now.doors_status[ Index(((int)((P0 *)_this)->lockid), 3) ].lower);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 149: // STATE 4 - multiplelocks.pml:103 - [lock_water_level[lockid] = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = lock_water_level[ Index(((int)((P0 *)_this)->lockid), 3) ];
		lock_water_level[ Index(((P0 *)_this)->lockid, 3) ] = 2;
#ifdef VAR_RANGES
		logval("lock_water_level[lock:lockid]", lock_water_level[ Index(((int)((P0 *)_this)->lockid), 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 150: // STATE 5 - multiplelocks.pml:104 - [((doors_status[lockid].lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (!((now.doors_status[ Index(((int)((P0 *)_this)->lockid), 3) ].lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 151: // STATE 6 - multiplelocks.pml:104 - [doors_status[lockid].lower = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = now.doors_status[ Index(((int)((P0 *)_this)->lockid), 3) ].lower;
		now.doors_status[ Index(((P0 *)_this)->lockid, 3) ].lower = 2;
#ifdef VAR_RANGES
		logval("doors_status[lock:lockid].lower", now.doors_status[ Index(((int)((P0 *)_this)->lockid), 3) ].lower);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 152: // STATE 9 - multiplelocks.pml:106 - [doors_pos_changed[lockid]!1] (0:0:0 - 3)
		IfNotBlocked
		reached[0][9] = 1;
		if (q_full(now.doors_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.doors_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.doors_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ], 0, 1, 0, 1);
		if (q_zero(now.doors_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ])) { boq = now.doors_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 153: // STATE 10 - multiplelocks.pml:107 - [change_doors_pos[lockid]?1] (0:0:0 - 1)
		reached[0][10] = 1;
		if (q_zero(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 3) ]))
		{	if (boq != now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 3) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 3) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 3) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 3) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 3) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 3) ]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 154: // STATE 11 - multiplelocks.pml:109 - [((doors_status[lockid].higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		if (!((now.doors_status[ Index(((int)((P0 *)_this)->lockid), 3) ].higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 155: // STATE 12 - multiplelocks.pml:109 - [doors_status[lockid].higher = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.oval = now.doors_status[ Index(((int)((P0 *)_this)->lockid), 3) ].higher;
		now.doors_status[ Index(((P0 *)_this)->lockid, 3) ].higher = 1;
#ifdef VAR_RANGES
		logval("doors_status[lock:lockid].higher", now.doors_status[ Index(((int)((P0 *)_this)->lockid), 3) ].higher);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 156: // STATE 13 - multiplelocks.pml:111 - [(((doors_status[lockid].lower==2)&&(slide_status[lockid].lower==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!(((now.doors_status[ Index(((int)((P0 *)_this)->lockid), 3) ].lower==2)&&(now.slide_status[ Index(((int)((P0 *)_this)->lockid), 3) ].lower==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 157: // STATE 14 - multiplelocks.pml:112 - [lock_water_level[lockid] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = lock_water_level[ Index(((int)((P0 *)_this)->lockid), 3) ];
		lock_water_level[ Index(((P0 *)_this)->lockid, 3) ] = 1;
#ifdef VAR_RANGES
		logval("lock_water_level[lock:lockid]", lock_water_level[ Index(((int)((P0 *)_this)->lockid), 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 158: // STATE 15 - multiplelocks.pml:113 - [(((doors_status[lockid].lower==1)||(slide_status[lockid].lower==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (!(((now.doors_status[ Index(((int)((P0 *)_this)->lockid), 3) ].lower==1)||(now.slide_status[ Index(((int)((P0 *)_this)->lockid), 3) ].lower==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 159: // STATE 19 - multiplelocks.pml:115 - [((doors_status[lockid].higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		if (!((now.doors_status[ Index(((int)((P0 *)_this)->lockid), 3) ].higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 160: // STATE 20 - multiplelocks.pml:115 - [doors_status[lockid].higher = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.oval = now.doors_status[ Index(((int)((P0 *)_this)->lockid), 3) ].higher;
		now.doors_status[ Index(((P0 *)_this)->lockid, 3) ].higher = 2;
#ifdef VAR_RANGES
		logval("doors_status[lock:lockid].higher", now.doors_status[ Index(((int)((P0 *)_this)->lockid), 3) ].higher);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 161: // STATE 23 - multiplelocks.pml:117 - [doors_pos_changed[lockid]!1] (0:0:0 - 5)
		IfNotBlocked
		reached[0][23] = 1;
		if (q_full(now.doors_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.doors_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.doors_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ], 0, 1, 0, 1);
		if (q_zero(now.doors_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ])) { boq = now.doors_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 162: // STATE 24 - multiplelocks.pml:118 - [change_slide_pos[lockid]?2] (0:0:0 - 1)
		reached[0][24] = 1;
		if (q_zero(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 3) ]))
		{	if (boq != now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 3) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 3) ]) == 0) continue;

		XX=1;
		if (2 != qrecv(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 3) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 3) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 3) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 3) ]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 163: // STATE 25 - multiplelocks.pml:120 - [((slide_status[lockid].lower==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		if (!((now.slide_status[ Index(((int)((P0 *)_this)->lockid), 3) ].lower==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 164: // STATE 26 - multiplelocks.pml:120 - [slide_status[lockid].lower = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		(trpt+1)->bup.oval = now.slide_status[ Index(((int)((P0 *)_this)->lockid), 3) ].lower;
		now.slide_status[ Index(((P0 *)_this)->lockid, 3) ].lower = 1;
#ifdef VAR_RANGES
		logval("slide_status[lock:lockid].lower", now.slide_status[ Index(((int)((P0 *)_this)->lockid), 3) ].lower);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 165: // STATE 27 - multiplelocks.pml:121 - [lock_water_level[lockid] = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		(trpt+1)->bup.oval = lock_water_level[ Index(((int)((P0 *)_this)->lockid), 3) ];
		lock_water_level[ Index(((P0 *)_this)->lockid, 3) ] = 2;
#ifdef VAR_RANGES
		logval("lock_water_level[lock:lockid]", lock_water_level[ Index(((int)((P0 *)_this)->lockid), 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 166: // STATE 28 - multiplelocks.pml:122 - [((slide_status[lockid].lower==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		if (!((now.slide_status[ Index(((int)((P0 *)_this)->lockid), 3) ].lower==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 167: // STATE 29 - multiplelocks.pml:122 - [slide_status[lockid].lower = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		(trpt+1)->bup.oval = now.slide_status[ Index(((int)((P0 *)_this)->lockid), 3) ].lower;
		now.slide_status[ Index(((P0 *)_this)->lockid, 3) ].lower = 2;
#ifdef VAR_RANGES
		logval("slide_status[lock:lockid].lower", now.slide_status[ Index(((int)((P0 *)_this)->lockid), 3) ].lower);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 168: // STATE 32 - multiplelocks.pml:124 - [slide_pos_changed[lockid]!1] (0:0:0 - 3)
		IfNotBlocked
		reached[0][32] = 1;
		if (q_full(now.slide_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.slide_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.slide_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ], 0, 1, 0, 1);
		if (q_zero(now.slide_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ])) { boq = now.slide_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 169: // STATE 33 - multiplelocks.pml:125 - [change_slide_pos[lockid]?1] (0:0:0 - 1)
		reached[0][33] = 1;
		if (q_zero(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 3) ]))
		{	if (boq != now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 3) ]) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 3) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 3) ], 0, 0, 0)) continue;
		
#ifndef BFS_PAR
		if (q_flds[((Q0 *)qptr(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 3) ]-1))->_t] != 1)
			Uerror("wrong nr of msg fields in rcv");
#endif
		;
		qrecv(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 3) ], XX-1, 0, 1);
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 3) ]))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 170: // STATE 34 - multiplelocks.pml:127 - [((slide_status[lockid].higher==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][34] = 1;
		if (!((now.slide_status[ Index(((int)((P0 *)_this)->lockid), 3) ].higher==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 171: // STATE 35 - multiplelocks.pml:127 - [slide_status[lockid].higher = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][35] = 1;
		(trpt+1)->bup.oval = now.slide_status[ Index(((int)((P0 *)_this)->lockid), 3) ].higher;
		now.slide_status[ Index(((P0 *)_this)->lockid, 3) ].higher = 1;
#ifdef VAR_RANGES
		logval("slide_status[lock:lockid].higher", now.slide_status[ Index(((int)((P0 *)_this)->lockid), 3) ].higher);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 172: // STATE 36 - multiplelocks.pml:129 - [(((doors_status[lockid].lower==2)&&(slide_status[lockid].lower==2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		if (!(((now.doors_status[ Index(((int)((P0 *)_this)->lockid), 3) ].lower==2)&&(now.slide_status[ Index(((int)((P0 *)_this)->lockid), 3) ].lower==2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 173: // STATE 37 - multiplelocks.pml:130 - [lock_water_level[lockid] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		(trpt+1)->bup.oval = lock_water_level[ Index(((int)((P0 *)_this)->lockid), 3) ];
		lock_water_level[ Index(((P0 *)_this)->lockid, 3) ] = 1;
#ifdef VAR_RANGES
		logval("lock_water_level[lock:lockid]", lock_water_level[ Index(((int)((P0 *)_this)->lockid), 3) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 174: // STATE 38 - multiplelocks.pml:131 - [(((doors_status[lockid].lower==1)||(slide_status[lockid].lower==1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][38] = 1;
		if (!(((now.doors_status[ Index(((int)((P0 *)_this)->lockid), 3) ].lower==1)||(now.slide_status[ Index(((int)((P0 *)_this)->lockid), 3) ].lower==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 175: // STATE 42 - multiplelocks.pml:133 - [((slide_status[lockid].higher==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][42] = 1;
		if (!((now.slide_status[ Index(((int)((P0 *)_this)->lockid), 3) ].higher==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 176: // STATE 43 - multiplelocks.pml:133 - [slide_status[lockid].higher = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][43] = 1;
		(trpt+1)->bup.oval = now.slide_status[ Index(((int)((P0 *)_this)->lockid), 3) ].higher;
		now.slide_status[ Index(((P0 *)_this)->lockid, 3) ].higher = 2;
#ifdef VAR_RANGES
		logval("slide_status[lock:lockid].higher", now.slide_status[ Index(((int)((P0 *)_this)->lockid), 3) ].higher);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 177: // STATE 46 - multiplelocks.pml:135 - [slide_pos_changed[lockid]!1] (0:0:0 - 5)
		IfNotBlocked
		reached[0][46] = 1;
		if (q_full(now.slide_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.slide_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.slide_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ], 0, 1, 0, 1);
		if (q_zero(now.slide_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ])) { boq = now.slide_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ]; };
		_m = 2; goto P999; /* 0 */
	case 178: // STATE 50 - multiplelocks.pml:137 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][50] = 1;
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

