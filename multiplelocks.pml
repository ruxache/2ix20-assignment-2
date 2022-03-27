/*
	Lock system template model for Assignment 2 of 2IX20 - Software Specification.
	Set up for one lock and a configurable number of ships.

	This file contains:
	- process types for locks and ships that can be used as-is for the single lock case
	- a dummy specification of the main controller
	- initialization for the single-lock, single-ship case.
*/

// The number of locks.
#define N	3
// The number of ships.
#define M	2
// The maximum number of ships immediately at either side of a lock.
#define MAX 2

// LTL formulas to be verified
// Formula p1 holds if the first ship can always eventually enter the lock when going up.
//ltl p1 { []<> (ship_status[0] == go_up_in_lock) } /*  */

// (f1) Always eventually a request is made to open the higher doors of lock N − 1.
//ltl f1 {[]<> (high_req[notlast])}

// (f2) Always eventually a request is made to open the lower doors of lock 0.
//ltl reqlow {[]<> (low_req[0])}

bool low_req[N], high_req[N];

byte notlast = N-1;

// Type for direction of ship.
mtype:direction = { go_down, go_down_in_lock, go_up, go_up_in_lock, goal_reached };

// Type for water level.
mtype:level = { low_level, high_level };

// Type for lock side indication.
mtype:side = { low, high };

// Type for door and slide position.
mtype:pos = { closed, open };

// Datatypes to store the status of the doors and slides of a lock.
typedef doorpairs_t {
	mtype:pos lower;
	mtype:pos higher;
}

typedef slides_t {
	mtype:pos lower;
	mtype:pos higher;
}

// Asynchronous channels to handle ship requests.
chan request_low[N] = [M] of { bool };
chan request_high[N] = [M] of { bool };
// Synchronous channels to indicate that a ship has seen that a particular pair
// of doors has opened.
chan observed_low[N] = [0] of { bool };
chan observed_high[N] = [0] of { bool };

// Status of the water level inside a lock.
mtype:level lock_water_level[N];
// Is there a ship currently in the lock?
bool lock_is_occupied[N];

// Status of the ships.
mtype:direction ship_status[M];
// Position of the ships.
byte ship_pos[M];
// Number of ships per position.
byte nr_of_ships_at_pos[N+1];

// Status and synchronous channels for doors.
doorpairs_t doors_status[N];
slides_t slide_status[N];
chan change_doors_pos[N] = [0] of { mtype:side };
chan doors_pos_changed[N] = [0] of { bool };
chan change_slide_pos[N] = [0] of { mtype:side };
chan slide_pos_changed[N] = [0] of { bool };

// Lock process type. It reacts to requests to open its doors and slides.
proctype lock(byte lockid) {
	do
	:: change_doors_pos[lockid]?low ->
		if
		:: doors_status[lockid].lower == closed -> doors_status[lockid].lower = open;
			lock_water_level[lockid] = low_level;
		:: doors_status[lockid].lower == open -> doors_status[lockid].lower = closed;
		fi;
		doors_pos_changed[lockid]!true;
	:: change_doors_pos[lockid]?high ->
		if
		:: doors_status[lockid].higher == closed -> doors_status[lockid].higher = open;
			if
			:: doors_status[lockid].lower == closed && slide_status[lockid].lower == closed ->
				lock_water_level[lockid] = high_level;
			:: doors_status[lockid].lower == open || slide_status[lockid].lower == open -> skip;
			fi;
		:: doors_status[lockid].higher == open -> doors_status[lockid].higher = closed;
		fi;
		doors_pos_changed[lockid]!true;
	:: change_slide_pos[lockid]?low ->
		if
		:: slide_status[lockid].lower == closed -> slide_status[lockid].lower = open;
			lock_water_level[lockid] = low_level;
		:: slide_status[lockid].lower == open -> slide_status[lockid].lower = closed;
		fi;
		slide_pos_changed[lockid]!true;
	:: change_slide_pos[lockid]?high ->
		if
		:: slide_status[lockid].higher == closed -> slide_status[lockid].higher = open;
			if
			:: doors_status[lockid].lower == closed && slide_status[lockid].lower == closed ->
				lock_water_level[lockid] = high_level;
			:: doors_status[lockid].lower == open || slide_status[lockid].lower == open -> skip;
			fi;
		:: slide_status[lockid].higher == open -> slide_status[lockid].higher = closed;
		fi;
		slide_pos_changed[lockid]!true;
	od;
}

