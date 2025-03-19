image_xscale = obj_player.image_xscale
image_alpha = 0
enemy = instance_nearest(x,y,obj_enemy)

if place_meeting(x,y, enemy){
enemy.hp -= obj_player.punch_strength
enemy.walk_delay()
}

instance_destroy(self)