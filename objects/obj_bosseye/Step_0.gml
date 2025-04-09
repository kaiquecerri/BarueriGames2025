// Calcula deslocamento baseado na posição do jogador

alvo_x = obj_player.x;

var dx = clamp((alvo_x - x) / 20, -1, 1); // Normaliza valor entre -1 e 1
// Calcula a posição alvo da pupila
var destino_x = olho_centro_x + (dx * max_offset);

// Aplica movimento suave com lerp
x = lerp(x, destino_x, 0.2);


if hp <= 0 {
	instance_destroy(obj_bosshand)
	layer_destroy("corpo_boss")
	layer_destroy("fundoolho_boss")
	instance_create_layer(0,0,layer,obj_deadboss)
	
	while(instance_exists(obj_minitrash_slow)){
	instance_destroy(obj_minitrash_slow)
	}
	instance_destroy(self)
}