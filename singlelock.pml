/*
	Lock system model for Assignment 2 of 2IX20 - Software Specification.
	Set up for one lock and a configurable number of ships.

	This file contains:
	- process types for locks and ships that can be used as-is for the single lock case
	- the main controller
	- initialization for the single-lock, multiple-ship case.
*/

// The number of locks.
#define N	1
// The number of ships.
#define M	1
// The maximum number of ships immediately at either side of a lock.
#define MAX 2

// LTL formulas to be verified
// Formula p1 holds if the first ship can always eventually enter the lock when going up.
//ltl p1 { []<> (ship_status[0] == go_up_in_lock) } /*  */

// (d1) Always if a ship requests the lower pair of doors to open and its status is go_up, 
// the ship will eventually be inside the lock.
ltl d1 { [] ((ship_status[0]  == go_up && low_req) ->  <> (ship_status[0] == go_up_in_lock)) }

// (d2) Always if a ship requests the higher pair of doors to open 
// and its status is go_down, the ship will eventually be inside the lock.
ltl d2 { [] ((ship_status[0]  == go_down && high_req) -> <> ( ship_status[0] == go_down_in_lock)) }

ltl reqlow {[]<> (low_req)}
ltl reqhigh {[]<> (high_req)}
ltl waterlow{[]<> lock_water_level == low}
ltl waterhigh{[]<> lock_water_level == high}

bool low_req, high_req;

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
chan request_low = [M] of { bool };
chan request_high = [M] of { bool };
// Synchronous channels to indicate that a ship has seen that a particular pair
// of doors has opened.
chan observed_low[N] = [0] of { bool };
chan observed_high[N] = [0] of { bool };

// Status of the water level inside a lock.
mtype:level lock_water_level;
// Is there a ship currently in the lock?
bool lock_is_occupied;

// Status of the ships.
mtype:direction ship_status[M];
// Position of the ships.
byte ship_pos[M];
// Number of ships per position.
byte nr_of_ships_at_pos[N+1];

// Status and synchronous channels for doors.
doorpairs_t doors_status;
slides_t slide_status;
chan change_doors_pos = [0] of { mtype:side };
chan doors_pos_changed = [0] of { bool };
chan change_slide_pos = [0] of { mtype:side };
chan slide_pos_changed = [0] of { bool };

// Lock process type. It reacts to requests to open its doors and slides.
proctype lock(byte lockid) {
	do
	:: change_doors_pos?low ->
		if
		:: doors_status.lower == closed -> doors_status.lower = open;
			lock_water_level = low_level;
		:: doors_status.lower == open -> doors_status.lower = closed;
		fi;
		doors_pos_changed!true;
	:: change_doors_pos?high ->
		if
		:: doors_status.higher == closed -> doors_status.higher = open;
			if
			:: doors_status.lower == closed && slide_status.lower == closed ->
				lock_water_level = high_level;
			:: doors_status.lower == open || slide_status.lower == open -> skip;
			fi;
		:: doors_status.higher == open -> doors_status.higher = closed;
		fi;
		doors_pos_changed!true;
	:: change_slide_pos?low ->
		if
		:: slide_status.lower == closed -> slide_status.lower = open;
			lock_water_level = low_level;
		:: slide_status.lower == open -> slide_status.lower = closed;
		fi;
		slide_pos_changed!true;
	:: change_slide_pos?high ->
		if
		:: slide_status.higher == closed -> slide_status.higher = open;
			if
			:: doors_status.lower == closed && slide_status.lower == closed ->
				lock_water_level = high_level;
			:: doors_status.lower == open || slide_status.lower == open -> skip;
			fi;
		:: slide_status.higher == open -> slide_status.higher = closed;
		fi;
		slide_pos_changed!true;
	od;
}

