if collision_rectangle(x-96,y-128,x+96,y+128,obj_player,0,1) {
if x > obj_player.x  {
	hspeed = -1 * spd
	image_xscale = sign(hspeed)
	side = -1
} else if x < obj_player.x  {
	hspeed = 1 * spd
	image_xscale = sign(hspeed)
	side = 1
}
}
alarm[2] = 60