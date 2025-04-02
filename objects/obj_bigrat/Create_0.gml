// Inherit the parent event
event_inherited();

hp = 75
max_hp = hp;
strength = 7;
spd = 1.3
hspeed = side * spd;
def_delay = 25
coin = 30

type = "rat"


function walk_delay(){
	if obj_player.p_status != "dead"{
	image_speed = 0
	hspeed = 0
	alarm[0] = 20
	}
	
	
}

function hit_delay(){
	walk_delay()
	hit = true
	alarm[1] = 20
	
}