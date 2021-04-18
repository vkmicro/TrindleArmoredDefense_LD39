/// @description Insert description here
draw_self();
draw_set_color(c_aqua);
draw_text(x-60,y-100,"Energy:");
draw_text(x+5,y-100,energy);
draw_text(x+35,y-100,"/");
draw_text(x+40,y-100,"100");

//healing circle
draw_circle(x,y,energy+150,true);