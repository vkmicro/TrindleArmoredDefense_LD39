/// @description deals with movement and any actions done by player


//deals with movement in the direct direction at a set speed and also handles image angle / direction facing
//TODO REDO LATER!

//TODO GET RID OF BREAKS SUCH THAT I CAN HAVE MULTIPLE BUTTONS PRESSED SAME TIME
//OR rewrite the code with simple if statements...

if(keyboard_check_pressed(vk_escape)){
	game_end();
}

if(keyboard_check_pressed(ord("R"))){
	room_goto(rSetup);
}


