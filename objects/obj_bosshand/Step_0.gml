if place_meeting(x,y,obj_player) and image_alpha == 1 and delay <= 0 {
		obj_player.damage(5)
		delay = def_delay
	}	

delay -= 1

if x >= room_width/2
image_xscale = 1
else
image_xscale = -1

obj_bosseye.hp = hp