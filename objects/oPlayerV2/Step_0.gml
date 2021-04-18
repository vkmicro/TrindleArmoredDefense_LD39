/// @description Insert description here
age++;

//clockwise, up, right, down, left

if(keyboard_check(ord("W"))){
	dir=1; 
	y-=spd;
}	
if(keyboard_check(ord("S"))){
	dir=3; 
	y+=spd;
}
if(keyboard_check(ord("A"))){
	dir=4;
	x-=spd;
}
if(keyboard_check(ord("D"))){
	dir=2;
	x+=spd;
}
if(keyboard_check(ord("W"))&&keyboard_check(ord("A"))){
	spd-=1;
	dir=5; 
}
if(keyboard_check(ord("W"))&&keyboard_check(ord("D"))){
	spd-=1;
	dir=6; 
}
if(keyboard_check(ord("S"))&&keyboard_check(ord("A"))){
	spd-=1;
	dir=7; 
}	
if(keyboard_check(ord("S"))&&keyboard_check(ord("D"))){
	spd-=1;
	dir=8; 
}	

//STATIONARY ROTATING
if(keyboard_check(vk_numpad7)){
	dir=5;
	x=xprevious;
	y=yprevious;
}

if(keyboard_check(vk_numpad9)){
	dir=6;
	x=xprevious;
	y=yprevious;
}

if(keyboard_check(vk_numpad3)){
	dir=8;
	x=xprevious;
	y=yprevious;
}
if(keyboard_check(vk_numpad1)){
	dir=7;
	x=xprevious;
	y=yprevious;
}

if(keyboard_check(vk_numpad8)){
	dir=1;
	x=xprevious;
	y=yprevious;
}
if(keyboard_check(vk_numpad6)){
	dir=2;
	x=xprevious;
	y=yprevious;
}
if(keyboard_check(vk_numpad2)){
	dir=3;
	x=xprevious;
	y=yprevious;
}
if(keyboard_check(vk_numpad4)){
	dir=4;
	x=xprevious;
	y=yprevious;
}

spd=5;



switch(dir){ //up,right,down,left, diagonals //vkmicro
	case 1: image_angle=90;playerDir=1; break;
	case 2: image_angle=0;playerDir=2; break;
	case 3: image_angle=-90;playerDir=3; break;
	case 4: image_angle=180;playerDir=4; break;
	////////diagonal angles //////
	case 5: image_angle=135;playerDir=5; break;
	case 6: image_angle=45;playerDir=6; break;
	case 7: image_angle=225;playerDir=7; break;
	case 8: image_angle=-45;playerDir=8; break;
}

//collision with enemies / tower
if(place_meeting(x,y,oTower)||place_meeting(x,y,oEnemyParent)||place_meeting(x,y,oWalls)){
	y=yprevious;
	x=xprevious
}


if(shoot){
	//instance_create_depth(oBulSpawnPoint.x,oBulSpawnPoint.y,0,oShotReg);
	if(age mod 10==0){
	/*switch(playerDir){ //up, right, down, left
		case 1: instance_create_layer(x,y-100,"Instances",oShotReg); break;
		case 2: instance_create_layer(x+100,y,"Instances",oShotReg); break;
		case 3: instance_create_layer(x,y+100,"Instances",oShotReg); break;
		case 4: instance_create_layer(x-100,y,"Instances",oShotReg)
	}*/
		instance_create_depth(oBulSpawnPoint.x,oBulSpawnPoint.y,0,oShotReg);
		audio_play_sound(sShot,0,false);
		shoot=false;
		age=0;
	}
}









