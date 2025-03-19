draw_set_alpha(image_alpha)
draw_self()

sprh = sprite_get_height(sprite_index)

pc = (hp / max_hp) * 100;
draw_healthbar(x-10, y-sprh-5, x+10, y-sprh-10, pc, c_black, c_red, c_lime, 0, true, true)



