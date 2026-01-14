/// @description Player movement
// Code by Matharoo on YouTube, modified by me

//Inputs
var _up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _down = keyboard_check(vk_down) or keyboard_check(ord("S"));
var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));

//Input axis
var _inputX = _right - _left;
var _inputY = _down - _up;

//Speed
move_x = _inputX * player_speed;
move_y = _inputY * player_speed;

//Check for collisions before moving
if(scr_collision(x+move_x, y)){
	while( !scr_collision(x+(sign(move_x)), y) ){
	//Get player sprite as close to collision as possible
		//Add sign of move_x (1 if pos, -1 if neg); moves pixel by pixel
		x += sign(move_x);
	}
	move_x = 0;
	//Collision detected; don't move
}
if(scr_collision(x, y+move_y)){
	while( !scr_collision(x, y+(sign(move_y))) ){
		y += sign(move_y);
	}
	move_y = 0;
}

//Move player
x += move_x;
y += move_y;

//Movement sprites
if(_up){sprite_index = spr_back;}
if(_down){sprite_index = spr_front;}
if(_left){sprite_index = spr_left;}
if(_right){sprite_index = spr_right;}

//Idle sprite
