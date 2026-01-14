/// @description Depth ordering

var _player_exists = instance_exists(obj_player);
var _held_item = noone;

if(_player_exists) _held_item = obj_player.held_item;

with(all){
	//Run in "all" instances of room
	depth = -bbox_bottom;
	
	// Exception for held items
	if(_player_exists && _held_item == id){
		depth -= 10;
	}
}