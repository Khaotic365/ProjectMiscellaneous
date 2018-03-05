/// @description Insert description here
// You can write your code in this editor
if bCaughtNet == false && bCaughtNetRand == false
{
	sMoveMode = "JumpWithoutMovingRand";
}

iInvCounter -= 1;
iInvCounterRand -= 1;

script_execute(scrNPCMovement,sMoveMode,iMoveSpd,iSpeedTimer,iTargetSpd,iJumpTimer,iStartY,bJumping,bFalling,iMinSpeed,iMaxSpeed,bAfter,iCaughtTimer,bCaughtNet,iInvCounter,bCaughtNetRand,iCaughtTimerRand,iInvCounterRand)