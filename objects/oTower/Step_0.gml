/// @description 
age++;

//TODO make a circle around tower within which the player heals
//TODO as player gets healed, power in the tower goes down, 2 power for 1 HP

//if(age mod 20==0){
//	energy-=1;
//}

if(distance_to_object(oPlayer)<=energy+50){
	if(energy>0){
		if(oPlayer.hp<oPlayer.hpMax){
			energy-=1;
			oPlayer.hp+=1;
		}
	}
}

if(place_meeting(x,y,oPlayer)){
	if(oPlayer.x>=x){
		oPlayer.x+=2;
	}
	if(oPlayer.x<=x){
		oPlayer.x-=2;
	}
	if(oPlayer.y>=y){
		oPlayer.y+=2;
	}
	if(oPlayer.y<=y){
		oPlayer.y-=2;
	}
}

if(age==4000){
	energy+=50;
}
if(age==8000){
	energy+=70;
}
if(age==12000){
	energy+=100;
}
if(age==20000){
	energy+=70;
}