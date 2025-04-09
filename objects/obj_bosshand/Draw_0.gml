draw_set_alpha(image_alpha)
draw_self()

sprh = sprite_get_height(sprite_index)

draw_set_alpha(1)
pc = (hp / max_hp) * 100;
draw_healthbar(20, 5, 300, 10, pc, c_black, c_red, c_yellow, 0, true, false)
draw_set_alpha(image_alpha)

if hit == true {
gpu_set_fog(1,c_red,0,1)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha/2)
gpu_set_fog(0, c_white,0,1)
}

draw_set_alpha(1)