// Ship process type. Based on its direction and position, it makes requests to open doors,
// and moves when possible.
proctype ship(byte shipid) {
	byte lockid;
	do
	:: ship_status[shipid] == go_down && ship_pos[shipid] != 0 ->
		lockid = ship_pos[shipid] - 1;
		do
		:: doors_status[lockid].higher == closed ->
			request_high[lockid]!true;
			atomic { doors_status[lockid].higher == open ->
				if
				:: !lock_is_occupied[lockid] ->
						ship_status[shipid] = go_down_in_lock;
						lock_is_occupied[lockid] = true;
						nr_of_ships_at_pos[ship_pos[shipid]]--;
						observed_high[lockid]!true;
						break;
				:: lock_is_occupied[lockid] ->
						observed_high[lockid]!true;
				fi; }
		:: atomic { doors_status[lockid].higher == open &&
			!lock_is_occupied[lockid] ->
				ship_status[shipid] = go_down_in_lock;
				lock_is_occupied[lockid] = true;
				nr_of_ships_at_pos[ship_pos[shipid]]--;
				break; }
		od;
	:: ship_status[shipid] == go_down_in_lock ->
		do
		:: doors_status[lockid].lower == closed ->
			request_low[lockid]!true;
			atomic { doors_status[lockid].lower == open ->
				if
				:: (nr_of_ships_at_pos[ship_pos[shipid]-1] < MAX
					|| ship_pos[shipid]-1 == 0) ->
						ship_status[shipid] = go_down;
						lock_is_occupied[lockid] = false;
						ship_pos[shipid]--;
						nr_of_ships_at_pos[ship_pos[shipid]]++;
						observed_low[0]!true;
						break;
				:: (nr_of_ships_at_pos[ship_pos[shipid]-1] == MAX
					&& ship_pos[shipid]-1 != 0) ->
						observed_low[0]!true;
				fi; }
		:: atomic { doors_status[lockid].lower == open &&
			(nr_of_ships_at_pos[ship_pos[shipid]-1] < MAX
			|| ship_pos[shipid]-1 == 0) ->
				ship_status[shipid] = go_down;
				lock_is_occupied[lockid]= false;
				ship_pos[shipid]--;
				nr_of_ships_at_pos[ship_pos[shipid]]++;
				break; }
		od;
	:: ship_status[shipid] == go_up && ship_pos[shipid] != N ->
		lockid = ship_pos[shipid] + 1;
		do
		:: doors_status[lockid].lower == closed ->
			request_low[lockid]!true;
			atomic { doors_status[lockid].lower == open ->
				if
				:: !lock_is_occupied[lockid] ->
						ship_status[shipid] = go_up_in_lock;
						lock_is_occupied[lockid] = true;
						nr_of_ships_at_pos[ship_pos[shipid]]--;
						observed_low[lockid]!true;
						break;
				:: lock_is_occupied[lockid] ->
						observed_low[lockid]!true;
				fi; }
		:: atomic { doors_status[lockid].lower == open &&
			!lock_is_occupied[lockid] ->
				ship_status[shipid] = go_up_in_lock;
				lock_is_occupied[lockid] = true;
				nr_of_ships_at_pos[ship_pos[shipid]]--;
				break; }
		od;
	:: ship_status[shipid] == go_up_in_lock ->
		do
		:: doors_status[lockid].higher == closed ->
			request_high[lockid]!true;
			atomic { doors_status[lockid].higher == open ->
				if
				:: (nr_of_ships_at_pos[ship_pos[shipid]+1] < MAX
					|| ship_pos[shipid]+1 == N) ->
						ship_status[shipid] = go_up;
						lock_is_occupied[lockid] = false;
						ship_pos[shipid]++;
						nr_of_ships_at_pos[ship_pos[shipid]]++;
						observed_high[0]!true;
						break;
				:: (nr_of_ships_at_pos[ship_pos[shipid]+1] == MAX
					&& ship_pos[shipid]+1 != N) ->
						observed_high[0]!true;
				fi; }
		:: atomic { doors_status[lockid].higher == open &&
			(nr_of_ships_at_pos[ship_pos[shipid]+1] < MAX
			|| ship_pos[shipid]+1 == N) ->
				ship_status[shipid] = go_up;
				lock_is_occupied[lockid] = false;
				ship_pos[shipid]++;
				nr_of_ships_at_pos[ship_pos[shipid]]++;
				break; }
		od;
	:: ship_status[shipid] == go_down && ship_pos[shipid] == 0 ->
		ship_status[shipid] = goal_reached; ship_status[shipid] = go_up;
	:: ship_status[shipid] == go_up && ship_pos[shipid] == N ->
		ship_status[shipid] = goal_reached; ship_status[shipid] = go_down;
	od;
}

// DUMMY main control process type. Remodel it to control the lock system and handle
// requests of ships!
// proctype main_control() {
// 	do
// 	:: request_low?true ->
// 		//(b1) When the lower pair of doors is open, the higher slide is closed.

// 		low_req = true;

// 		if	
// 		:: doors_status.lower == closed ->
// 			if
// 			:: slide_status.higher == open ->
// 				change_slide_pos!high; slide_pos_changed?true;
// 			:: slide_status.higher == closed -> skip;
// 			fi;

// 			if
// 			:: doors_status.higher == open ->
// 				change_doors_pos!high; doors_pos_changed?true;
// 			:: doors_status.higher == closed -> skip;
// 			fi;

// 			if
// 			:: slide_status.lower == closed ->
// 			change_slide_pos!low; slide_pos_changed?true;
// 			:: slide_status.lower == open -> skip;
// 			fi;
// 			change_doors_pos!low; doors_pos_changed?true;
// 		:: doors_status.lower == open -> skip;
// 		fi;
// 		observed_low[0]?true;

