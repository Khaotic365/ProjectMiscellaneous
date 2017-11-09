/// @description Insert description here
// You can write your code in this editor

//If the net is supposed to be moving forward
//Move toward the end of the room

if bFordward == true
{
	move_towards_point(room_width, starty, spd);
	if distance_to_point(room_width, starty) == 0
	{
		bForward = false;
		bBackward = true;
	}
}

//If the net is supposed to be moving backward
//MOve towards the start of the room

if bBackward == true
{
	move_towards_point(startx, starty, spd);
	if distance_to_point(startx, starty) == 0
	{
		bBackward = false;
		bForward = true;
	}
}