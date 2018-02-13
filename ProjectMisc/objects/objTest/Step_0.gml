/// @description Insert description here
// You can write your code in this editor

if distance_to_object(objPlayer) > iSharkRange
{
	sMoveMode = "Triangle";
}
if distance_to_object(objPlayer) <= iSharkRange
{
	sMoveMode = "Follow";
}


//sMoveMode = "BackForth";
//sMoveMode = "Jump";

script_execute(scrNPCMove,sMoveMode,iMoveSpd,iSpeedTimer,iTargetSpd,iJumpTimer,iStartY,bJumping,bFalling,iMinSpeed,iMaxSpeed,bAfter)//,instLeftColl,instRightColl);
