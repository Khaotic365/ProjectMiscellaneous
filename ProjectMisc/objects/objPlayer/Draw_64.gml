/// @description Insert description here
// You can write your code in this editor
pc = (iHp / iHpmax) * 100;
draw_healthbar(14, 15, 100, 25, pc, c_black, c_red, c_lime, 0, true, true);
//if keyboard_check_pressed(ord("M"))
//{
pc2 = (iClickTimer / 60) * 100;
draw_healthbar(14, 30, 100, 40, pc2, c_black, c_red, c_blue, 0, true, true);
//}