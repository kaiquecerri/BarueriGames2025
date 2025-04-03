w = display_get_width()/320
h = display_get_height()/180
sw = sprite_width/1.5
sh = sprite_height/1.5
tw = w*sw
th = h*sh

draw_sprite_stretched(spr_pgui, 0, 32, 32,tw,th)

//27:3
//75:5


pc = (player.hp / player.max_hp) * 100;
draw_healthbar(32+w*18,32+h*2,32+w*50.5,32+h*3.7, pc, 0, c_red, c_red, 0, 0, 0)



ds = (player.dash_delay/player.def_dash_delay) * 100;
draw_healthbar(32+w*18,32+h*6,32+w*45.8,32+h*7.7, ds, 0, c_blue, c_blue, 0, 0, 0)

draw_sprite_stretched(spr_coin,image_index,32+w*18,32+h*10,32,32)
draw_set_color(c_white)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(fnt_gui)
draw_text(76+w*18,32+h*10,string(global.coins + obj_player.level_coins))