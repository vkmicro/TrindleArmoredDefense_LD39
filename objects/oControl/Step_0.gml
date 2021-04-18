/// @description deals with movement and any actions done by player


//deals with movement in the direct direction at a set speed and also handles image angle / direction facing
//TODO REDO LATER!

//TODO GET RID OF BREAKS SUCH THAT I CAN HAVE MULTIPLE BUTTONS PRESSED SAME TIME
//OR rewrite the code with simple if statements...
//switch(keyboard_key){
//	case (ord("W")): oPlayer.y-=oPlayer.spd; oPlayer.dir=1; break; 	
//	case (ord("S")): oPlayer.y+=oPlayer.spd; oPlayer.dir=3; break; 
//	case (ord("A")): oPlayer.x-=oPlayer.spd; oPlayer.dir=4; break; 
//	case (ord("D")): oPlayer.x+=oPlayer.spd; oPlayer.dir=2; break;
//}


//space to shoot...
if(keyboard_check_pressed(vk_space)){
	oPlayer.shoot=true;
}

//escape to end game
if(keyboard_check_pressed(vk_escape)){
	room_goto(rGameOver);
}

//F ultimate attack
if(oTower.energy>=50){
	if(keyboard_check_pressed(ord("F"))){
		instance_create_depth(oTower.x,oTower.y,0,oUltimateAttack);
	oTower.energy-=25;
	}
	
}

if(keyboard_check_pressed(ord("R"))){
	room_goto(rSetup); 
}


with(oTower){
	if(instance_exists(oEnemyParent) && distance_to_object(instance_nearest(x,y,oEnemyParent))<oTower.energy+30){
	
		show_debug_message(distance_to_object(oEnemyParent)); //temp
		
		if(oControl.capTimer == noone){
			oControl.capTimer=instance_create_depth(x,y,0,oTowerCapture);
			audio_play_sound(sAlert,1,true);
		}
	}else{
		instance_destroy(oControl.capTimer);
			//show_debug_message(oControl.capTimer) //TEMP
		oControl.capTimer=noone;
		audio_stop_sound(sAlert);
	}
}
/*
with(oEnemyParent){
	if(distance_to_object(oTower)<oTower.energy+50){
		if(oControl.capTimer != noone){
			oControl.capTimer=instance_create_depth(x,y,0,oTowerCapture); //only creates one
		}
	}else{
		with(oControl.capTimer){ //var holding the instance create
			instance_destroy();
			show_debug_message(capTimer); //TEMP
		}
		oControl.capTimer=noone;
	}
}
*/
