	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 4: // STATE 2
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 5: // STATE 9
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

	case 6: // STATE 10
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 7: // STATE 11
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 17
		;
		((P4 *)_this)->proc = trpt->bup.ovals[1];
	/* 0 */	((P4 *)_this)->proc = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 9: // STATE 17
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 20
		;
		now.ship_pos[ Index(((P4 *)_this)->proc, 1) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P4 *)_this)->proc, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 11: // STATE 21
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 12: // STATE 22
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 28
		;
		((P4 *)_this)->proc = trpt->bup.ovals[1];
	/* 0 */	((P4 *)_this)->proc = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 14: // STATE 28
		;
		((P4 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 15: // STATE 31
		;
		((P4 *)_this)->proc = trpt->bup.ovals[1];
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P4 *)_this)->proc, 1) ], 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 16: // STATE 38
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
		
	case 22: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC main_control */

	case 23: // STATE 1
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
		
	case 26: // STATE 4
		;
		_m = unsend(now.change_slide_pos);
		;
		goto R999;

	case 27: // STATE 5
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
		
	case 30: // STATE 11
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 31: // STATE 12
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
		
	case 34: // STATE 18
		;
		_m = unsend(now.change_slide_pos);
		;
		goto R999;

	case 35: // STATE 19
		;
		XX = 1;
		unrecv(now.slide_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 37: // STATE 24
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 38: // STATE 25
		;
		XX = 1;
		unrecv(now.doors_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 40: // STATE 30
		;
		XX = 1;
		unrecv(now.observed_low[0], XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 41: // STATE 31
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
		
	case 44: // STATE 34
		;
		_m = unsend(now.change_slide_pos);
		;
		goto R999;

	case 45: // STATE 35
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
		
	case 48: // STATE 41
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 49: // STATE 42
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
		
	case 52: // STATE 48
		;
		_m = unsend(now.change_slide_pos);
		;
		goto R999;

	case 53: // STATE 49
		;
		XX = 1;
		unrecv(now.slide_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 55: // STATE 54
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 56: // STATE 55
		;
		XX = 1;
		unrecv(now.doors_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 58: // STATE 60
		;
		XX = 1;
		unrecv(now.observed_high[0], XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 59: // STATE 61
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
		
	case 63: // STATE 65
		;
		_m = unsend(now.change_slide_pos);
		;
		goto R999;

	case 64: // STATE 66
		;
		XX = 1;
		unrecv(now.slide_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 66: // STATE 71
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 67: // STATE 72
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
		
	case 70: // STATE 75
		;
		_m = unsend(now.change_slide_pos);
		;
		goto R999;

	case 71: // STATE 76
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
		
	case 74: // STATE 87
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
		
	case 78: // STATE 91
		;
		_m = unsend(now.change_slide_pos);
		;
		goto R999;

	case 79: // STATE 92
		;
		XX = 1;
		unrecv(now.slide_pos_changed, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 81: // STATE 97
		;
		_m = unsend(now.change_doors_pos);
		;
		goto R999;

	case 82: // STATE 98
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
		
	case 85: // STATE 101
		;
		_m = unsend(now.change_slide_pos);
		;
		goto R999;

	case 86: // STATE 102
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
		
	case 89: // STATE 116
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
		
	case 92: // STATE 3
		;
		_m = unsend(now.request_high);
		;
		goto R999;

	case 93: // STATE 4
		;
		high_req = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 95: // STATE 9
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 96: // STATE 10
		;
		_m = unsend(now.observed_high[0]);
		;
		goto R999;
;
		;
		
	case 98: // STATE 13
		;
		_m = unsend(now.observed_high[0]);
		;
		goto R999;

	case 99: // STATE 20
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
		
	case 102: // STATE 28
		;
		_m = unsend(now.request_low);
		;
		goto R999;

	case 103: // STATE 29
		;
		low_req = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 105: // STATE 35
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 106: // STATE 36
		;
		_m = unsend(now.observed_low[0]);
		;
		goto R999;
;
		;
		
	case 108: // STATE 39
		;
		_m = unsend(now.observed_low[0]);
		;
		goto R999;

	case 109: // STATE 47
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
		
	case 112: // STATE 55
		;
		_m = unsend(now.request_low);
		;
		goto R999;

	case 113: // STATE 56
		;
		low_req = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 115: // STATE 61
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 116: // STATE 62
		;
		_m = unsend(now.observed_low[0]);
		;
		goto R999;
;
		;
		
	case 118: // STATE 65
		;
		_m = unsend(now.observed_low[0]);
		;
		goto R999;

	case 119: // STATE 72
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
		
	case 122: // STATE 80
		;
		_m = unsend(now.request_high);
		;
		goto R999;

	case 123: // STATE 81
		;
		high_req = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 125: // STATE 87
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ], 2) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[2];
		now.lock_is_occupied = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 126: // STATE 88
		;
		_m = unsend(now.observed_high[0]);
		;
		goto R999;
;
		;
		
	case 128: // STATE 91
		;
		_m = unsend(now.observed_high[0]);
		;
		goto R999;

	case 129: // STATE 99
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
		
	case 131: // STATE 106
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.oval;
		;
		goto R999;

	case 132: // STATE 107
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 134: // STATE 109
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.oval;
		;
		goto R999;

	case 135: // STATE 110
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 1) ] = trpt->bup.oval;
		;
		goto R999;

	case 136: // STATE 114
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC lock */

	case 137: // STATE 1
		;
		XX = 1;
		unrecv(now.change_doors_pos, XX-1, 0, 2, 1);
		;
		;
		goto R999;
;
		;
		
	case 139: // STATE 3
		;
		now.doors_status.lower = trpt->bup.oval;
		;
		goto R999;

	case 140: // STATE 4
		;
		now.lock_water_level = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 142: // STATE 6
		;
		now.doors_status.lower = trpt->bup.oval;
		;
		goto R999;

	case 143: // STATE 9
		;
		_m = unsend(now.doors_pos_changed);
		;
		goto R999;

	case 144: // STATE 10
		;
		XX = 1;
		unrecv(now.change_doors_pos, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 146: // STATE 12
		;
		now.doors_status.higher = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 148: // STATE 14
		;
		now.lock_water_level = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 151: // STATE 20
		;
		now.doors_status.higher = trpt->bup.oval;
		;
		goto R999;

	case 152: // STATE 23
		;
		_m = unsend(now.doors_pos_changed);
		;
		goto R999;

	case 153: // STATE 24
		;
		XX = 1;
		unrecv(now.change_slide_pos, XX-1, 0, 2, 1);
		;
		;
		goto R999;
;
		;
		
	case 155: // STATE 26
		;
		now.slide_status.lower = trpt->bup.oval;
		;
		goto R999;

	case 156: // STATE 27
		;
		now.lock_water_level = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 158: // STATE 29
		;
		now.slide_status.lower = trpt->bup.oval;
		;
		goto R999;

	case 159: // STATE 32
		;
		_m = unsend(now.slide_pos_changed);
		;
		goto R999;

	case 160: // STATE 33
		;
		XX = 1;
		unrecv(now.change_slide_pos, XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 162: // STATE 35
		;
		now.slide_status.higher = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 164: // STATE 37
		;
		now.lock_water_level = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 167: // STATE 43
		;
		now.slide_status.higher = trpt->bup.oval;
		;
		goto R999;

	case 168: // STATE 46
		;
		_m = unsend(now.slide_pos_changed);
		;
		goto R999;

	case 169: // STATE 50
		;
		p_restor(II);
		;
		;
		goto R999;
	}

