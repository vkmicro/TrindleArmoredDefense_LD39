/// @description Insert description here
// You can write your code in this editor
//spd=2;
//image_angle=point_direction(x,y,oTower.x,oTower.y);
move=true;
stop=false;
shoot=false;
hp=1;
age=0;
spd=0.8;
moveDir=point_direction(x,y,oTower.x,oTower.y);

facingDir=0;
event_inherited();


//instance_create_depth(0,0,0,oLaserPointTEMPforENM);