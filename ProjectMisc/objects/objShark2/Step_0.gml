   /// @description Insert description here
// You can write your code in this editor
/*
if distance_to_object(objPlayer) != 20
{
   move_towards_point(960, 576, spd)
   
}
*/

/*
if patrolspd <= maxspeed
{
   patrolspd += .1;
}

if patrolspd == maxspeed && iterations == 10
{
   patrolspd = maxspeed / 5;
}
else
{
  iterations += 1;
}
*/

//Set timer so that the shark will change speeds over time

randomize();

//image_angle = point_direction(x,y,objPlayer.x,objPlayer.y)

if iTimer != 0
{
   iTimer -= 1;
}

if iTimer == 0
{
   iTargetspd = random_range(1, iMaxspeed);
   iTimer = 100;
}

//Setting the patrol speed gradually to target speed

if iPatrolspd != iTargetspd
{
   if iPatrolspd <= iTargetspd
   {
      iPatrolspd += .5;
   }
   if iPatrolspd >= iTargetspd
   {
      iPatrolspd -= .5;
   }
}

//Checking to see if the shark is within rnage of the player

if distance_to_object(objPlayer) > iSharkrange
{
	bForward = true;
	bFollow = false;
	if bAfterFollow == true
	{
		image_angle = 0;
		image_xscale = 1;
		bAfterFollow = false;
	}
	if bAfter == true
	{
		motion_set(choose(0, 180), iPatrolspd);
		if direction == 0
		{
			image_xscale = -1;
		}

		if direction == 180
		{
			image_xscale = 1;
		}
		bAfter = false;
	}
	if position_meeting(x - 64, y - 32, objCornerTopLeft)
	{
		motion_set(0, iPatrolspd);
		image_xscale = -1;
		//show_debug_message("Wall to the left");
	}

	if position_meeting(x - 64, y + 32, objCornerBotLeft)
	{
		motion_set(0, iPatrolspd);
		image_xscale = -1;
		//show_debug_message("Wall to the right");
	}
	
	if position_meeting(x + 64, y - 32, objCornerTopRight)
	{
		motion_set(215, iPatrolspd);
		image_xscale = 1;
		//show_debug_message("Wall to the left");
	}

	if position_meeting(x + 64, y + 32, objCornerBotRight)
	{
		motion_set(145, iPatrolspd);
		image_xscale = 1;
		//show_debug_message("Wall to the right");
	}
	
		if position_meeting(x + 32, y, objCornerTopRight)
	{
		motion_set(215, iPatrolspd);
		image_xscale = 1;
		//show_debug_message("Wall to the left");
	}

	if position_meeting(x + 32, y, objCornerBotRight)
	{
		motion_set(145, iPatrolspd);
		image_xscale = 1;
		//show_debug_message("Wall to the right");
	}
	
	if position_meeting(x - 64, y, objWallLeftSide1)
	{
		motion_set(0, iPatrolspd);
		image_xscale = -1;
		//show_debug_message("Wall to the left");
	}
	
		if position_meeting(x - 32, y, objWallLeftSide1)
	{
		motion_set(0, iPatrolspd);
		image_xscale = -1;
		//show_debug_message("Wall to the left");
	}

	if position_meeting(x + 64, y, objWallRightSide1)
	{
		motion_set(215, iPatrolspd);
		image_xscale = 1;
		//show_debug_message("Wall to the left");
	}


	/*
	if position_meeting(x - 64, y + 32, objOuterwall)
	{
		motion_set(0, iPatrolspd);
		image_xscale = 1;
		//show_debug_message("Wall to the left");
	}

	if position_meeting(x + 64, y + 32, objOuterwall)
	{
		motion_set(215, iPatrolspd);
		image_xscale = -1;
		//show_debug_message("Wall to the right");
	}
	*/
	if position_meeting(x, y + 32, objWallBot2)
	{
		motion_set(145, iPatrolspd);
		image_xscale = 1;
	}
	
	if position_meeting(x, y - 32, objWallRoof1)
	{
		motion_set(215, iPatrolspd);
		image_xscale = 1;
	}
	
	if position_meeting(x, y - 32, objWallRoof2)
	{
		motion_set(215, iPatrolspd);
		image_xscale = 1;
	}
	
	if position_meeting(x - 32, y + 32, objCornerBarnBotLeft)
	{
		motion_set(45, iPatrolspd);
		image_xscale = -1;
	}
	
	if position_meeting(x - 32, y, objCornerBarnBotLeft)
	{
		motion_set(45, iPatrolspd);
		image_xscale = -1;
	}
	
	if position_meeting(x - 32, y - 32, objCornerBarnTopLeft)
	{
		motion_set(315, iPatrolspd);
		image_xscale = -1;
	}
	
	if position_meeting(x - 32, y, objCornerBarnTopLeft)
	{
		motion_set(315, iPatrolspd);
		image_xscale = -1;
	}
	
	if position_meeting(x + 32, y + 32, objCornerBarnBotRIght)
	{
		motion_set(135, iPatrolspd);
		image_xscale = 1;
	}
	
	if position_meeting(x + 32, y - 32, objCornerBarnTopRight)
	{
		motion_set(225, iPatrolspd);
		image_xscale = 1;
	}

}

