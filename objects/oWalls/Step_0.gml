/// @description Insert description here
// You can write your code in this editor

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