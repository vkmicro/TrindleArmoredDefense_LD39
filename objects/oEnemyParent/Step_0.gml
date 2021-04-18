/// @description Deals with everything an enemy has, HP and such

//if(place_meeting(x,y,oShotParent)){
//	hp-=1;
//}

//check for collision with the ultimate attack, energy discharge

if(instance_exists(oUltimateAttack)){
	if(collision_circle(oTower.x,oTower.y,oUltimateAttack.age*2,oEnemyParent,true,false)){
		//hp-=50;
		instance_destroy(self);
		audio_play_sound(sExplosion,0,false);
		global.scr+=1;
	}
}