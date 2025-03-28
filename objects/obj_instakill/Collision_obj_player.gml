pitch = random_range(0.9,1.3)
if !audio_is_playing(snd_fallkill) {
audio_play_sound(snd_fallkill,0,0,global.sound,0,pitch)
}
alarm[0] = 45