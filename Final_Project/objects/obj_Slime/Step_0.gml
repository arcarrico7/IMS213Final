/// @description Movement Mechanic

var move_h = random_range(-1, 1);
var move_v = random_range(-1, 1);

var tar_x = x div (CELL_SIZE) + move_h;
var tar_y = y div (CELL_SIZE) + move_v;

if (alarm[0] = -1) {
	alarm[0] = 4;
	if (obj_System.Grid[# tar_x, tar_y] == PATH) {
		x = tar_x * (CELL_SIZE);
		y = tar_y * (CELL_SIZE);
	}
}

if (move_h = 1) {
	image_index = 1;
}
else if (move_h = -1) {
	image_index = 2;
}
else if (move_v = 1) {
	image_index = 3;
}
else if (move_v = -1) {
	image_index = 0;
}
else {
	
}
