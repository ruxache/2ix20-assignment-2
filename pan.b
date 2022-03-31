	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM p1 */
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

		 /* PROC :init: */

	case 6: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 7: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 8: // STATE 3
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 10
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

	case 10: // STATE 11
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 11: // STATE 12
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 18
		;
		((P4 *)_this)->proc = trpt->bup.ovals[1];
	/* 0 */	((P4 *)_this)->proc = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 13: // STATE 18
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 21
		;
		now.ship_pos[ Index(((P4 *)_this)->proc, 1) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P4 *)_this)->proc, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 15: // STATE 22
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 16: // STATE 23
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 29
		;
		((P4 *)_this)->proc = trpt->bup.ovals[1];
	/* 0 */	((P4 *)_this)->proc = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 18: // STATE 29
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 32
		;
		((P4 *)_this)->proc = trpt->bup.ovals[1];
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P4 *)_this)->proc, 1) ], 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 20: // STATE 39
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
		
	case 26: // STATE 6
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
		;
		;
		goto R999;

	case 28: // STATE 2
		;
		low_req = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 31: // STATE 5
		;
		_m = unsend(now.change_slide_pos);
		;
		goto R999;

	case 32: // STATE 6
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
		
	case 35: // STATE 12
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 36: // STATE 13
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
		
	case 39: // STATE 19
		;
		_m = unsend(now.change_slide_pos);
		;
		goto R999;

	case 40: // STATE 20
		;
		XX = 1;
		unrecv(now.slide_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 42: // STATE 25
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 43: // STATE 26
		;
		XX = 1;
		unrecv(now.doors_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 45: // STATE 31
		;
		XX = 1;
		unrecv(now.observed_low[0], XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 46: // STATE 32
		;
		XX = 1;
		unrecv(now.request_high, XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 47: // STATE 33
		;
		high_req = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 50: // STATE 36
		;
		_m = unsend(now.change_slide_pos);
		;
		goto R999;

	case 51: // STATE 37
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
		
	case 54: // STATE 43
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 55: // STATE 44
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
		
	case 58: // STATE 50
		;
		_m = unsend(now.change_slide_pos);
		;
		goto R999;

	case 59: // STATE 51
		;
		XX = 1;
		unrecv(now.slide_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 61: // STATE 56
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 62: // STATE 57
		;
		XX = 1;
		unrecv(now.doors_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 64: // STATE 62
		;
		XX = 1;
		unrecv(now.observed_high[0], XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 65: // STATE 63
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
		
	case 69: // STATE 67
		;
		_m = unsend(now.change_slide_pos);
		;
		goto R999;

	case 70: // STATE 68
		;
		XX = 1;
		unrecv(now.slide_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 72: // STATE 73
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 73: // STATE 74
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
		
	case 76: // STATE 77
		;
		_m = unsend(now.change_slide_pos);
		;
		goto R999;

	case 77: // STATE 78
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
		
	case 80: // STATE 89
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
		
	case 84: // STATE 93
		;
		_m = unsend(now.change_slide_pos);
		;
		goto R999;

	case 85: // STATE 94
		;
		XX = 1;
		unrecv(now.slide_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 87: // STATE 99
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 88: // STATE 100
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
		
	case 91: // STATE 103
		;
		_m = unsend(now.change_slide_pos);
		;
		goto R999;

	case 92: // STATE 104
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
		
	case 95: // STATE 118
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
		
	case 98: // STATE 3
		;
		_m = unsend(now.request_high);
		;
		goto R999;
;
		;
		
	case 100: // STATE 8
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 101: // STATE 9
		;
		_m = unsend(now.observed_high[0]);
		;
		goto R999;
;
		;
		
	case 103: // STATE 12
		;
		_m = unsend(now.observed_high[0]);
		;
		goto R999;

	case 104: // STATE 19
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
		
	case 107: // STATE 27
		;
		_m = unsend(now.request_low);
		;
		goto R999;
;
		;
		
	case 109: // STATE 33
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 110: // STATE 34
		;
		_m = unsend(now.observed_low[0]);
		;
		goto R999;
;
		;
		
	case 112: // STATE 37
		;
		_m = unsend(now.observed_low[0]);
		;
		goto R999;

	case 113: // STATE 45
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
		
	case 116: // STATE 53
		;
		_m = unsend(now.request_low);
		;
		goto R999;
;
		;
		
	case 118: // STATE 58
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 119: // STATE 59
		;
		_m = unsend(now.observed_low[0]);
		;
		goto R999;
;
		;
		
	case 121: // STATE 62
		;
		_m = unsend(now.observed_low[0]);
		;
		goto R999;

	case 122: // STATE 69
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
		
	case 125: // STATE 77
		;
		_m = unsend(now.request_high);
		;
		goto R999;
;
		;
		
	case 127: // STATE 83
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 128: // STATE 84
		;
		_m = unsend(now.observed_high[0]);
		;
		goto R999;
;
		;
		
	case 130: // STATE 87
		;
		_m = unsend(now.observed_high[0]);
		;
		goto R999;

	case 131: // STATE 95
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
		
	case 133: // STATE 102
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.oval;
		;
		goto R999;

	case 134: // STATE 103
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 136: // STATE 105
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.oval;
		;
		goto R999;

	case 137: // STATE 106
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.oval;
		;
		goto R999;

	case 138: // STATE 110
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC lock */

	case 139: // STATE 1
		;
		XX = 1;
		unrecv(now.change_doors_pos, XX-1, 0, 2, 1);
		;
		;
		goto R999;
;
		;
		
	case 141: // STATE 3
		;
		now.doors_status.lower = trpt->bup.oval;
		;
		goto R999;

	case 142: // STATE 4
		;
		now.lock_water_level = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 144: // STATE 6
		;
		now.doors_status.lower = trpt->bup.oval;
		;
		goto R999;

	case 145: // STATE 9
		;
		_m = unsend(now.doors_pos_changed);
		;
		goto R999;

	case 146: // STATE 10
		;
		XX = 1;
		unrecv(now.change_doors_pos, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 148: // STATE 12
		;
		now.doors_status.higher = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 150: // STATE 14
		;
		now.lock_water_level = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 153: // STATE 20
		;
		now.doors_status.higher = trpt->bup.oval;
		;
		goto R999;

	case 154: // STATE 23
		;
		_m = unsend(now.doors_pos_changed);
		;
		goto R999;

	case 155: // STATE 24
		;
		XX = 1;
		unrecv(now.change_slide_pos, XX-1, 0, 2, 1);
		;
		;
		goto R999;
;
		;
		
	case 157: // STATE 26
		;
		now.slide_status.lower = trpt->bup.oval;
		;
		goto R999;

	case 158: // STATE 27
		;
		now.lock_water_level = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 160: // STATE 29
		;
		now.slide_status.lower = trpt->bup.oval;
		;
		goto R999;

	case 161: // STATE 32
		;
		_m = unsend(now.slide_pos_changed);
		;
		goto R999;

	case 162: // STATE 33
		;
		XX = 1;
		unrecv(now.change_slide_pos, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 164: // STATE 35
		;
		now.slide_status.higher = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 166: // STATE 37
		;
		now.lock_water_level = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 169: // STATE 43
		;
		now.slide_status.higher = trpt->bup.oval;
		;
		goto R999;

	case 170: // STATE 46
		;
		_m = unsend(now.slide_pos_changed);
		;
		goto R999;

	case 171: // STATE 50
		;
		p_restor(II);
		;
		;
		goto R999;
	}

