/// @description Insert description here
// You can write your code in this editor
/*
if position_meeting(x, y + 32, objWallBot2)
{
	motion_set(90, iPatrolspd);
}

if position_meeting(x, y - 32, objCornerTopRight)
{
motion_set(270, iPatrolspd);
}
*/
/*
randomize();

if position_meeting(x - 32, y, objWallLeftSide1)
{
	motion_set(0, iPatrolspd);
	image_xscale = -1;
	//show_debug_message("Wall to the left");
}

if position_meeting(x + 32, y, objWallRightSide1)
{
	motion_set(180, iPatrolspd);
	image_xscale = 1;
	//show_debug_message("Wall to the left");
}

if position_meeting(x - 32, y, objCornerBotLeft)
{
	motion_set(0, iPatrolspd);
	image_xscale = -1;
	//show_debug_message("Wall to the right");
}

if position_meeting(x + 32, y, objCornerBotRight)
{
	motion_set(180, iPatrolspd);
	image_xscale = 1;
	//show_debug_message("Wall to the right");
}

if position_meeting(x - 32, y, objCornerTopLeft)
{
	motion_set(0, iPatrolspd);
	image_xscale = -1;
	//show_debug_message("Wall to the right");
}

if position_meeting(x + 32, y, objCornerTopRight)
{
	motion_set(180, iPatrolspd);
	image_xscale = 1;
	//show_debug_message("Wall to the right");
}

if position_meeting(x - 32, y, objCornerBarnBotLeft)
{
	motion_set(0, iPatrolspd);
	image_xscale = -1;
}

if position_meeting(x - 32, y, objCornerBarnTopLeft)
{
	motion_set(0, iPatrolspd);
	image_xscale = -1;
}

if position_meeting(x + 32, y, objCornerBarnBotRIght)
{
	motion_set(180, iPatrolspd);
	image_xscale = 1;
}

if position_meeting(x + 32, y, objCornerBarnTopRight)
{
	motion_set(180, iPatrolspd);
	image_xscale = 1;
}

if iTimer != 0
{
   iTimer -= 1;
}

if iTimer == 0
{
   iTargetspd = random_range(4, iMaxspeed);
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
*/

if bCaughtNetSnakeRand == true
{
	//bNetShark = false;
	//bFollowspdCheck = true;
	bMoveSpdCheck = true;
	
	if bMoveSpdCheck == true
	{
		iMoveSpd = 0.5;
		iMinSpeed = 0.5;
		iMaxSpeed = 0.5;
	}
	
	solid = false;
	iNetNearestRand = instance_nearest(self.x,self.y,objNetRand);
	iNetNearestRand.image_alpha = 1;
	iNetNearestRand.x = x;
	iNetNearestRand.y = y;
	iCaughtTimerSnakeRand -= 1;
	iInvCounterSnakeRand = 100;
	bCaughtNetSnakeRand = true;
	if iCaughtTimerSnakeRand <= 0
	{
		iNetNearestRand = instance_nearest(self.x,self.y,objNetRand);
		iInvCounterSnakeRand = 100;
		iCaughtTimerSnakeRand = 100;
		bCaughtNetSnakeRand = false;
		//bFollowspdCheck = false;
		iNetNearestRand.image_alpha = 0.35;
		bMoveSpdCheck = false;
		sMoveMode = "BackForth";
		iNetNearestRand.sMoveMode = "Random";
	}
}
else if iInvCounterSnakeRand <= 0 && objPlayer.iInvCounterPlayerRand <= 0
{
	iNetNearestRand.image_alpha = 1;
	//bNetShark = true;
}


if bCaughtNetSnake == false && bCaughtNetSnakeRand == false
{
	sMoveMode = "BackForth";
}

//iInvCounter -= 1;
iSnakeNearest = instance_nearest(objPlayer.x,objPlayer.y,objSnake)
iSnakeNearest.iInvCounterSnakeRand -= 1;

show_debug_message(iInvCounterSnakeRand);

script_execute(scrNPCMovement,sMoveMode,iMoveSpd,iSpeedTimer,iTargetSpd,iJumpTimer,iStartY,bJumping,bFalling,iMinSpeed,iMaxSpeed,bAfter,iCaughtTimer,bCaughtNet,iInvCounter,bCaughtNetSnakeRand,iCaughtTimerSnakeRand,iInvCounterSnakeRand, bCaughtOnce, bMoveSpdCheck)
