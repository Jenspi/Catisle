/// @description Initializing code for Player object.

// variables to be used in step/other files:
move_x = 0;
move_y = 0;
direction_to_face = 0;
player_speed = 3; // avoiding using the built-in speed function

// spawning facing direction:
image_alpha = spr_player_front;

held_item = instance_create_layer(x, y, "Instances", obj_axe);

//Inventory
PLAYER_INVENTORY = ds_list_create();