/// @description Insert description here
// You can write your code in this editor
pc = (iHp / iHpmax) * 100;
draw_healthbar(14, 15, 300, 45, pc, c_black, c_red, c_lime, 0, true, true);
draw_text_transformed_colour(350,5, "Health",4,4,0, c_white, c_white, c_white, c_white, 1);
//if keyboard_check_pressed(ord("M"))
//{
pc2 = (iClickTimer / 60) * 100;
draw_healthbar(14, 55, 300, 85, pc2, c_black, c_red, c_blue, 0, true, true);
draw_text_transformed_colour(350,55, "Dash",4,4,0, c_white, c_white, c_white, c_white, 1);
//}