if keyboard_check_pressed(ord("E")) and other.key {
	switch(next) {
	case 0 : proxima_sala = rm_01 break;
	case 1 : proxima_sala = rm_01boss break;
	default : proxima_sala = rm_01 break;
	
	}
	obj_player.x = next_x
	obj_player.y = next_y
	room_goto(proxima_sala)
}