if (place_meeting(x,y,obj_enemy_collision) or place_meeting(x,y,obj_wall)) and can_walk {
	hspeed *= -1
	image_xscale = sign(hspeed)
	side *= -1
}

if hp <= 0 instance_destroy(self)

if collision_rectangle(x-sprw/2-5,y,x+sprw/2+5,y-sprh-2,obj_player,false,true) and delay <= 0 {
	obj_player.damage(strength)
	delay = def_delay
	show_debug_message("dano")
	walk_delay()
}

if delay > 0 delay -= 1