/// @description Insert description here
// You can write your code in this editor
if(hp<=0){
	instance_destroy();
	
	//drop milk
	var milk = 1;
	for(i=0; i<milk; i++){
		instance_create_layer(x+i, y+i, "Instances", (obj_milk));
	}
}