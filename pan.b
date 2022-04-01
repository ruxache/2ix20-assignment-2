	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM f2 */
;
		;
		;
		;
		
	case 5: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM f1 */
;
		;
		;
		;
		
	case 8: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM e2 */
;
		
	case 9: // STATE 1
		goto R999;

	case 10: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM e1 */
;
		
	case 11: // STATE 1
		goto R999;

	case 12: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 13: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 14: // STATE 2
		;
		((P3 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 15: // STATE 9
		;
		now.lock_is_occupied[ Index(((P3 *)_this)->proc, 3) ] = trpt->bup.ovals[5];
		lock_water_level[ Index(((P3 *)_this)->proc, 3) ] = trpt->bup.ovals[4];
		now.slide_status[ Index(((P3 *)_this)->proc, 3) ].higher = trpt->bup.ovals[3];
		now.slide_status[ Index(((P3 *)_this)->proc, 3) ].lower = trpt->bup.ovals[2];
		now.doors_status[ Index(((P3 *)_this)->proc, 3) ].higher = trpt->bup.ovals[1];
		now.doors_status[ Index(((P3 *)_this)->proc, 3) ].lower = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 16: // STATE 10
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 17: // STATE 11
		;
		((P3 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 17
		;
		((P3 *)_this)->proc = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->proc = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 19: // STATE 17
		;
		((P3 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 20
		;
		now.ship_pos[ Index(((P3 *)_this)->proc, 2) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P3 *)_this)->proc, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 21: // STATE 21
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 22: // STATE 22
		;
		((P3 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 28
		;
		((P3 *)_this)->proc = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->proc = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 24: // STATE 28
		;
		((P3 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 31
		;
		((P3 *)_this)->proc = trpt->bup.ovals[1];
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P3 *)_this)->proc, 2) ], 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 26: // STATE 38
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC main_control */

	case 27: // STATE 1
		;
		XX = 1;
		unrecv(now.request_low, XX-1, 0, 1, 1);
		unrecv(now.request_low, XX-1, 1, ((int)((P2 *)_this)->lockid), 0);
		((P2 *)_this)->lockid = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 30: // STATE 4
		;
		_m = unsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 31: // STATE 5
		;
		XX = 1;
		unrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 34: // STATE 11
		;
		_m = unsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 35: // STATE 12
		;
		XX = 1;
		unrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 38: // STATE 18
		;
		_m = unsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 39: // STATE 19
		;
		XX = 1;
		unrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 41: // STATE 24
		;
		_m = unsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 42: // STATE 25
		;
		XX = 1;
		unrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 44: // STATE 30
		;
	/* 0 */	((P2 *)_this)->lockid = trpt->bup.oval;
		XX = 1;
		unrecv(now.observed_low[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 45: // STATE 31
		;
		XX = 1;
		unrecv(now.request_high, XX-1, 0, 1, 1);
		unrecv(now.request_high, XX-1, 1, ((int)((P2 *)_this)->lockid), 0);
		((P2 *)_this)->lockid = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 48: // STATE 34
		;
		_m = unsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 49: // STATE 35
		;
		XX = 1;
		unrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 52: // STATE 41
		;
		_m = unsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 53: // STATE 42
		;
		XX = 1;
		unrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 56: // STATE 48
		;
		_m = unsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 57: // STATE 49
		;
		XX = 1;
		unrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 59: // STATE 54
		;
		_m = unsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 60: // STATE 55
		;
		XX = 1;
		unrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 62: // STATE 60
		;
	/* 0 */	((P2 *)_this)->lockid = trpt->bup.oval;
		XX = 1;
		unrecv(now.observed_high[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 63: // STATE 61
		;
		XX = 1;
		unrecv(now.request_low, XX-1, 0, 0, 1);
		unrecv(now.request_low, XX-1, 1, ((int)((P2 *)_this)->lockid), 0);
		((P2 *)_this)->lockid = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 67: // STATE 65
		;
		_m = unsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 68: // STATE 66
		;
		XX = 1;
		unrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 70: // STATE 71
		;
		_m = unsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 71: // STATE 72
		;
	/* 0 */	((P2 *)_this)->lockid = trpt->bup.oval;
		XX = 1;
		unrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 74: // STATE 75
		;
		_m = unsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 75: // STATE 76
		;
	/* 0 */	((P2 *)_this)->lockid = trpt->bup.oval;
		XX = 1;
		unrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 76: // STATE 77
		;
	/* 0 */	((P2 *)_this)->lockid = trpt->bup.oval;
		;
		;
		goto R999;

	case 77: // STATE 83
		;
	/* 0 */	((P2 *)_this)->lockid = trpt->bup.oval;
		;
		;
		goto R999;

	case 78: // STATE 87
		;
		XX = 1;
		unrecv(now.request_high, XX-1, 0, 0, 1);
		unrecv(now.request_high, XX-1, 1, ((int)((P2 *)_this)->lockid), 0);
		((P2 *)_this)->lockid = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 82: // STATE 91
		;
		_m = unsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 83: // STATE 92
		;
		XX = 1;
		unrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 85: // STATE 97
		;
		_m = unsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 86: // STATE 98
		;
	/* 0 */	((P2 *)_this)->lockid = trpt->bup.oval;
		XX = 1;
		unrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 89: // STATE 101
		;
		_m = unsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 90: // STATE 102
		;
	/* 0 */	((P2 *)_this)->lockid = trpt->bup.oval;
		XX = 1;
		unrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 91: // STATE 103
		;
	/* 0 */	((P2 *)_this)->lockid = trpt->bup.oval;
		;
		;
		goto R999;

	case 92: // STATE 109
		;
	/* 0 */	((P2 *)_this)->lockid = trpt->bup.oval;
		;
		;
		goto R999;

	case 93: // STATE 116
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC ship */
;
		;
		
	case 95: // STATE 2
		;
		((P1 *)_this)->lockid = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 97: // STATE 4
		;
		_m = unsend(now.request_high);
		;
		goto R999;

	case 98: // STATE 5
		;
		now.high_req[ Index(((P1 *)_this)->lockid, 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 100: // STATE 10
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index(((P1 *)_this)->lockid, 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 101: // STATE 11
		;
		_m = unsend(now.observed_high[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		;
		goto R999;
;
		;
		
	case 103: // STATE 14
		;
		_m = unsend(now.observed_high[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 104: // STATE 21
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index(((P1 *)_this)->lockid, 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		;
		;
		
	case 107: // STATE 29
		;
		_m = unsend(now.request_low);
		;
		goto R999;

	case 108: // STATE 30
		;
		requested_lock = trpt->bup.oval;
		;
		goto R999;

	case 109: // STATE 31
		;
		now.low_req[ Index(((P1 *)_this)->lockid, 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 111: // STATE 37
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index(((P1 *)_this)->lockid, 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 112: // STATE 38
		;
		_m = unsend(now.observed_low[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		;
		goto R999;
;
		;
		
	case 114: // STATE 41
		;
		_m = unsend(now.observed_low[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 115: // STATE 49
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index(((P1 *)_this)->lockid, 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		
	case 117: // STATE 56
		;
		((P1 *)_this)->lockid = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 119: // STATE 58
		;
		_m = unsend(now.request_low);
		;
		goto R999;

	case 120: // STATE 59
		;
		requested_lock = trpt->bup.oval;
		;
		goto R999;

	case 121: // STATE 60
		;
		now.low_req[ Index(((P1 *)_this)->lockid, 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 123: // STATE 65
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index(((P1 *)_this)->lockid, 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 124: // STATE 66
		;
		_m = unsend(now.observed_low[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		;
		goto R999;
;
		;
		
	case 126: // STATE 69
		;
		_m = unsend(now.observed_low[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 127: // STATE 76
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index(((P1 *)_this)->lockid, 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		;
		;
		
	case 130: // STATE 84
		;
		_m = unsend(now.request_high);
		;
		goto R999;

	case 131: // STATE 85
		;
		requested_lock = trpt->bup.oval;
		;
		goto R999;

	case 132: // STATE 86
		;
		now.high_req[ Index(((P1 *)_this)->lockid, 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 134: // STATE 92
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index(((P1 *)_this)->lockid, 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 135: // STATE 93
		;
		_m = unsend(now.observed_high[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		;
		goto R999;
;
		;
		
	case 137: // STATE 96
		;
		_m = unsend(now.observed_high[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 138: // STATE 104
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index(((P1 *)_this)->lockid, 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		
	case 140: // STATE 111
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 141: // STATE 112
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 143: // STATE 114
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 144: // STATE 115
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 145: // STATE 119
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC lock */

	case 146: // STATE 1
		;
		XX = 1;
		unrecv(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 3) ], XX-1, 0, 2, 1);
		;
		;
		goto R999;
;
		;
		
	case 148: // STATE 3
		;
		now.doors_status[ Index(((P0 *)_this)->lockid, 3) ].lower = trpt->bup.oval;
		;
		goto R999;

	case 149: // STATE 4
		;
		lock_water_level[ Index(((P0 *)_this)->lockid, 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 151: // STATE 6
		;
		now.doors_status[ Index(((P0 *)_this)->lockid, 3) ].lower = trpt->bup.oval;
		;
		goto R999;

	case 152: // STATE 9
		;
		_m = unsend(now.doors_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 153: // STATE 10
		;
		XX = 1;
		unrecv(now.change_doors_pos[ Index(((int)((P0 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 155: // STATE 12
		;
		now.doors_status[ Index(((P0 *)_this)->lockid, 3) ].higher = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 157: // STATE 14
		;
		lock_water_level[ Index(((P0 *)_this)->lockid, 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 160: // STATE 20
		;
		now.doors_status[ Index(((P0 *)_this)->lockid, 3) ].higher = trpt->bup.oval;
		;
		goto R999;

	case 161: // STATE 23
		;
		_m = unsend(now.doors_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 162: // STATE 24
		;
		XX = 1;
		unrecv(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 3) ], XX-1, 0, 2, 1);
		;
		;
		goto R999;
;
		;
		
	case 164: // STATE 26
		;
		now.slide_status[ Index(((P0 *)_this)->lockid, 3) ].lower = trpt->bup.oval;
		;
		goto R999;

	case 165: // STATE 27
		;
		lock_water_level[ Index(((P0 *)_this)->lockid, 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 167: // STATE 29
		;
		now.slide_status[ Index(((P0 *)_this)->lockid, 3) ].lower = trpt->bup.oval;
		;
		goto R999;

	case 168: // STATE 32
		;
		_m = unsend(now.slide_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 169: // STATE 33
		;
		XX = 1;
		unrecv(now.change_slide_pos[ Index(((int)((P0 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 171: // STATE 35
		;
		now.slide_status[ Index(((P0 *)_this)->lockid, 3) ].higher = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 173: // STATE 37
		;
		lock_water_level[ Index(((P0 *)_this)->lockid, 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 176: // STATE 43
		;
		now.slide_status[ Index(((P0 *)_this)->lockid, 3) ].higher = trpt->bup.oval;
		;
		goto R999;

	case 177: // STATE 46
		;
		_m = unsend(now.slide_pos_changed[ Index(((int)((P0 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 178: // STATE 50
		;
		p_restor(II);
		;
		;
		goto R999;
	}

