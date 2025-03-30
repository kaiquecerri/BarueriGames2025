draw_set_alpha(image_alpha)
draw_self()

sprh = sprite_get_height(sprite_index)

pc = (hp / max_hp) * 100;
draw_healthbar(x-10, y-sprh-5, x+10, y-sprh-10, pc, c_black, c_red, c_lime, 0, true, true)

if hit == true {
gpu_set_fog(1,c_red,0,1)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha/2)
gpu_set_fog(0, c_white,0,1)
}

draw_set_alpha(1)
