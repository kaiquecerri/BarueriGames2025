if actual_round < 3 {
if spawns < spawns_round and start_delay <= 0 {
spawns += 1
instance_create_layer(x+(random_range(-24,24)),y+(random_range(0,12)),obj_player.layer,obj_minitrash)
}

if spawns >= spawns_round and !instance_exists(obj_enemy){
	if round_delay <= round_delay_def {
	round_delay+=1
	}else{
	
	actual_round += 1
	spawns = 0
	spawns_round += 2
	}
}
} else 
if actual_round == 3{
	alarm[0] = 0
	alarm[1] = 60
	actual_round = 4
}


start_delay -=1
