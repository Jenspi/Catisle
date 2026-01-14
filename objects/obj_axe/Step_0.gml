/// @description LERP player axe

//Face item whichever way player is facing
rotation = lerp(rotation, 45, 0.1);
image_angle = rotation * obj_player.image_xscale;

//Get input
var _mouse_press = mouse_check_button(mb_left);

//Get breakable instance
var _breakable = instance_position(mouse_x, mouse_y, obj_breakable_parent);

with(_breakable){
	//Get distance
	var _dist = distance_to_object(obj_player);
	
	//In range?
	if(_dist < other.breakDistance){
		other.selector_inst = id;
		//Click
		if(other.cooldown == 0 && _mouse_press){
			//Reduce HP and set rotation & cooldown
			hp--;
			other.rotation = -80;
			other.cooldown = 20;
		}
	}
}

//Cooldown
if(cooldown > 0) cooldown--;