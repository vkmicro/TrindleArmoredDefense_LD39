/// @description Insert description here
// You can write your code in this editor
if(oPlayer.hp<=0){
	room_instance_clear(rArena); 
	room_goto(rGameOver);
	audio_play_sound(sExplodingPlayer,1,false)
	
}
