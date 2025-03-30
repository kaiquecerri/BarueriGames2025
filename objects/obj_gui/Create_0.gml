if !instance_exists(obj_player) {
 if !layer_exists("player") layer_create(200,"player")
 
 instance_create_layer(64,64,"player",obj_player)
}

player = obj_player