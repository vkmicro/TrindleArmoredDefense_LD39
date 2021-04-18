/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,oWalls)){
	instance_destroy();
}

if(place_meeting(x,y,oPlayer)){
	instance_destroy();
	oPlayer.hp-=1;
	audio_play_sound(sgetHitPlr,0,false);
}

