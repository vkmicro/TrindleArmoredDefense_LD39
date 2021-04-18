/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_text_transformed(125,100,"WELCOME TO TRINDLE ARMORED DEFENSE!",3,2,0);
draw_text(125,200,"Lieutenant, our facility is under attack: ");
draw_text(125,220,"Defend the perimeter until reinforcements are available!");

draw_text(125,250,">: Top left you can see your tank's durability");
draw_text(125,270,">: Top right is your current score");
draw_text(125,290,">>: W A S D to move and SPACE to shoot. You may also stationary rotate with 78946123 on numpad");
draw_text(125,310,">>: The base can repair you, but the supplies are limited");
draw_text(125,330,">>: The base can also defend itself with a blast, activated by pressing 'F', but this consumes a lot of energy.");
draw_text(125,350,"We're counting on you Lieutenant");

draw_text(125,400,"Pick your Vehicle ");
draw_sprite(sPlayer,0,170,440);
draw_text(250,430,"press 'Q'  to select this vehicle: Durability 20, speed 3, medium fire rate");

draw_sprite(sPlayer2,0,170,500);
draw_text(250,500,"press 'E' to select this vehicle: Durability 10, speed 5, fast fire rate");



draw_text(125,560,"press 'Space' to begin or wait for the timer");
draw_text(125,600,"TIME UNTIL MISSION STARTS: ");
draw_text(375,600,timeLeft);


/////////////
if(global.tank==1){
	draw_text(105,430,">>");
}
if(global.tank==2){
	draw_text(105,490,">>");
}


