image_xscale = obj_player.image_xscale
image_alpha = 0
enemy = instance_nearest(x,y,obj_enemy_hit)

if place_meeting(x,y, enemy){
enemy.hp -= obj_player.punch_strength
enemy.hit_delay()

	pitch = random_range(0.9,1.3)
	
	switch(enemy.type){
		case "rat" : snd = snd_attack_rat break;
		case "metal" : snd = snd_metal_attack break;
		case "minimetal" : snd = snd_damage pitch = random_range(1.5,1.8) break;
		case "megametal" : snd = snd_metal_attack pitch = random_range(0.5,0.8) break;
		default : snd = snd_metal_attack break;
	}
	audio_play_sound(snd,0,0,global.sound,0,pitch)
} else {
	pitch = random_range(0.9,1.3)
	audio_play_sound(snd_attack_miss,0,0,global.sound,0,pitch)
}

instance_destroy(self)