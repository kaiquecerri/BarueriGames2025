draw_set_alpha(image_alpha)
draw_self()

pc = (hp / max_hp) * 100;
draw_healthbar(x-10, y-38, x+10, y-44, pc, c_black, c_red, c_lime, 0, true, true)

draw_set_color(c_black)
draw_set_alpha(image_alpha/2)

if vspd == 0 
draw_ellipse(x-15,y,x+10,y+2, false)