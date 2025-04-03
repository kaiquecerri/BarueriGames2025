// Inherit the parent event
event_inherited();
temp_msc = global.music * 0.1

audio_sound_gain(global.mscboss2,temp_msc,1)

audio_play_sound(snd_boss_spawn,10,0,global.sound)



alarm[10] = 60

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