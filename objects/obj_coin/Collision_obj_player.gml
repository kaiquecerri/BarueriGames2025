obj_player.level_coins += 1
instance_destroy(self)

pitch = random_range(0.9,1.3)
audio_play_sound(snd_coin,0,0,global.sound,0,pitch)
	