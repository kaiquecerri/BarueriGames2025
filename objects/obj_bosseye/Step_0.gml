// Calcula deslocamento baseado na posição do jogador

alvo_x = obj_player.x;

var dx = clamp((alvo_x - x) / 20, -1, 1); // Normaliza valor entre -1 e 1
// Calcula a posição alvo da pupila
var destino_x = olho_centro_x + (dx * max_offset);

// Aplica movimento suave com lerp
x = lerp(x, destino_x, 0.2);
