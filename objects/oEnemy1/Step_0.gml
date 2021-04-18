/// @description Insert description here
//author Vasiliy Ulin
event_inherited();
age++; //count age every 1 frame
if(hp<=0){
	instance_destroy(self);
	global.scr+=1; //add to score
	audio_play_sound(sExplosion,0,false);
}

//show_debug_message(hp);
//if(place_meeting(x,y,oShotParent)){
//	hp-=1;
//	with(oShotReg){ //destroy the bullet that hit the enemy
//		instance_destroy(other);
//	}
//}

//following code determines if the enemy has to keep moving or not 
	//and makes sure it points in the right direction
if(move){
	speed=2;
	image_angle=point_direction(x,y,oTower.x,oTower.y);
	if(distance_to_object(oTower)>50){
		motion_set(moveDir,spd);
	}
	if(distance_to_object(oTower)<=50){
		move=false;
	}
}else{ //NOT move
	speed=0; //speed makes it not move 
}

//The following 2 if statements determien if the enemies will stop or start moving or go into shooting
if(distance_to_object(oPlayer)<=400){
	move=false;
	shoot=true;
}
if(distance_to_object(oPlayer)>400 && distance_to_object(oTower)>50){
	shoot=false;
	move=true;
}

if(shoot){
	image_angle=point_direction(x,y,oPlayer.x,oPlayer.y)
	if(age mod 180==0){
		instance_create_depth(x,y,1,oShotEnm);
		audio_play_sound(sShot,0,false);
		shoot=false;
	}

}

//creates a point __ pixels away from the FRONT of the tank based on the image angle
//offsets it by ___ pixels 
instanceAngle=image_angle;
xOffset=x+50*cos(instanceAngle);
yOffset=y+50*sin(instanceAngle);

//check if at that invisible point there's another tank, if so, stop.
if(place_meeting(xOffset,yOffset,oEnemyParent)){
	move=false;
}
if(place_meeting(x,y,oEnemyParent)){
	instance_destroy();
}




if(place_meeting(x,y,oPlayer)){
	if(oPlayer.x>=x){
		oPlayer.x+=2;
	}
	if(oPlayer.x<=x){
		oPlayer.x-=2;
	}
	if(oPlayer.y>=y){
		oPlayer.y+=2;
	}
	if(oPlayer.y<=y){
		oPlayer.y-=2;
	}
}















/*
//TEMPORARY, FIX LATER
if(place_meeting(x,y,oEnemy)){
	instance_destroy(); //TEMPORARY MEASUREMENT

	//move=false;
	//if(age mod 60==0){
	//	move=true;
	//}
	//move=false;
}
*/



//show_debug_message(shoot);
//show_debug_message(move);



//show_debug_message(spd);
/*

if(distance_to_object(oPlayer)<400){
	move=false;
	image_angle=point_direction(x,y,oPlayer.x,oPlayer.y); //adjust angle to face player and then shoot
	shoot=true;
}
*/
/*
if(shoot){
	image_angle=point_direction(x,y,oPlayer.x,oPlayer.y);
	if(age mod 120==0){ //set to 120
		instance_create_depth(x,y,1,oShotEnm);
	}
	shoot=false;
	move=true;
}
*/