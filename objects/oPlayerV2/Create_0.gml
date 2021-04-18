/// @description Insert description here
// You can write your code in this editor
spd=5;
dir=0;
hp=10;
hpMax=10;
shoot=false;
playerDir=0;
age=0;
//dir 1=up, 2=right,3=down,4=left

shootDir=point_direction(x,y,oPlayer.x,oPlayer.y);

instance_create_depth(0,0,0,oLaserPointTEMP);
instance_create_depth(0,0,0,oBulSpawnPoint);
