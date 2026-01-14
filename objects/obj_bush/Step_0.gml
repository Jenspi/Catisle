/// @description Destroy bush, drop wood

if(hp<=0){
	instance_destroy();
	
	//drop one wood
	var wood = 1;
	for(i=0; i<wood; i++){
		instance_create_layer(x+i, y+i, "Instances", (obj_wood));
	}
}
