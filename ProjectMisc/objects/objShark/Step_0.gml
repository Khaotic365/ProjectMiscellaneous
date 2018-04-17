 /// @description Insert description here
// You can write your code in this editor
/*
if distance_to_object(objPlayer) != 20
{
   move_towards_point(960, 576, spd)
   
}
*/

//Checking to see if the player is within range of the shark. 
//If it is the shark will follow the player.
/*
randomize();

if distance_to_object(objPlayer) > iSharkrange
{
   bForward = true;
   bFollow = false;
}

if distance_to_object(objPlayer) <= iSharkrange
{
   bFollow = true;
   bForward = false;
}

if position_meeting(x - 64, y - 32, objOuterwall)
{
	motion_set(0, iPatrolspd);
	image_xscale = -1;
	//show_debug_message("Wall to the left");
}

if position_meeting(x + 64, y - 32, objOuterwall)
{
	motion_set(215, iPatrolspd);
	image_xscale = 1;
	//show_debug_message("Wall to the right");
}

if position_meeting(x, y + 32, objOuterwall)
{
	motion_set(145, iPatrolspd);
}

if position_meeting(x, y - 32, objOuterwall)
{
	motion_set(215, iPatrolspd);
}

*/
//Making the shark patrol toward the right edge of the screen.

/*if bForward == true
{
   move_towards_point(room_width, iStarty, iPatrolspd);
   image_xscale = 1;
   if distance_to_point(room_width, iStarty) == 0
   {
      bDiagonal = true;
	  bForward = false;
   }
}

//Makes the shark move on a diagonal toward the center of the screen.

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

//Makes the shark patrol backward to the left edge of the screen.

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

//Makes the shark follow the player until he or she is out of range.
*/
/*
if bFollow == true
{
   move_towards_point(objPlayer.x, objPlayer.y, iFollowspd);
   if x >= objPlayer.x 
   {
      image_xscale = 1;
   }
   if x <= objPlayer.x 
   {
      image_xscale = -1;
   }
}

if y >= 768
{
	motion_set(145, iPatrolspd);
}
*/
//Place debug messages below
//show_debug_message(string(id) + ": " + string(distance_to_point(startx, starty)));
//show_debug_message(distance_to_object(objPlayer));
//show_debug_message(y);

if bCaughtNet == false && bCaughtNetRand == false && distance_to_object(objPlayer) > iSharkRange
{
	sMoveMode = "BackForthShark";
	image_yscale = 1;
}
//else if distance_to_object(objPlayer) <= iSharkRange && iInvCounterRand <= 0 && sMoveMode != "CaughtNetRand"
//{
//	sMoveMode = "Follow";
//}
//else if sMoveMode != "CaughtNetRand" && sMoveMode != "Follow" && sMoveMode != "Random" && iInvCounterRand <= 0
//{
//	iNetNearestRand = instance_nearest(self.x,self.y,objNetRand);
//	iNetNearestRand.image_alpha = 1;	
//}

//show_debug_message(instance_nearest(objPlayer.x,objPlayer.y,objShark2).iInvCounterRand);

iInvCounter -= 1;
iInvCounterRand -= 1;

script_execute(scrNPCMovement,sMoveMode,iMoveSpd,iSpeedTimer,iTargetSpd,iJumpTimer,iStartY,bJumping,bFalling,iMinSpeed,iMaxSpeed,bAfter,iCaughtTimer,bCaughtNet,iInvCounter,bCaughtNetRand,iCaughtTimerRand,iInvCounterRand,bCaughtOnce,bMoveSpdCheck)//,instLeftColl,instRightColl)
