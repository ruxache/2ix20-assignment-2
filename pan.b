	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM d2 */
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

		 /* CLAIM d1 */
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

		 /* PROC :init: */

	case 9: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 10: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 11: // STATE 3
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 10
		;
		now.lock_is_occupied = trpt->bup.ovals[5];
		now.lock_water_level = trpt->bup.ovals[4];
		now.slide_status.higher = trpt->bup.ovals[3];
		now.slide_status.lower = trpt->bup.ovals[2];
		now.doors_status.higher = trpt->bup.ovals[1];
		now.doors_status.lower = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 13: // STATE 11
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 14: // STATE 12
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 15: // STATE 18
		;
		((P4 *)_this)->proc = trpt->bup.ovals[1];
	/* 0 */	((P4 *)_this)->proc = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 16: // STATE 18
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 21
		;
		now.ship_pos[ Index(((P4 *)_this)->proc, 1) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P4 *)_this)->proc, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 18: // STATE 22
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 19: // STATE 23
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 20: // STATE 25
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 21: // STATE 31
		;
		((P4 *)_this)->proc = trpt->bup.ovals[1];
	/* 0 */	((P4 *)_this)->proc = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 22: // STATE 31
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 34
		;
		((P4 *)_this)->proc = trpt->bup.ovals[1];
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P4 *)_this)->proc, 1) ], 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 24: // STATE 41
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC monitor */
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 30: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC main_control */

	case 31: // STATE 1
		;
		XX = 1;
		unrecv(now.request_low, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 34: // STATE 4
		;
		_m = unsend(now.change_slide_pos);
		;
		goto R999;

	case 35: // STATE 5
		;
		XX = 1;
		unrecv(now.slide_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 38: // STATE 11
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 39: // STATE 12
		;
		XX = 1;
		unrecv(now.doors_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 42: // STATE 18
		;
		_m = unsend(now.change_slide_pos);
		;
		goto R999;

	case 43: // STATE 19
		;
		XX = 1;
		unrecv(now.slide_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 45: // STATE 24
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 46: // STATE 25
		;
		XX = 1;
		unrecv(now.doors_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 48: // STATE 30
		;
		XX = 1;
		unrecv(now.observed_low[0], XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 49: // STATE 31
		;
		XX = 1;
		unrecv(now.request_high, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 52: // STATE 34
		;
		_m = unsend(now.change_slide_pos);
		;
		goto R999;

	case 53: // STATE 35
		;
		XX = 1;
		unrecv(now.slide_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 56: // STATE 41
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 57: // STATE 42
		;
		XX = 1;
		unrecv(now.doors_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 60: // STATE 48
		;
		_m = unsend(now.change_slide_pos);
		;
		goto R999;

	case 61: // STATE 49
		;
		XX = 1;
		unrecv(now.slide_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 63: // STATE 54
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 64: // STATE 55
		;
		XX = 1;
		unrecv(now.doors_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 66: // STATE 60
		;
		XX = 1;
		unrecv(now.observed_high[0], XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 67: // STATE 61
		;
		XX = 1;
		unrecv(now.request_low, XX-1, 0, 0, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 71: // STATE 65
		;
		_m = unsend(now.change_slide_pos);
		;
		goto R999;

	case 72: // STATE 66
		;
		XX = 1;
		unrecv(now.slide_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 74: // STATE 71
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 75: // STATE 72
		;
		XX = 1;
		unrecv(now.doors_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 78: // STATE 75
		;
		_m = unsend(now.change_slide_pos);
		;
		goto R999;

	case 79: // STATE 76
		;
		XX = 1;
		unrecv(now.slide_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 82: // STATE 87
		;
		XX = 1;
		unrecv(now.request_high, XX-1, 0, 0, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 86: // STATE 91
		;
		_m = unsend(now.change_slide_pos);
		;
		goto R999;

	case 87: // STATE 92
		;
		XX = 1;
		unrecv(now.slide_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 89: // STATE 97
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 90: // STATE 98
		;
		XX = 1;
		unrecv(now.doors_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 93: // STATE 101
		;
		_m = unsend(now.change_slide_pos);
		;
		goto R999;

	case 94: // STATE 102
		;
		XX = 1;
		unrecv(now.slide_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 97: // STATE 116
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC ship */
;
		;
		;
		;
		
	case 100: // STATE 3
		;
		_m = unsend(now.request_high);
		;
		goto R999;
;
		;
		
	case 102: // STATE 8
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 103: // STATE 9
		;
		_m = unsend(now.observed_high[0]);
		;
		goto R999;
;
		;
		
	case 105: // STATE 12
		;
		_m = unsend(now.observed_high[0]);
		;
		goto R999;

	case 106: // STATE 19
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		;
		;
		
	case 109: // STATE 27
		;
		_m = unsend(now.request_low);
		;
		goto R999;
;
		;
		
	case 111: // STATE 33
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 112: // STATE 34
		;
		_m = unsend(now.observed_low[0]);
		;
		goto R999;
;
		;
		
	case 114: // STATE 37
		;
		_m = unsend(now.observed_low[0]);
		;
		goto R999;

	case 115: // STATE 45
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		;
		;
		
	case 118: // STATE 53
		;
		_m = unsend(now.request_low);
		;
		goto R999;
;
		;
		
	case 120: // STATE 58
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 121: // STATE 59
		;
		_m = unsend(now.observed_low[0]);
		;
		goto R999;
;
		;
		
	case 123: // STATE 62
		;
		_m = unsend(now.observed_low[0]);
		;
		goto R999;

	case 124: // STATE 69
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		;
		;
		
	case 127: // STATE 77
		;
		_m = unsend(now.request_high);
		;
		goto R999;
;
		;
		
	case 129: // STATE 83
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 130: // STATE 84
		;
		_m = unsend(now.observed_high[0]);
		;
		goto R999;
;
		;
		
	case 132: // STATE 87
		;
		_m = unsend(now.observed_high[0]);
		;
		goto R999;

	case 133: // STATE 95
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		
	case 135: // STATE 102
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.oval;
		;
		goto R999;

	case 136: // STATE 103
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 138: // STATE 105
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.oval;
		;
		goto R999;

	case 139: // STATE 106
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.oval;
		;
		goto R999;

	case 140: // STATE 110
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC lock */

	case 141: // STATE 1
		;
		XX = 1;
		unrecv(now.change_doors_pos, XX-1, 0, 2, 1);
		;
		;
		goto R999;
;
		;
		
	case 143: // STATE 3
		;
		now.doors_status.lower = trpt->bup.oval;
		;
		goto R999;

	case 144: // STATE 4
		;
		now.lock_water_level = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 146: // STATE 6
		;
		now.doors_status.lower = trpt->bup.oval;
		;
		goto R999;

	case 147: // STATE 9
		;
		_m = unsend(now.doors_pos_changed);
		;
		goto R999;

	case 148: // STATE 10
		;
		XX = 1;
		unrecv(now.change_doors_pos, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 150: // STATE 12
		;
		now.doors_status.higher = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 152: // STATE 14
		;
		now.lock_water_level = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 155: // STATE 20
		;
		now.doors_status.higher = trpt->bup.oval;
		;
		goto R999;

	case 156: // STATE 23
		;
		_m = unsend(now.doors_pos_changed);
		;
		goto R999;

	case 157: // STATE 24
		;
		XX = 1;
		unrecv(now.change_slide_pos, XX-1, 0, 2, 1);
		;
		;
		goto R999;
;
		;
		
	case 159: // STATE 26
		;
		now.slide_status.lower = trpt->bup.oval;
		;
		goto R999;

	case 160: // STATE 27
		;
		now.lock_water_level = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 162: // STATE 29
		;
		now.slide_status.lower = trpt->bup.oval;
		;
		goto R999;

	case 163: // STATE 32
		;
		_m = unsend(now.slide_pos_changed);
		;
		goto R999;

	case 164: // STATE 33
		;
		XX = 1;
		unrecv(now.change_slide_pos, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 166: // STATE 35
		;
		now.slide_status.higher = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 168: // STATE 37
		;
		now.lock_water_level = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 171: // STATE 43
		;
		now.slide_status.higher = trpt->bup.oval;
		;
		goto R999;

	case 172: // STATE 46
		;
		_m = unsend(now.slide_pos_changed);
		;
		goto R999;

	case 173: // STATE 50
		;
		p_restor(II);
		;
		;
		goto R999;
	}

