/// @description Calculate trajectory of the shot? here? or not? figure out later

//straight ahead


//image_angle=-90+point_direction(x,y,pointx,pointy);

spd=8;
event_inherited();
dir=oPlayer.dir;

//this is the direction of the laser and original x,y are the player
shootDir=point_direction(oPlayer.x,oPlayer.y,oLaserPointTEMP.x,oLaserPointTEMP.y);
//sets the bullet in motion to that direction once upon spawn and it continues there
motion_set(shootDir,spd);

//adjusts image angle to point in the direction where shooting (-90 since original image points up)
image_angle=shootDir-90;



/*
switch(dir){
	case 1: break;
	case 2: image_angle=-90; break;
	case 3: image_angle=+180;break;
	case 4: image_angle=+90;break;
	////////diagonal images////////
	case 5: image_angle=+45;break;
	case 6: image_angle=-45;break;
	case 7: image_angle=+135;break
	case 8: image_angle=-135;break;
}
*/

