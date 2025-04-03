// Definindo os limites (ajuste conforme o tamanho do seu "fundo do olho")
var limite_x1 = x - 50;  // Limite esquerdo
var limite_x2 = x + 50;  // Limite direito
var limite_y1 = y - 50;  // Limite superior
var limite_y2 = y + 50;  // Limite inferior

// Posição do jogador
var player_x = obj_player.x;
var player_y = obj_player.y;

// Calculando a direção do olho em relação ao jogador
var direction_to_player = point_direction(x, y, player_x, player_y);

// Calculando a distância entre o olho e o jogador
var distance_to_player = point_distance(x, y, player_x, player_y);

// Movendo o olho em direção ao jogador (mas dentro dos limites)
var move_distance = 5;  // Distância de movimento do olho por frame

// Calculando a nova posição com base na direção
var new_x = x + lengthdir_x(move_distance, direction_to_player);
var new_y = y + lengthdir_y(move_distance, direction_to_player);

// Restringindo o movimento dentro dos limites definidos
new_x = clamp(new_x, limite_x1, limite_x2);
new_y = clamp(new_y, limite_y1, limite_y2);

// Atualizando a posição do olho
x = new_x;
y = new_y;
