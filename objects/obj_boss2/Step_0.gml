if start_delay <= 0 {
	
if actual_round == 0 and round_ended == true {
	instance_create_layer(48+48,36,"player",obj_minirat) //esgoto 2

	instance_create_layer(48+48*3,36,"player",obj_minirat) //esgoto 4

	instance_create_layer(48+48*5,36,"player",obj_minirat) //esgoto 6

	instance_create_layer(48+48*7,36,"player",obj_minirat) //esgoto 8

	round_ended = false
	actual_round = 1
	next_round = true
	
} else if actual_round == 1 and round_ended == true {
	instance_create_layer(48,36,"player",obj_minirat) //esgoto 1

	instance_create_layer(48+48*2,36,"player",obj_minirat) //esgoto 3

	instance_create_layer(48+48*4,36,"player",obj_minirat) //esgoto 5

	instance_create_layer(48+48*6,36,"player",obj_minirat) //esgoto 7

	instance_create_layer(48+48*8,36,"player",obj_minirat) //esgoto 9

	round_ended = false
	actual_round = 2
	next_round = true
	
} else if actual_round == 2 and round_ended == true{
	alarm[2] = 90
	actual_round = 4
}


}

if next_round and !instance_exists(obj_minirat){
		round_ended = true
}


start_delay -=1
