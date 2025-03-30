if keyboard_check_pressed(ord("E")) and other.key {
	switch(next) {
	case 0 : proxima_sala = rm_01 break;
	case 1 : proxima_sala = rm_01boss break;
	case 2 : proxima_sala = rm_02 break;
	default : proxima_sala = rm_01 break;
	
	}
	obj_player.x = next_x
	obj_player.y = next_y
	obj_player.key = false
	room_goto(proxima_sala)
}