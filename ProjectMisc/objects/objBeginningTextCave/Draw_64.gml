/// @description Insert description here
// You can write your code in this editor

display_set_gui_size(2160,3840);

if iCountdown >= 0 && objFade.bDrawText == 1
{
	draw_set_font(fntMainSmall);
	//draw_text_transformed_colour(25,500, "Press 'K' to use keyboard controls\n and 'M' to use mouse controls.\nFor keyboard, Use WASD or Arrow Keys.\n For mouse, use Left Mouse Button.\n For keyboard, use Shift to dash.\n For mouse, use Right Mouse Button\n to dash.",1.75,1.75,0, c_green, c_green, c_green, c_green, 1);
	//draw_text_transformed_colour(25,500, "Use mouse. Left click to move. Right click to dash.",2.25,2.25,0, c_green, c_green, c_green, c_green, 1);
	draw_text_transformed_colour(25,500, "Use mouse. Left click to move. Right click to dash.",4,4,0, c_white, c_white, c_white, c_white, 1);
}