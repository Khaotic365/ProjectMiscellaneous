/// @description Insert description here
// You can write your code in this editor

if bFordward == true
{
	move_towards_point(room_width, starty, spd);
	if distance_to_point(room_width, starty) == 0
	{
		bForward = false;
		bBackward = true;
	}
}

if bBackward == true
{
	move_towards_point(startx, starty, spd);
	if distance_to_point(startx, starty) == 0
	{
		bBackward = false;
		bForward = true;
	}
}