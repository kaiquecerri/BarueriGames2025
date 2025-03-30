type = "metal"

vspd = 0
grv = global.grv


hp = 20
max_hp = hp;
delay = 0
def_delay = 60;
strength = 5;
spd = 1.3
can_walk = true;
hit = false;

side = choose(-1,1)
image_xscale = side
hspeed = side * spd;

def_sprite_vel = sprite_get_speed(sprite_index)

function walk_delay(){
	if obj_player.p_status != "dead"{
	sprite_set_speed(sprite_index,0,spritespeed_framespersecond)
	hspeed = 0
	alarm[0] = 45
	}
	
	
}

function hit_delay(){
	walk_delay()
	hit = true
	alarm[1] = 45
	
}


sprh = sprite_get_height(sprite_index)
sprw = sprite_get_width(sprite_index)