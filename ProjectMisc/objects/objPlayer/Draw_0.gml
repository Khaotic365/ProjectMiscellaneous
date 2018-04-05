/// @description Insert description here
// You can write your code in this editor
draw_self();
//effect_create_below(ef_ellipse, x, y, choose(0, 1, 2), make_colour_hsv(irandom(255), 255, 255));
//effect_create_below(ef_firework,x,y,1,c_white);
//draw_ellipse(100, 100, 300, 200, true);

if iBubbleTimer <= 0
{
	effect_create_below(ef_ellipse,x,y - 20,0,c_white);
	iBubbleTimer = 60;
}