/// @description Movement Mechanic


var move_h = keyboard_check(vk_right) - keyboard_check(vk_left);
var move_v = keyboard_check(vk_down) - keyboard_check(vk_up);

var tar_x = x div CELL_SIZE + move_h;
var tar_y = y div CELL_SIZE + move_v;

if (alarm[0] == -1) {
	alarm[0] = 4;
	if (obj_System.Grid[# tar_x, tar_y] == PATH) {
		x = tar_x * CELL_SIZE;
		y = tar_y * CELL_SIZE;
	}	
}

if (move_h = 1) {
	if (global.hasKey == true) {
		image_index = 7;
	}
	else {
		image_index = 3;
	}
}
else if (move_h = -1) {
	if (global.hasKey == true) {
		image_index = 6;
	}
	else {
		image_index = 2;
	}
}
else if (move_v = 1) {
	if (global.hasKey == true) {
		image_index = 5;
	}
	else {
		image_index = 1;
	}
}
else if (move_v = -1) {
	if (global.hasKey == true) {
		image_index = 4;
	}
	else {
		image_index = 0;
	}
}
else {
	
}	


if (obj_System.Grid[# tar_x, tar_y] == Door) {
	x = tar_x * CELL_SIZE;
	y = tar_y * CELL_SIZE;
	if (global.hasKey == true) {
		show_debug_message("Door Unlocked");
		show_debug_message(global.current_dungeon);
		alarm_set(1, 10);
		global.unlockDoor = true;
		global.level_complete = true;
	} else { 
		show_debug_message("Sorry Charlie, you need a key");
	}
}
if (obj_System.Grid[# tar_x, tar_y] == KEY) {
	x = tar_x * CELL_SIZE;
	y = tar_y * CELL_SIZE;
	show_debug_message("Got Key");
	obj_System.Grid[# tar_x, tar_y] = PATH;
	//show_debug_message(ds_grid_get(Grid, tar_x, tar_y));
	//ds_grid_set(Grid, tar_x, tar_y, 1);
	global.hasKey = true;
}

if (global.timeUp == true && global.playing == false) {
	audio_stop_all();
	audio_play_sound(Player_Death, 10, false);
	global.playing = true;
	alarm_set(2, 200);	
}

