/// @description When broken, drop wood

if(hp<=0){
	instance_destroy();
	
	//drop 3 wood for trees
	var wood = 3;
	for(i=0; i<wood; i++){
		instance_create_layer(x+i, y+i, "Instances", (obj_wood));
	}
}