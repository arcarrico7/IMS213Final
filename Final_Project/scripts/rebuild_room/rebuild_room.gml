// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function rebuild_room(){
	/// @description Build Grid at Room Start

	// Set the see to the one of the 10 we have saved
	random_set_seed(SEEDS[global.current_dungeon]);



	// Create Grid
	Grid = ds_grid_create(GRID_SIZE, GRID_SIZE);
	var path_x = GRID_SIZE/2;
	var path_y = GRID_SIZE/2;

	// Spawn Player
	//instance_create_depth(path_x*CELL_SIZE, path_y*CELL_SIZE, -1, obj_Player);

	//Generate Path
	repeat(PATH_SIZE){
		Grid[# clamp(path_x, 1, GRID_SIZE - 2), clamp(path_y, 1, GRID_SIZE - 2)] = PATH;
		switch ( choose( "Right", "Up", "Left", "Down" ) ) {
		
			case "Right":
				path_x++;
				break;
			case "Up":
				path_y--;
				break;
			case "Left":
				path_x--;
				break;
			case "Down":
				path_y++;
				break;
			
		}
	}

	var DoorSet = false;
	while (!DoorSet) {
		var door_x = random(GRID_SIZE);
		var door_y = random(GRID_SIZE);
	
		if (door_x != GRID_SIZE/2 || door_y != GRID_SIZE/2) {
		
			if (Grid[# door_x, door_y] == 1) {
				Grid[# door_x, door_y]  = 2;
				DoorSet = true;
			}
		
		}
	}

	var KeySet = false;
	while (!KeySet) {
		var key_x = random(GRID_SIZE);
		var key_y = random(GRID_SIZE);
	
		if (key_x != GRID_SIZE/2 || key_y != GRID_SIZE/2) {
		
			if (Grid[# key_x, key_y] == 1) {
				Grid[# key_x, key_y] = 3;
				KeySet = true;
			}
		
		}
	}
	reset_player();
}