// 	:: request_high?true ->

// 		high_req = true;

// 		if
// 		:: doors_status.higher == closed ->
// 			if
// 			:: slide_status.lower == open ->
// 				change_slide_pos!low; slide_pos_changed?true;
// 			:: slide_status.lower == closed -> skip;
// 			fi;

// 			if
// 			:: doors_status.lower == open ->
// 				change_doors_pos!low; doors_pos_changed?true;
// 			:: doors_status.lower == closed -> skip;
// 			fi;

// 			if
// 			:: slide_status.higher == closed ->
// 				change_slide_pos!high; slide_pos_changed?true;
// 			:: slide_status.higher == open -> skip
// 			fi
// 			change_doors_pos!high; doors_pos_changed?true;
// 		:: doors_status.higher == open -> skip;
// 		fi;
// 		observed_high[0]?true;

// 	:: request_low?false ->

// 		if
// 		:: lock_is_occupied ->

// 			// LOWER PART
// 			if 
// 			:: doors_status.lower == open ->
// 				if
// 				:: slide_status.lower == open ->
// 					change_slide_pos!low;
// 					slide_pos_changed?true;
// 				:: slide_status.lower == closed -> skip;
// 				fi;

// 			change_doors_pos!low;
// 			doors_pos_changed?true;

// 			:: doors_status.lower == closed	->
// 				if
// 				:: slide_status.lower == open ->
// 					change_slide_pos!low;
// 					slide_pos_changed?true;
// 				:: slide_status.lower == closed -> skip;
// 				fi;
// 				//skip;
// 			fi;
// 		:: !lock_is_occupied -> skip;
// 		fi;

// 	:: request_high?false ->
// 		if
// 		:: lock_is_occupied ->
// 			// HIGHER PART
// 			if 
// 			:: doors_status.higher == open ->
// 				if
// 				:: slide_status.higher == open ->
// 					change_slide_pos!high;
// 					slide_pos_changed?true;
// 				:: slide_status.higher == closed -> skip;
// 				fi;

// 			change_doors_pos!high;
// 			doors_pos_changed?true;

// 			:: doors_status.higher == closed	->
// 				if
// 				:: slide_status.higher == open ->
// 					change_slide_pos!high;
// 					slide_pos_changed?true;
// 				:: slide_status.higher == closed -> skip;
// 				fi;
// 				///skip;
// 			fi;

// 		:: !lock_is_occupied -> skip
// 		fi;
// 	od;
// }

proctype monitor() {
	// an example assertion.
	//assert(0 <= ship_pos[0] && ship_pos[0] <= N);

    //(e1) When a request is made to open the lower doors of lock i, eventually the lower doors of lock i are open.
    //(e2) When a request is made to open the higher doors of lock i, eventually the higher doors of lock i are open.

	// // (a) The lower pair of doors and the higher pair of doors are never simultaneously open.
	// assert(!(doors_status.lower == open  && doors_status.higher == open)) // a :(

	// // (b1) When the lower pair of doors is open, the higher slide is closed.
	// assert(!(doors_status.lower == open && slide_status.higher == open)) // b1 :(
	
	// // (b2) When the higher pair of doors is open, the lower slide is closed.
	// assert(!(doors_status.higher == open && slide_status.lower == open)) // b2 :(

	// // (c1) The lower pair of doors is only open when the water level in the lock is low.
	// assert(!(doors_status.lower == open && lock_water_level != low_level)) //c1 :)!!

	// // (c2) The higher pair of doors is only open when the water level in the lock is high
	// assert(!(doors_status.higher == open && lock_water_level != high_level)) //c2 :(

}

// Initial process that instantiates all other processes and creates
// the initial lock and ship situation.
init {
	byte proc, lockid;
	atomic {
		run monitor();
		//run main_control();
		// In the code below, the individual locks are initialised.
		// The assumption here is that N == 1. When generalising the model for
		// multiple locks, make sure that the do-statement is altered!
		proc = 0; 
		lockid=0;
		do
		:: proc < N ->
			doors_status[lockid].lower = closed;
			doors_status[lockid].higher = closed;
			slide_status[lockid].lower = closed;
			slide_status[lockid].higher = closed;
			lock_water_level[lockid] = high_level;
			lock_is_occupied[lockid] = false;
			run lock(proc);
			proc++;
		:: proc == N -> break;
		od;
		// In the code below, the individual ship positions and directions
		// are initialised. Expand this when more ships should be added.
		proc = 0;
		do
		:: proc == 0 -> ship_status[proc] = go_up; ship_pos[proc] = 0;
			run ship(proc, 0); proc++;
		:: proc > 0 && proc < M -> proc++;
		:: proc == M -> break;
		od;
		// Do not change the code below! It derives the number of ships per
		// position from the positions of the individual ships.
		proc = 0;
		do
		:: proc < M -> nr_of_ships_at_pos[ship_pos[proc]]++; proc++;
		:: else -> break;
		od;
	}
}