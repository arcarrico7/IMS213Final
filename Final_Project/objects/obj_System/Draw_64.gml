/// @description Draw Mini Map

if (room == rm_World) {
	if (display_map) {
	var mm_size = 200;
	var mm_cell = mm_size / GRID_SIZE;
	
	//Draw Mini Map
	draw_set_color(c_dkgray);
	draw_rectangle(0 ,0, mm_size, mm_size, false);
	
	for(var i = 0; i < GRID_SIZE; i++){
		for (var j = 0; j < GRID_SIZE; j++) {
			if (Grid[# i,j] == PATH) {
				draw_set_color(c_green)
				draw_rectangle(mm_cell * i, mm_cell * j, mm_cell * i + mm_cell -1, mm_cell * j + mm_cell - 1, false);
			}
		}
	}
	
	//Draw Player
	draw_set_color(c_yellow);
	var player_x = mm_cell * obj_Player.x div CELL_SIZE;
	var player_y = mm_cell * obj_Player.y div CELL_SIZE;
	draw_rectangle(player_x, player_y, player_x + mm_cell - 1, player_y + mm_cell - 1, false);
	
	
	
	//Draw Camera Box
	draw_set_color(c_gray);
	var view_size = room_width / camera_get_view_width(view_camera[0]);
	view_size = mm_size/view_size;
	view_size *= 0.5;
	
	var view_x = clamp(player_x, view_size, mm_size - view_size);
	var view_y = clamp(player_y, view_size, mm_size - view_size);
	
	draw_rectangle(view_x - view_size, view_y - view_size, view_x + view_size, view_y + view_size, true);
	
}
}
if (global.hasKey == false && obj_Player.x == Door) {
		draw_set_color(c_white);
		draw_text(obj_Player.x, obj_Player.y - CELL_SIZE, "Find the Key!");
		
	}