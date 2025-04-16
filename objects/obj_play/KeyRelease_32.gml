pitch = random_range(0.9,1.3)
audio_play_sound(snd_button,0,0,global.sound,0,pitch)


switch(global.actual_level) {
	case 1 : proxima_sala = rm_01 break;
	case 2 : proxima_sala = rm_02 break;
	case 3 : proxima_sala = rm_03 break;
	default : proxima_sala = rm_comics break;
	
	}
room_goto(proxima_sala)