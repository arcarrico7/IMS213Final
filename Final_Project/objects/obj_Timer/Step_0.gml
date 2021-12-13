if (global.mytime > 0) {
	global.mytime = global.mytime - delta_time/1000000;
}
else {
	global.mytime = 0;
	global.timeUp = true;
}

if (global.mytime < 10) {
	//audio_play_sound(Time, 1, false);
}
 
showTime = ceil(global.mytime);