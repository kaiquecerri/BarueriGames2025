qtt = irandom_range(1,3)
enemy = obj_minitrash_slow

while(qtt > 0) {
	
	while(pos+60 > last_pos and pos-60 < last_pos){
	pos = random_range(24,304)
	}
	
	instance_create_layer(pos,-12,"player",enemy)
	qtt -=1
	last_pos = pos
} 


if !instance_exists(obj_hp) {
	instance_create_layer(random_range(3,300),128,"player", obj_hp)
}
alarm[1] = 600