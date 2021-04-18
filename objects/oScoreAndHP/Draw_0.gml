/// @description Insert description here
// You can write your code in this editor

//TODO Draw score on TOP RIGHT
//TODO Draw HP on TOP LEFT
draw_set_color(c_white);
draw_text(40,30,"Durability:")
draw_text(150,30,oPlayer.hp);
draw_text(170,30,"/");
draw_text(180,30,oPlayer.hpMax);

draw_text(950,30,"Score:")
draw_text(1050,30,global.scr);

