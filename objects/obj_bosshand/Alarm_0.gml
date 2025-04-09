y += 4


if y < 120{
	alarm[0] = 1
}else{
	alarm[1] = 90 
	pitch = random_range(0.3,0.6)
	audio_play_sound(snd_damage,0,0,global.sound,0,pitch)
}
