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
	if(age mod 120==0){
		instance_create_depth(x,y,1,oShotEnm);
		audio_play_sound(sShot,0,false);
		shoot=false;
	}

}


instanceAngle=image_angle;
xOffset=x+30*cos(instanceAngle);
yOffset=y+30*sin(instanceAngle);


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
	
	//ATTACH AN OBJECT 30 PIXELS AWAY FROM THE FRONT MIDDLE OF THE ENEMY TO ALWAYS 
		//ROTATE WITH THE ENEMY AND MOVE WITH THE ENEMY! USE THAT OBJECT TO CHECK IF ANOTHER ENEMY
			//IN FRONT AND IF YES, STOP AND WAIT
}
*/