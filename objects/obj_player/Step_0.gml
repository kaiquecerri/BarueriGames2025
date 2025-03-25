//KEYS
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check(vk_space);
key_punch = mouse_check_button_pressed(mb_left);
key_dash = keyboard_check_pressed(vk_shift)


#region MOVIMENTAÇÃO
if (p_status != "attack"){
    var move = key_right - key_left;
} else {
    var move = 0;
}

hspd = move * spd;
vspd = vspd + grv;

if key_dash and hspd != 0 and dash_delay <= -60 {
    spd = dash
    p_status = "dash"
    alarm[0] = 30  
    dash_delay = def_dash_delay  
}


if dash_delay > -60 {
    dash_delay -= 1
}

if p_status == "dash" {
	hspd = spd
}



//COLISÃO HORIZONTAL
if (place_meeting(x + hspd, y, obj_wall)) {
    while (!place_meeting(x + sign(hspd), y, obj_wall)) {
        x += sign(hspd);
	
    }
    hspd = 0;
	spd = def_spd;
}

x += hspd;

//COLISÃO VERTICAL
if (place_meeting(x, y + vspd, obj_wall)) {
    while (!place_meeting(x, y + sign(vspd), obj_wall)) {
        y += sign(vspd);
    }
    vspd = 0;
}
y += vspd;

//JUMP
if (place_meeting(x, y + 1, obj_wall) and key_jump) {
    vspd -= jump;
    p_status = "jump";
}

#endregion



if (key_punch and punch_delay <= 0 and p_status != "dead") {
    punch_delay = punch_delay_def;
    punch_col = instance_create_layer(x, y, layer, obj_punch_collision);
    show_debug_message("soco");
}

if (punch_delay > 0) {
    p_status = "attack";
    punch_delay -= 1;
}

if (hspd != 0) {
    p_status = "walk"; // Mudança para "walk"
}

#region ANIM
if (p_status == "idle") {
    sprite_index = spr_player;
}

if (p_status != "attack") {
    if (key_left) {
        image_xscale = -1;
    }
    if (key_right) {
        image_xscale = 1;
    }
}

if (p_status == "walk") {
    sprite_index = spr_player_walk;  // Mudança para "walk"
}

if (p_status == "attack") {
    sprite_index = spr_player_attack;
}

if hp <= 0 {
	p_status = "dead"
	image_alpha -= 0.01
	sprite_index = spr_player_dead
	spd = 0
	jump = 0
	image_xscale = 1
}

if (hspd == 0) {
    p_status = "idle";
}


if (punch_delay <= 0) {
    p_status = "idle";
}

if hp <= 0 {
	p_status = "dead"

	dead()
}


if p_status == "idle" or p_status =="walk"{
if (vspd > 0) {
	sprite_index = spr_player_jump;
}

if (vspd < 0 and !place_meeting(x,y,obj_wall)) {
	sprite_index = spr_player_fall;
}
}

#endregion



if move != 0{
last_move = move
}


if hp > max_hp hp = max_hp

