///@description spawns player tank based on choice in previous screen

if(global.tank==1){
	instance_create_depth(x,y,0,oPlayerV1);
}else{
	instance_create_depth(x,y,0,oPlayerV2);
}
instance_destroy();