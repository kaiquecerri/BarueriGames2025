vspd = vspd + grv;

if (place_meeting(x, y + vspd, obj_wall)) {
    while (!place_meeting(x, y + sign(vspd), obj_wall)) {
        y += sign(vspd);
    }
    vspd = 0;
}
y += vspd;



if (place_meeting(x,y,obj_enemy_collision) or place_meeting(x,y,obj_wall)) and can_walk {
	hspeed *= -1
	image_xscale = sign(hspeed)
	side *= -1
}



if place_meeting(x,y,obj_player) and delay <= 0 {
	obj_player.damage(strength)
	delay = def_delay
	show_debug_message("dano")
	walk_delay()
}

if delay > 0 delay -= 1

if hp <= 0 and image_alpha <= 0 {
instance_destroy(self)
} else if hp <= 0{
delay = 1000
image_alpha -= 0.05
}