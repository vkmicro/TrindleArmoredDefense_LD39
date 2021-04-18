/// @description THIS IS THE PARENT
// You can write your code in this editor
spd=5;
dir=0;
hp=12;
hpMax=12;
shoot=false;
playerDir=0;
age=0;
//dir 1=up, 2=right,3=down,4=left

shootDir=point_direction(x,y,oPlayer.x,oPlayer.y);

//delete SPRITE for bullet spawn point and laser point
instance_create_depth(0,0,0,oLaserPointTEMP);
instance_create_depth(0,0,0,oBulSpawnPoint);
