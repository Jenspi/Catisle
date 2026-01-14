/// @description Milk pick up
//Add milk to player inventory
ds_list_add(other.PLAYER_INVENTORY, obj_milk);
show_debug_message("inventory size: "+string(ds_list_size(other.PLAYER_INVENTORY)));

//Destroy instance
instance_destroy();