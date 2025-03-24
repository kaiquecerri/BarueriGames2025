randomize()

spd = 2;
def_spd = 2;
hspd= 0;
vspd= 0;
grv = 0.7;
jump = 10;
dash = spd * 2.5;
dash_delay = 0
def_dash_delay = 60


punch_delay = 0
punch_delay_def = 25
punch_strength = 5

p_status = "idle"

hp = 20;
max_hp = hp;

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
	}
}

