/// @description Insert description here
event_inherited();

//returns ID of everythign we're collidign with of enemyParent type
var enemyInst=instance_place(x,y,oEnemyParent);

if(enemyInst != noone){ 
	enemyInst.hp-=1;
	audio_play_sound(sGetHit,0,false);
	instance_destroy(self);
	
}