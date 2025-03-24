draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(c_black)
draw_set_font(fnt_menu)

//TELA CHEIA
draw_text(90,50,"Modo atual: " + (global.fullscreen ? "Tela cheia" : "Janela"))

//SOM
draw_text(90,75,"Sons: "+ string(global.sound * 100) + "%")

//MUSICA
draw_text(90,100,"Musica: "+ string(global.music * 100) + "%")