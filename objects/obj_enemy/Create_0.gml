hp = 20
max_hp = hp;
delay = 0
def_delay = 60;
strength = 5;
spd = 1.3
can_walk = true;

side = choose(-1,1)
image_xscale = side
hspeed = side * spd;

function walk_delay(){
	if obj_player.p_status != "dead"{
	hspeed = 0
	alarm[0] = 45
	}
}

sprh = sprite_get_height(sprite_index)
sprw = sprite_get_width(sprite_index)