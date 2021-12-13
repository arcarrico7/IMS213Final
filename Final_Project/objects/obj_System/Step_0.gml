/// @description Step Event

/* DEBUG FUNCTIONS */

// Restart The Game
if (global.level_complete == true) { 
	if (global.current_dungeon < 10) {
		global.current_dungeon++;
		show_debug_message("Current dungeapn is: " + string(global.current_dungeon));
		global.mytime = 30;
		rebuild_room();
	} else { 
		room_goto(rm_Credits);
	}
	global.level_complete = false;
	global.hasKey = false;
}


//Toggel Mini Map

if (keyboard_check_pressed(ord("M"))){
	display_map = !display_map;
}