draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_set_font(fnt_alert)


if collision_circle(x,y,30,obj_player,false,true){
draw_rectangle(x-56,y-6,x+56,y+8, false)

draw_set_color(c_black)
draw_text(x,y,_message)
}
