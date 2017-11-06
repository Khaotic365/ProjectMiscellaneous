/// @description Insert description here
// You can write your code in this editor

if ordinary == 1
{
	move_towards_point(room_width, starty, spd);
	if distance_to_point(room_width, starty) == 0
	{
		ordinary = 0;
		backwards = 1;
	}
}

if backwards == 1
{
	move_towards_point(startx, starty, spd);
	if distance_to_point(startx, starty) == 0
	{
		backwards = 0;
		ordinary = 1;
	}
}