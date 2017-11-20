/// @description Insert description here
// You can write your code in this editor

//If the crab is supposed to be moving forward
//Move toward the end of the room

/*

if bForward == true
{
   move_towards_point(room_width - 33 - sprite_width / 2, iStarty, iPatrolspd);
   image_xscale = 1;
   if distance_to_point(room_width - 33 - sprite_width / 2, iStarty) == 0
   {
      bBackward = true;
	  bForward = false;
	  bSwitch = true;
   }
}

//If the crab is supposed to be moving backward
//Move towards the start of the room

if bBackward == true
{
   move_towards_point(0 + 100 + sprite_width / 2, iStarty, iPatrolspd);
   image_xscale = -1;
   if distance_to_point(0 + 100 + sprite_width / 2, iStarty) == 0
   {
      bForward = true;
	  bBackward = false;
	  bSwitch = false;
   }
}

//show_debug_message(x);

*/

if position_meeting(x - 64, y - 32, objOuterwall)
{
	motion_set(0, iPatrolspd);
	//show_debug_message("Wall to the left");
}

if position_meeting(x + 64, y - 32, objOuterwall)
{
	motion_set(180, iPatrolspd);
	//show_debug_message("Wall to the right");
}

/*

if position_meeting(x - 64, y + 32, objOuterwall) && bJumping == false && bFalling == false
{
	//show_debug_message("Floor to the left");
}
else
{
	//show_debug_message("No floor to the left");
}

if position_meeting(x + 64, y + 32, objOuterwall) && bJumping == false && bFalling == false
{
	//show_debug_message("Floor to the right");
}
else
{
	//show_debug_message("No floor to the right");
}

*/

//Using timers to time when the crab jumps upward

if iTimer != 0
{
   iTimer -= 1;
}

if iTimer == 0
{
   iTargetspd = random_range(0, iMaxspeed);
   iTimer = 100;
}

if iTimer2 != 0
{
   iTimer2 -= 1;
}

if iTimer2 == 0
{
	iTimer2 = 125;
	bJumping = true;
	bForward = false;
	bBackward = false;
	iJumppoint = iStarty - 200;
	move_towards_point(x, iJumppoint, 20);
}

//If the crab has jumped
//Move to starting y position

if bJumping == true
{
	if point_distance(x, y, x, iJumppoint) == 0
	{
		bJumping = false;
		bFalling = true;
		move_towards_point(x, iStarty, 20);
	}
}

//If the crab is falling
//Sets crab movement to forward or backward depending on the direction it was going before jumping

if bFalling == true
{
	if point_distance(x, y, x, iStarty) == 0 //&& bSwitch == 0
	{
		speed = 0;
		bFalling = false;
		motion_set(choose(0, 180), iPatrolspd);
		//bForward = 1;
	}
	/*
	if point_distance(x, y, x, iStarty) == 0 //&& bSwitch == 1
	{
		bFalling = false;
		//bBackward = 1;
	}
	*/
}


//Setting patrol speed gradually to target speed

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

//Debug Messasges
//show_debug_message(iStarty);
//show_debug_message(y);
//show_debug_message("TimerTimerTimer");
//show_debug_message(timer2);
//show_debug_message("Jump point: " + string(jumppoint));
//show_debug_message("Start Y: " + string(starty));