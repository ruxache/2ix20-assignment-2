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
		((P3 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 5: // STATE 9
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

	case 6: // STATE 10
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 7: // STATE 11
		;
		((P3 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 17
		;
		((P3 *)_this)->proc = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->proc = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 9: // STATE 17
		;
		((P3 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 20
		;
		now.ship_pos[ Index(((P3 *)_this)->proc, 2) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P3 *)_this)->proc, 2) ] = trpt->bup.ovals[0];
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
		((P3 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 25
		;
		now.ship_pos[ Index(((P3 *)_this)->proc, 2) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P3 *)_this)->proc, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 14: // STATE 26
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 15: // STATE 27
		;
		((P3 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 16: // STATE 30
		;
		now.ship_pos[ Index(((P3 *)_this)->proc, 2) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P3 *)_this)->proc, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 17: // STATE 31
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 18: // STATE 32
		;
		((P3 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 19: // STATE 35
		;
		now.ship_pos[ Index(((P3 *)_this)->proc, 2) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P3 *)_this)->proc, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 20: // STATE 36
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 21: // STATE 37
		;
		((P3 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 43
		;
		((P3 *)_this)->proc = trpt->bup.ovals[1];
	/* 0 */	((P3 *)_this)->proc = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 23: // STATE 43
		;
		((P3 *)_this)->proc = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 46
		;
		((P3 *)_this)->proc = trpt->bup.ovals[1];
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P3 *)_this)->proc, 2) ], 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 25: // STATE 53
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC main_control */

	case 26: // STATE 1
		;
		XX = 1;
		unrecv(now.request_low[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 29: // STATE 4
		;
		_m = unsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 30: // STATE 5
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
		
	case 33: // STATE 11
		;
		_m = unsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 34: // STATE 12
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
		
	case 37: // STATE 18
		;
		_m = unsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 38: // STATE 19
		;
		XX = 1;
		unrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 40: // STATE 24
		;
		_m = unsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 41: // STATE 25
		;
		XX = 1;
		unrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 43: // STATE 30
		;
		XX = 1;
		unrecv(now.observed_low[0], XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 44: // STATE 31
		;
		XX = 1;
		unrecv(now.request_high[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		
	case 47: // STATE 34
		;
		_m = unsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 48: // STATE 35
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
		
	case 51: // STATE 41
		;
		_m = unsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 52: // STATE 42
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
		
	case 55: // STATE 48
		;
		_m = unsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 56: // STATE 49
		;
		XX = 1;
		unrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 58: // STATE 54
		;
		_m = unsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 59: // STATE 55
		;
		XX = 1;
		unrecv(now.doors_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 61: // STATE 60
		;
		XX = 1;
		unrecv(now.observed_high[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;

	case 62: // STATE 61
		;
		XX = 1;
		unrecv(now.request_low[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 0, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 66: // STATE 65
		;
		_m = unsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 67: // STATE 66
		;
		XX = 1;
		unrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 69: // STATE 71
		;
		_m = unsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 70: // STATE 72
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
		
	case 73: // STATE 75
		;
		_m = unsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 74: // STATE 76
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
		
	case 77: // STATE 87
		;
		XX = 1;
		unrecv(now.request_high[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 0, 1);
		;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 81: // STATE 91
		;
		_m = unsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 82: // STATE 92
		;
		XX = 1;
		unrecv(now.slide_pos_changed[ Index(((int)((P2 *)_this)->lockid), 3) ], XX-1, 0, 1, 1);
		;
		;
		goto R999;
;
		;
		
	case 84: // STATE 97
		;
		_m = unsend(now.change_doors_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 85: // STATE 98
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
		
	case 88: // STATE 101
		;
		_m = unsend(now.change_slide_pos[ Index(((int)((P2 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 89: // STATE 102
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
		
	case 92: // STATE 116
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC ship */
;
		;
		
	case 94: // STATE 2
		;
		((P1 *)_this)->lockid = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 96: // STATE 4
		;
		_m = unsend(now.request_high[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 97: // STATE 5
		;
		now.requested_lock = trpt->bup.oval;
		;
		goto R999;

	case 98: // STATE 6
		;
		high_req[ Index(((P1 *)_this)->lockid, 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 100: // STATE 11
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index(((P1 *)_this)->lockid, 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 101: // STATE 12
		;
		_m = unsend(now.observed_high[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		;
		goto R999;
;
		;
		
	case 103: // STATE 15
		;
		_m = unsend(now.observed_high[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 104: // STATE 22
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
		
	case 107: // STATE 30
		;
		_m = unsend(now.request_low[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 108: // STATE 31
		;
		now.requested_lock = trpt->bup.oval;
		;
		goto R999;

	case 109: // STATE 32
		;
		low_req[ Index(((P1 *)_this)->lockid, 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 111: // STATE 38
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index(((P1 *)_this)->lockid, 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 112: // STATE 39
		;
		_m = unsend(now.observed_low[0]);
		;
		goto R999;
;
		;
		
	case 114: // STATE 42
		;
		_m = unsend(now.observed_low[0]);
		;
		goto R999;

	case 115: // STATE 50
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
		
	case 117: // STATE 57
		;
		((P1 *)_this)->lockid = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 119: // STATE 59
		;
		_m = unsend(now.request_low[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 120: // STATE 60
		;
		now.requested_lock = trpt->bup.oval;
		;
		goto R999;

	case 121: // STATE 61
		;
		low_req[ Index(((P1 *)_this)->lockid, 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 123: // STATE 66
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index(((P1 *)_this)->lockid, 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 124: // STATE 67
		;
		_m = unsend(now.observed_low[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		;
		goto R999;
;
		;
		
	case 126: // STATE 70
		;
		_m = unsend(now.observed_low[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 127: // STATE 77
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
		
	case 130: // STATE 85
		;
		_m = unsend(now.request_high[ Index(((int)((P1 *)_this)->lockid), 3) ]);
		;
		goto R999;

	case 131: // STATE 86
		;
		now.requested_lock = trpt->bup.oval;
		;
		goto R999;

	case 132: // STATE 87
		;
		high_req[ Index(((P1 *)_this)->lockid, 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 134: // STATE 93
		;
		now.nr_of_ships_at_pos[ Index(now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ], 4) ] = trpt->bup.ovals[3];
		now.ship_pos[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[2];
		now.lock_is_occupied[ Index(((P1 *)_this)->lockid, 3) ] = trpt->bup.ovals[1];
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 135: // STATE 94
		;
		_m = unsend(now.observed_high[0]);
		;
		goto R999;
;
		;
		
	case 137: // STATE 97
		;
		_m = unsend(now.observed_high[0]);
		;
		goto R999;

	case 138: // STATE 105
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
		
	case 140: // STATE 112
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 141: // STATE 113
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 143: // STATE 115
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 144: // STATE 116
		;
		now.ship_status[ Index(((P1 *)_this)->shipid, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 145: // STATE 120
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