// Ship process type. Based on its direction and position, it makes requests to open doors,
// and moves when possible.
proctype ship(byte shipid) {
	do
	:: ship_status[shipid] == go_down && ship_pos[shipid] != 0 ->
		do
		:: doors_status.higher == closed ->
			request_high!true;
			atomic { doors_status.higher == open ->
				if
				:: !lock_is_occupied ->
						ship_status[shipid] = go_down_in_lock;
						lock_is_occupied = true;
						nr_of_ships_at_pos[ship_pos[shipid]]--;
						observed_high[0]!true;
						break;
				:: lock_is_occupied ->
						observed_high[0]!true;
				fi; }
		:: atomic { doors_status.higher == open &&
			!lock_is_occupied ->
				ship_status[shipid] = go_down_in_lock;
				lock_is_occupied = true;
				nr_of_ships_at_pos[ship_pos[shipid]]--;
				break; }
		od;
	:: ship_status[shipid] == go_down_in_lock ->
		do
		:: doors_status.lower == closed ->
			request_low!true;
			atomic { doors_status.lower == open ->
				if
				:: (nr_of_ships_at_pos[ship_pos[shipid]-1] < MAX
					|| ship_pos[shipid]-1 == 0) ->
						ship_status[shipid] = go_down;
						lock_is_occupied = false;
						ship_pos[shipid]--;
						nr_of_ships_at_pos[ship_pos[shipid]]++;
						observed_low[0]!true;
						break;
				:: (nr_of_ships_at_pos[ship_pos[shipid]-1] == MAX
					&& ship_pos[shipid]-1 != 0) ->
						observed_low[0]!true;
				fi; }
		:: atomic { doors_status.lower == open &&
			(nr_of_ships_at_pos[ship_pos[shipid]-1] < MAX
			|| ship_pos[shipid]-1 == 0) ->
				ship_status[shipid] = go_down;
				lock_is_occupied = false;
				ship_pos[shipid]--;
				nr_of_ships_at_pos[ship_pos[shipid]]++;
				break; }
		od;
	:: ship_status[shipid] == go_up && ship_pos[shipid] != N ->
		do
		:: doors_status.lower == closed ->
			request_low!true;
			atomic { doors_status.lower == open ->
				if
				:: !lock_is_occupied ->
						ship_status[shipid] = go_up_in_lock;
						lock_is_occupied = true;
						nr_of_ships_at_pos[ship_pos[shipid]]--;
						observed_low[0]!true;
						break;
				:: lock_is_occupied ->
						observed_low[0]!true;
				fi; }
		:: atomic { doors_status.lower == open &&
			!lock_is_occupied ->
				ship_status[shipid] = go_up_in_lock;
				lock_is_occupied = true;
				nr_of_ships_at_pos[ship_pos[shipid]]--;
				break; }
		od;
	:: ship_status[shipid] == go_up_in_lock ->
		do
		:: doors_status.higher == closed ->
			request_high!true;
			atomic { doors_status.higher == open ->
				if
				:: (nr_of_ships_at_pos[ship_pos[shipid]+1] < MAX
					|| ship_pos[shipid]+1 == N) ->
						ship_status[shipid] = go_up;
						lock_is_occupied = false;
						ship_pos[shipid]++;
						nr_of_ships_at_pos[ship_pos[shipid]]++;
						observed_high[0]!true;
						break;
				:: (nr_of_ships_at_pos[ship_pos[shipid]+1] == MAX
					&& ship_pos[shipid]+1 != N) ->
						observed_high[0]!true;
				fi; }
		:: atomic { doors_status.higher == open &&
			(nr_of_ships_at_pos[ship_pos[shipid]+1] < MAX
			|| ship_pos[shipid]+1 == N) ->
				ship_status[shipid] = go_up;
				lock_is_occupied = false;
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
proctype main_control() {
	do
	:: request_low?true ->
		//(b1) When the lower pair of doors is open, the higher slide is closed.

		low_req = true;

		if	
		:: doors_status.lower == closed ->
			if
			:: slide_status.higher == open ->
				change_slide_pos!high; slide_pos_changed?true;
			:: slide_status.higher == closed -> skip;
			fi;

			if
			:: doors_status.higher == open ->
				change_doors_pos!high; doors_pos_changed?true;
			:: doors_status.higher == closed -> skip;
			fi;

			if
			:: slide_status.lower == closed ->
			change_slide_pos!low; slide_pos_changed?true;
			:: slide_status.lower == open -> skip;
			fi;
			change_doors_pos!low; doors_pos_changed?true;
		:: doors_status.lower == open -> skip;
		fi;
		observed_low[0]?true;

	:: request_high?true ->

		high_req = true;

		if
		:: doors_status.higher == closed ->
			if
			:: slide_status.lower == open ->
				change_slide_pos!low; slide_pos_changed?true;
			:: slide_status.lower == closed -> skip;
			fi;

			if
			:: doors_status.lower == open ->
				change_doors_pos!low; doors_pos_changed?true;
			:: doors_status.lower == closed -> skip;
			fi;

			if
			:: slide_status.higher == closed ->
				change_slide_pos!high; slide_pos_changed?true;
			:: slide_status.higher == open -> skip
			fi
			change_doors_pos!high; doors_pos_changed?true;
		:: doors_status.higher == open -> skip;
		fi;
		observed_high[0]?true;

	:: request_low?false ->

		if
		:: lock_is_occupied ->

			// LOWER PART
			if 
			:: doors_status.lower == open ->
				if
				:: slide_status.lower == open ->
					change_slide_pos!low;
					slide_pos_changed?true;
				:: slide_status.lower == closed -> skip;
				fi;

			change_doors_pos!low;
			doors_pos_changed?true;

			:: doors_status.lower == closed	->
				if
				:: slide_status.lower == open ->
					change_slide_pos!low;
					slide_pos_changed?true;
				:: slide_status.lower == closed -> skip;
				fi;
				//skip;
			fi;
		:: !lock_is_occupied -> skip;
		fi;

	:: request_high?false ->
		if
		:: lock_is_occupied ->
			// HIGHER PART
			if 
			:: doors_status.higher == open ->
				if
				:: slide_status.higher == open ->
					change_slide_pos!high;
					slide_pos_changed?true;
				:: slide_status.higher == closed -> skip;
				fi;

			change_doors_pos!high;
			doors_pos_changed?true;

			:: doors_status.higher == closed	->
				if
				:: slide_status.higher == open ->
					change_slide_pos!high;
					slide_pos_changed?true;
				:: slide_status.higher == closed -> skip;
				fi;
				///skip;
			fi;

		:: !lock_is_occupied -> skip
		fi;
	od;
}

proctype monitor() {
	// an example assertion.
	assert(0 <= ship_pos[0] && ship_pos[0] <= N);

	// (a) The lower pair of doors and the higher pair of doors are never simultaneously open.
	assert(!(doors_status.lower == open  && doors_status.higher == open)) // a :(

	// (b1) When the lower pair of doors is open, the higher slide is closed.
	assert(!(doors_status.lower == open && slide_status.higher == open)) // b1 :(
	
	// (b2) When the higher pair of doors is open, the lower slide is closed.
	assert(!(doors_status.higher == open && slide_status.lower == open)) // b2 :(

	// (c1) The lower pair of doors is only open when the water level in the lock is low.
	assert(!(doors_status.lower == open && lock_water_level != low_level)) //c1 :)!!

	// (c2) The higher pair of doors is only open when the water level in the lock is high
	assert(!(doors_status.higher == open && lock_water_level != high_level)) //c2 :(

}

// Initial process that instantiates all other processes and creates
// the initial lock and ship situation.
init {
	byte proc;
	atomic {
		run monitor();
		run main_control();

		// initialize the lock
		proc = 0;
		do
		:: proc < N ->
			doors_status.lower = closed;
			doors_status.higher = closed;
			slide_status.lower = closed;
			slide_status.higher = closed;
			lock_water_level = high_level;
			lock_is_occupied = false;
			run lock(proc);
			proc++;
		:: proc == N -> break;
		od;

		// initialize individual ships
		proc = 0;
		do
		:: proc < M -> 
			ship_status[proc] = go_up; 
			ship_pos[proc] = 0;
			run ship(proc); 
			proc++;
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