if keyboard_check_pressed(ord("E")) and other.key {
	switch(next) {
	case 0 : proxima_sala = rm_test break;
	case 1 : proxima_aula = "" break;
	default : proxima_aula = rm_test break;
	
	}
	room_goto(proxima_sala)
}