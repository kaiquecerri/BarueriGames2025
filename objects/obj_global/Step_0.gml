if room == rm_menu or room == rm_menu_config {
	if !audio_is_playing(msc_menu) {
		global.menu_music = audio_play_sound(msc_menu,0,1,global.music)
	}
} else if audio_is_playing(msc_menu) {
	audio_stop_sound(msc_menu)
}

if room == rm_01 {
	if !audio_is_playing(msc_01) {
		audio_play_sound(msc_01,0,1,global.music)
	}
} else if audio_is_playing(msc_01) {
	audio_stop_sound(msc_01)
}

if room == rm_01boss {
	if !audio_is_playing(msc_01boss) {
		audio_play_sound(msc_01boss,0,1,global.music)
	}
} else if audio_is_playing(msc_01boss) {
	audio_stop_sound(msc_01boss)
}

if room == rm_02 {
	if !audio_is_playing(msc_02) {
		audio_play_sound(msc_02,0,1,global.music)
	}
} else if audio_is_playing(msc_02) {
	audio_stop_sound(msc_02)
}

if room == rm_gameover {
	if !audio_is_playing(msc_gameover) {
		audio_play_sound(msc_gameover,0,0,global.music)
	}
} else if audio_is_playing(msc_gameover) {
	audio_stop_sound(msc_gameover)
}