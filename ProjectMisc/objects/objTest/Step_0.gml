/// @description Insert description here
// You can write your code in this editor
/*
if distance_to_object(objPlayer) > iSharkRange
{
	sMoveMode = "Triangle";
}
if distance_to_object(objPlayer) <= iSharkRange
{
	sMoveMode = "Follow";
}
*/

//sMoveMode = "BackForth";
//sMoveMode = "Jump";
if bCaughtNet == false
{
	sMoveMode = "BackForth";
}

iInvCounter -= 1;

script_execute(scrNPCMovement,sMoveMode,iMoveSpd,iSpeedTimer,iTargetSpd,iJumpTimer,iStartY,bJumping,bFalling,iMinSpeed,iMaxSpeed,bAfter,iCaughtTimer,bCaughtNet,iInvCounter)//,instLeftColl,instRightColl)

show_debug_message(iInvCounter);

