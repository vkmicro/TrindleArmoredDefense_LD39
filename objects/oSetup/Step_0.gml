/// @description Insert description here
// You can write your code in this editor
age++; //subtract 1 from age
timeLeft=round((timecheck-age)/60);

if((age==timecheck)){
	room_goto(rArena);
}

if(keyboard_check(ord("Q"))){
	global.tank=1;
}
if(keyboard_check(ord("E"))){
	global.tank=2;
}

if(keyboard_check(vk_space)){
	room_goto(rArena);
}

//shows in console which tank is selected, 1 or 2
//show_debug_message(global.tank);