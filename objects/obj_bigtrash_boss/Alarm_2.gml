if x > obj_player.x  {
	hspeed = -1 * spd
	image_xscale = sign(hspeed)
	side = -1
} else if x < obj_player.x  {
	hspeed = 1 * spd
	image_xscale = sign(hspeed)
	side = 1
}
alarm[2] = 60