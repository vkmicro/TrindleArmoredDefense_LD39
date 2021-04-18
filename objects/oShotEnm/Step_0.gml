/// @description Insert description here

event_inherited();

//FIX WHERE IT ONLY DESTROYS ONE BULLET NOT ALL
if(instance_exists(oUltimateAttack)){
	if(collision_circle(oTower.x,oTower.y,oUltimateAttack.age*2,oShotParentEnm,true,false)){
		instance_destroy(other);
	}
}