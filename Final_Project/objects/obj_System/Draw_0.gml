/// @description Draw World (Grid)

switch(room) {
	case rm_World:
		//Draw Path/Void Sprites in the World
		for (var i = 0; i < GRID_SIZE; i++) {
			for (var j = 0; j < GRID_SIZE; j++) {
				draw_sprite(spr_Tile, Grid[# i, j], i * CELL_SIZE, j * CELL_SIZE);
			}
		}
		break;
}