if distance_to_object(objPlayer) <= iSharkrange
{
	bFollow = true;
	bForward = false;
}

//show_debug_message(distance_to_object(objPlayer));
//show_debug_message(bFollow);

//If the shark should be moving forward, move towards the end of the room
//If the shark reaches the end of the room it starts to go back diagonally
/*
if bForward == true
{
   move_towards_point(room_width, iStarty, iPatrolspd);
   image_xscale = 1;
   if distance_to_point(room_width, iStarty) == 0
   {
      bDiagonal = true;
	  bForward = false;
   }
}

//The shark moves diagonally to the half way point of the room

if bDiagonal == true
{
   move_towards_point(room_width/2, iStarty + room_height/5, iPatrolspd);
   image_xscale = -1;
   if distance_to_point(room_width/2, iStarty + room_height/5) == 0
   {
      bDiagonal = false;
	  bBackward = true; 
   }
   
}

//The shark moves to the beginning of the room

if bBackward == true
{
   move_towards_point(0, iStarty, iPatrolspd);
   image_xscale = -1;
   if distance_to_point(0, iStarty) == 0
   {
      bForward = true;
	  bBackward = false;
   }
}
*/
//The shark will follow the player if it gets in range

if bFollow == true
{
	bAfterFollow = true;

	if point_direction(x,y,objPlayer.x,objPlayer.y) > 0 && point_direction(x,y,objPlayer.x,objPlayer.y) < 90
{
	if point_direction(x,y,objPlayer.x,objPlayer.y) > 0 && point_direction(x,y,objPlayer.x,objPlayer.y) < 25
	{
		image_angle = point_direction(x,y,objPlayer.x,objPlayer.y);
		image_xscale = -1;
		image_yscale = 1;
	}
}
if point_direction(x,y,objPlayer.x,objPlayer.y) > 25 && point_direction(x,y,objPlayer.x,objPlayer.y) < 90
{
	image_angle = 25;
	image_xscale = -1;
	image_yscale = 1;
}
if point_direction(x,y,objPlayer.x,objPlayer.y) > 90 && point_direction(x,y,objPlayer.x,objPlayer.y) < 180
{
	if point_direction(x,y,objPlayer.x,objPlayer.y) > 155 && point_direction(x,y,objPlayer.x,objPlayer.y) < 180
	{
		image_angle = point_direction(x,y,objPlayer.x,objPlayer.y);
		image_xscale = -1;
		image_yscale = -1;
	}
}
if point_direction(x,y,objPlayer.x,objPlayer.y) > 90 && point_direction(x,y,objPlayer.x,objPlayer.y) < 155
{
	image_angle = 155;
	image_xscale = -1;
	image_yscale = -1;
}
if point_direction(x,y,objPlayer.x,objPlayer.y) > 180 && point_direction(x,y,objPlayer.x,objPlayer.y) < 270
{
	if point_direction(x,y,objPlayer.x,objPlayer.y) > 180 && point_direction(x,y,objPlayer.x,objPlayer.y) < 205
	{
		image_angle = point_direction(x,y,objPlayer.x,objPlayer.y);
		image_xscale = 1;
		image_yscale = -1;
	}
}
if point_direction(x,y,objPlayer.x,objPlayer.y) > 205 && point_direction(x,y,objPlayer.x,objPlayer.y) < 270
{
	image_angle = 205;
	image_xscale = 1;
	image_yscale = -1;
}
if point_direction(x,y,objPlayer.x,objPlayer.y) > 270 && point_direction(x,y,objPlayer.x,objPlayer.y) < 360
{
	if point_direction(x,y,objPlayer.x,objPlayer.y) > 335 && point_direction(x,y,objPlayer.x,objPlayer.y) < 360
	{
		image_angle = point_direction(x,y,objPlayer.x,objPlayer.y);
		image_xscale = -1;
		image_yscale = 1;
	}
}
if point_direction(x,y,objPlayer.x,objPlayer.y) > 270 && point_direction(x,y,objPlayer.x,objPlayer.y) < 335
{
	image_angle = 335;
	image_xscale = -1;
	image_yscale = 1;
}
	
   move_towards_point(objPlayer.x, objPlayer.y, iFollowspd);
   if x >= objPlayer.x 
   {
      image_xscale = -1;
   }
   if x <= objPlayer.x 
   {
      image_xscale = -1;
   }
   bAfter = true;
}

//if y >= 3072
//{
//	motion_set(145, iPatrolspd);
//}

//Place debug messages below
//show_debug_message(string(id) + ": " + string(distance_to_point(startx, starty)));
//show_debug_message(distance_to_object(objPlayer));
iSlowTimerShark -= 1;

if bSpeedDecreaseShark == true && iSlowTimerShark >= 0
{
	iPatrolspd = 0.5;
	iFollowspd = 0.5;
}
else
{
	bSpeedDecreaseShark = false;
	iPatrolspd = 2;
	iFollowspd = 2;
	objCurrentNetShark.bCaughtShark = false;
}

//show_debug_message(iSlowTimerShark);
//show_debug_message(bSpeedDecreaseShark);
//show_debug_message(iSpd);

if objCurrentNetShark != instance_nearest(x,y,objShark2) && objCurrentNetShark.bCanCollideShark == true
{
solid = true;
}