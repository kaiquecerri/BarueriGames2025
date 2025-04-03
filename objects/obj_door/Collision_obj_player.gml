if keyboard_check_pressed(ord("E")) and other.key {
	switch(next) {
	case 0 : proxima_sala = rm_01 global.actual_level = 1 global.coins += obj_player.level_coins obj_player.level_coins = 0 config_save() break;
	case 1 : proxima_sala = rm_01boss break;
	case 2 : proxima_sala = rm_02 global.actual_level = 2 global.coins += obj_player.level_coins obj_player.level_coins = 0 config_save() break;
	case 3 : proxima_sala = rm_02boss break;
	case 4 : proxima_sala = rm_03 global.actual_level = 3 global.coins += obj_player.level_coins obj_player.level_coins = 0 config_save() break;
	case 5 : proxima_sala = "rm_03boss" break;
	default : proxima_sala = rm_01 break;
	
	}
	obj_player.x = next_x
	obj_player.y = next_y
	obj_player.key = false
	room_goto(proxima_sala)
}