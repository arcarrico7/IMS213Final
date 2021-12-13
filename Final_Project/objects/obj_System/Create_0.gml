/// @description Initialize World

audio_play_sound(Music, 10, true);

randomize();
SEEDS =	[ 
	 3897941771,
	 4116767814,
	 3897941771,
	 3179105883,
	 1750891314,
	 1612411173,
	 4002610548,
	 2331351851,
	 1664774656,
	 1044371641,
	 3831139028];

global.current_dungeon = 1;
current_seed = SEEDS[global.current_dungeon]; 

global.level_complete = false;

global.hasKey = false;
global.unlockDoor = false;
global.playing = false;