image_xscale = obj_player.image_xscale
image_alpha = 0
enemy = instance_nearest(x,y,obj_enemy)

if place_meeting(x,y, enemy){
enemy.hp -= obj_player.punch_strength
enemy.walk_delay()

	pitch = random_range(0.9,1.3)
	audio_play_sound(snd_attack,0,0,global.sound,0,pitch)
} else {
	pitch = random_range(0.9,1.3)
	audio_play_sound(snd_attack_miss,0,0,global.sound,0,pitch)
}

instance_destroy(self)