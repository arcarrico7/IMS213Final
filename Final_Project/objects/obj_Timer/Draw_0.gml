draw_set_color(c_white);

draw_text(obj_Player.x - 150, obj_Player.y + 125, "Time: ")

	
draw_set_color(c_blue);
var barWidth = 200;
draw_rectangle(obj_Player.x - 100, obj_Player.y + 130, obj_Player.x - 90 + (global.mytime/maxtime) * barWidth, obj_Player.y + 140, false);
draw_set_color(c_white)
draw_rectangle(obj_Player.x - 100, obj_Player.y + 130, obj_Player.x - 50 + barWidth, obj_Player.y + 140, true);