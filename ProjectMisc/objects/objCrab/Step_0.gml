/// @description Insert description here
// You can write your code in this editor

if bForward == true
{
   move_towards_point(room_width, iStarty, iPatrolspd);
   image_xscale = 1;
   if distance_to_point(room_width, iStarty) == 0
   {
      bBackward = true;
	  bForward = false;
	  bSwitch = true;
   }
}

if bBackward == true
{
   move_towards_point(0, iStarty, iPatrolspd);
   image_xscale = -1;
   if distance_to_point(0, iStarty) == 0
   {
      bForward = true;
	  bBackward = false;
	  bSwitch = false;
   }
}

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

if bJumping == true
{
	if distance_to_point(x, iJumppoint) == 0
	{
		bJumping = false;
		bFalling = true;
		move_towards_point(x, iStarty, 20);
	}
}

if bFalling == true
{
	if distance_to_point(x, iStarty) == 0 && bSwitch == 0
	{
		bFalling = false;
		bForward = 1;
	}	
	if distance_to_point(x, iStarty) == 0 && bSwitch == 1
	{
		bFalling = false;
		bBackward = 1;
	}
}

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
//show_debug_message("TimerTimerTimer");
//show_debug_message(timer2);
//show_debug_message("Jump point: " + string(jumppoint));
//show_debug_message("Start Y: " + string(starty));