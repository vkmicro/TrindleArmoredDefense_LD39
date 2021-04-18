/// @description Insert description here

switch(oPlayer.dir){
	case 1: x=oPlayer.x; y=oPlayer.y-100;break;
	case 2: x=oPlayer.x+100;y=oPlayer.y; break;
	case 3: x=oPlayer.x; y=oPlayer.y+100;break;
	case 4: x=oPlayer.x-100;y=oPlayer.y;break;
	case 5: x=oPlayer.x-100;y=oPlayer.y-100;break;
	case 6: x=oPlayer.x+100;y=oPlayer.y-100;break;
	case 7: x=oPlayer.x-100;y=oPlayer.y+100;break;
	case 8: x=oPlayer.x+100;y=oPlayer.y+100;
}