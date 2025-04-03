// Inherit the parent event
event_inherited();
strength = 5
hp = 50
max_hp = hp
spd = 0.9
hspeed = side * spd;
delay = 40

coin = 30

alarm[2] = 30

type = "megametal"

temp_msc = global.music * 0.1

audio_sound_gain(global.mscboss,temp_msc,1)

audio_play_sound(snd_boss_spawn,10,0,global.sound)

alarm[10] = 60