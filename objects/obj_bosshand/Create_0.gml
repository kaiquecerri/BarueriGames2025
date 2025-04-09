player = obj_player
hp = obj_bosseye.hp
max_hp = hp
hit = false

function hit_delay(){
	hit = true
	alarm[11] = 45	
}
type = "rat"

image_alpha = 0

function attack(xx,yy) {	
	x = xx
	y = yy
	image_alpha = 1
	alarm[9] = 1
	hit = false
}

delay = 45
def_delay = delay