if place_meeting(x,y,obj_enemy_collision) hspeed *= -1

if collision_rectangle(x,y,x+64,y-1,obj_player,false,true) obj_player.x += hspeed

