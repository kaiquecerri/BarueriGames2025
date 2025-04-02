randomize()

level_coins = 0

key = false

spd = 2;
def_spd = 2;
hspd= 0;
vspd= 0;
grv = global.grv;
jump = 10;
dash = spd * 2.5;
dash_delay = 0
def_dash_delay = 120


punch_delay = 0
punch_delay_def = 25
punch_strength = 5

p_status = "idle"

hp = 20;
max_hp = hp;

hit = false;

//idle
//run
//attack
//jump
//dash
//dead


function damage(s){
	if p_status != "dead"{
	hp -= s;
	vspd = -10
	hit = true
	alarm[1] = 30
	
	pitch = random_range(0.9,1.3)
	audio_play_sound(snd_damage,0,0,global.sound,0,pitch)
	}
}

dead_time = 90
function dead(){
	if dead_time <= 0 {
	image_alpha = 1
	room_goto(rm_gameover)
	}
	else {
		dead_time -=1
		hp = -1000
		}
}

