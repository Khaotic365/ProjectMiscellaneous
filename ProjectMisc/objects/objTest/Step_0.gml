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
//if bCaughtNet == false
//{
//	sMoveMode = "BackForth";
//}

if bCaughtNet == false && bCaughtNetRand == false && distance_to_object(objPlayer) > iSharkRange
{
	sMoveMode = "Random";
}
if distance_to_object(objPlayer) <= iSharkRange
{
	sMoveMode = "Follow";
}

iInvCounter -= 1;
iInvCounterRand -= 1;

script_execute(scrNPCMovement,sMoveMode,iMoveSpd,iSpeedTimer,iTargetSpd,iJumpTimer,iStartY,bJumping,bFalling,iMinSpeed,iMaxSpeed,bAfter,iCaughtTimer,bCaughtNet,iInvCounter,bCaughtNetRand,iCaughtTimerRand,iInvCounterRand)//,instLeftColl,instRightColl)

//show_debug_message(iInvCounter);

