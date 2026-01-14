/// @description Destroy tools

if(instance_exists(held_item)){
	// when instance is destroyed, destroy item too
	instance_destroy(held_item);
}