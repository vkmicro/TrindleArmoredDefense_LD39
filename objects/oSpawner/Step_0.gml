/// @description Insert description here
// You can write your code in this editor
//if(age mod 60==0){
//	instance_create_depth(100,100,0,oEnemy);
//}
age++;
//by having it all in a switch statement i can easily control the amount of enemies spawning... xD

switch(flagAmount){
	case 0: 
	if(instance_number(oEnemy)<10){
		if (age mod 400 == 1){
			instance_create_depth(oTeleporter1.x,oTeleporter1.y,0,oEnemy); 
			instance_create_depth(oTeleporter4.x,oTeleporter4.y,0,oEnemy);
		}
		if (age mod 500 == 1){
			instance_create_depth(oTeleporter3.x,oTeleporter3.y,0,oEnemy);
			instance_create_depth(oTeleporter5.x,oTeleporter5.y,0,oEnemy);
		}
		if(age mod 700 == 1){
			instance_create_depth(oTeleporter3.x,oTeleporter3.y,0,oEnemy2);
			instance_create_depth(oTeleporter5.x,oTeleporter5.y,0,oEnemy1);
		}
	};break;
	///////////////////
	case 1: 
	if(instance_number(oEnemy)<15){
		if(age mod 300 == 1){
			instance_create_depth(oTeleporter5.x,oTeleporter5.y,0,oEnemy);
		}
		if (age mod 400 == 1){
			instance_create_depth(oTeleporter1.x,oTeleporter1.y,0,oEnemy); 
			instance_create_depth(oTeleporter4.x,oTeleporter4.y,0,oEnemy);
		}
		if (age mod 500 == 1){
			instance_create_depth(oTeleporter3.x,oTeleporter3.y,0,oEnemy2);
			instance_create_depth(oTeleporter2.x,oTeleporter2.y,0,oEnemy);
		}
	};break;
	//////////////////////
	case 2: 
	if(instance_number(oEnemy)<25){
		if(age mod 200 == 1){
			instance_create_depth(oTeleporter2.x,oTeleporter2.y,0,oEnemy); 
		}
		if (age mod 400 == 1){
			instance_create_depth(oTeleporter3.x,oTeleporter3.y,0,oEnemy); 
			instance_create_depth(oTeleporter4.x,oTeleporter4.y,0,oEnemy);
			instance_create_depth(oTeleporter3.x,oTeleporter3.y,0,oEnemy1);
		}
		if (age mod 600 == 1){
			instance_create_depth(oTeleporter1.x,oTeleporter1.y,0,oEnemy);
			instance_create_depth(oTeleporter5.x,oTeleporter5.y,0,oEnemy);
			instance_create_depth(oTeleporter3.x,oTeleporter3.y,0,oEnemy2);
		}
	};break;
	/////////////////////////
	case 3: 
	if(instance_number(oEnemy)<50){
		if(age mod 180 == 1){
			instance_create_depth(oTeleporter4.x,oTeleporter4.y,0,oEnemy); 
		}
		if (age mod 250 == 1){
			instance_create_depth(oTeleporter2.x,oTeleporter2.y,0,oEnemy1); 
			instance_create_depth(oTeleporter3.x,oTeleporter3.y,0,oEnemy1);
		}
		if (age mod 400 == 1){
			instance_create_depth(oTeleporter1.x,oTeleporter1.y,0,oEnemy2);
			instance_create_depth(oTeleporter5.x,oTeleporter5.y,0,oEnemy2);
		}
	};break;
	/////////////////////////
	case 4: if(instance_number(oEnemy)<100){
		if(age mod 200 == 1){
			instance_create_depth(oTeleporter2.x,oTeleporter2.y,0,oEnemy1); 
		}
		if (age mod 300 == 1){
			instance_create_depth(oTeleporter3.x,oTeleporter3.y,0,oEnemy1); 
			instance_create_depth(oTeleporter4.x,oTeleporter4.y,0,oEnemy2);
			instance_create_depth(oTeleporter1.x,oTeleporter1.y,0,oEnemy2);
			instance_create_depth(oTeleporter5.x,oTeleporter5.y,0,oEnemy2);
		}
		if (age mod 700 == 1){
			instance_create_depth(oTeleporter3.x,oTeleporter3.y,0,oEnemy1); 
			instance_create_depth(oTeleporter4.x,oTeleporter4.y,0,oEnemy1);
			instance_create_depth(oTeleporter1.x,oTeleporter1.y,0,oEnemy1);
			instance_create_depth(oTeleporter5.x,oTeleporter5.y,0,oEnemy1);
		}
	};break;
	case 5: room_goto(rGameOverWIN); break;

}

//delete later
show_debug_message(flagAmount);

//switch statements to control the amount of enemies spawning
switch(age){
	case 2000: flagAmount=1;break;
	case 4000: flagAmount=2;break;
	case 8000: flagAmount=3;break;
	case 16000: flagAmount=4;break;
	case 24000: flagAmount=5;//WIN! REINFORCEMENTS HAVE ARRIVED! (8 almost 9 minutes)
}


//show_debug_message(age);
//show_debug_message(flagAmount);

/*
if(flagAmount==0){
	if(instance_number(oEnemy)<10){
		if (age mod 300 == 1){
			instance_create_depth(oTeleporter1.x,oTeleporter1.y,0,oEnemy); 
			instance_create_depth(oTeleporter4.x,oTeleporter4.y,0,oEnemy);
		}
		if (age mod 400 == 1){
			instance_create_depth(oTeleporter3.x,oTeleporter3.y,0,oEnemy);
			instance_create_depth(oTeleporter6.x,oTeleporter6.y,0,oEnemy);
		}
	}
}











