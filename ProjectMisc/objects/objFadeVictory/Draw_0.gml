/// @description Insert description here
// You can write your code in this editor
if bReappear == 1
{
	draw_set_alpha(1 - iAlpha);
	draw_set_color(c_black);
	draw_rectangle(0,0,room_width,room_height,false);
	draw_set_alpha(1);
}