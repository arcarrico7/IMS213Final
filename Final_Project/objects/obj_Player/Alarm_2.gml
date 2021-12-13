global.playing = true;
audio_stop_sound(Player_Death);
room_goto(rm_Death);
audio_play_sound(Death, 10, true);

