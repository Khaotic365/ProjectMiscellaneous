/// @description Insert description here
// You can write your code in this editor

//If the net is supposed to be moving forward
//Move toward the end of the room

randomize();

if position_meeting(x - 64, y + 32, objCornerBotLeft)
{
	motion_set(0, iSpd);
	image_xscale = 1;
	//show_debug_message("Wall to the left");
}

if position_meeting(x + 64, y + 32, objCornerBotRight)
{
	motion_set(180, iSpd);
	image_xscale = -1;
	//show_debug_message("Wall to the right");
}

if position_meeting(x - 64, y - 32, objCornerTopLeft)
{
	motion_set(0, iSpd);
	image_xscale = 1;
}

if position_meeting(x + 64, y - 32, objCornerTopRight)
{
	motion_set(180, iSpd);
	image_xscale = -1;
}

if position_meeting(x - 64, y, objWallLeftSide1)
{
	motion_set(0, iSpd);
	image_xscale = 1;
}

/*if bFordward == true
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
*/

iNetCollisionTimer -= 1;

if iNetCollisionTimer <= 0
{
bCanCollide = true;
}

if bCaughtPlayer == false
{
    if iNetCollisionTimer == 0
	{
	image_alpha = 1;
	}
	iSpd = 10;
	//Setting the timer so that it goes from 0 to 75
	if iTimer != 75
	{
		iTimer += 1;
	}

	//If the timer is at 75 and boolean go is false (i.e. it's not time to go)
	//Set target x and y coordinates

	if iTimer == 75 && bGo == false
	{
		bGo = true;
		iTimer = 0;
	}

	//If boolean go is true (i.e. it's time to go)
	//Move toward the target x and y coordinates

	if bGo == true
	{
		if position_meeting(x - 64, y - 32, objOuterwall)
		{
			motion_set(0, iSpd);
			image_xscale = 1;
			//show_debug_message("Wall to the left");
		}

		if position_meeting(x + 64, y - 32, objOuterwall)
		{
			motion_set(180, iSpd);
			image_xscale = -1;
			//show_debug_message("Wall to the right");
		}
	}
}

if bCaughtPlayer == true
{
    if iNetCollisionTimer == 120
	{
	image_alpha = .35;
	}
	iSpd = 0;
	bCanCollide = false;
	x = objPlayer.x;
	y = objPlayer.y;
}

randomize();

if position_meeting(x - 64, y + 32, objCornerBotLeft)
{
	motion_set(0, iSpd);
	image_xscale = 1;
	//show_debug_message("Wall to the left");
}

if position_meeting(x + 64, y + 32, objCornerBotRight)
{
	motion_set(180, iSpd);
	image_xscale = -1;
	//show_debug_message("Wall to the right");
}

if position_meeting(x - 64, y - 32, objCornerTopLeft)
{
	motion_set(0, iSpd);
	image_xscale = 1;
}

if position_meeting(x + 64, y - 32, objCornerTopRight)
{
	motion_set(180, iSpd);
	image_xscale = -1;
}

if position_meeting(x - 64, y, objWallLeftSide1)
{
	motion_set(0, iSpd);
	image_xscale = 1;
}

/*if bFordward == true
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
*/

iNetCollisionTimer -= 1;

if iNetCollisionTimer <= 0
{
bCanCollide = true;
}

if bCaughtShark2 == false
{
    if iNetCollisionTimer == 0
	{
	image_alpha = 1;
	}
	iSpd = 10;
	//Setting the timer so that it goes from 0 to 75
	if iTimer != 75
	{
		iTimer += 1;
	}

	//If the timer is at 75 and boolean go is false (i.e. it's not time to go)
	//Set target x and y coordinates

	if iTimer == 75 && bGo == false
	{
		bGo = true;
		iTimer = 0;
	}

	//If boolean go is true (i.e. it's time to go)
	//Move toward the target x and y coordinates

	if bGo == true
	{
		if position_meeting(x - 64, y - 32, objOuterwall)
		{
			motion_set(0, iSpd);
			image_xscale = 1;
			//show_debug_message("Wall to the left");
		}

		if position_meeting(x + 64, y - 32, objOuterwall)
		{
			motion_set(180, iSpd);
			image_xscale = -1;
			//show_debug_message("Wall to the right");
		}
	}
}

if bCaughtShark2 == true
{
    if iNetCollisionTimer == 120
	{
	image_alpha = .35;
	}
	iSpd = 0;
	bCanCollide = false;
	x = objShark2.x;
	y = objShark2.y;
}
