draw_set_alpha(image_alpha)
draw_self()


if hit == true {
gpu_set_fog(1,c_red,0,1)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha/2)
gpu_set_fog(0, c_white,0,1)
}

draw_set_alpha(1)
