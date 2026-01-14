/// @description Tool movement

if(instance_exists(held_item)){
	// if item exists, stick to player
	held_item.x = x - 3*image_xscale;//makes item always on correct side
	held_item.y = y + 3;
}