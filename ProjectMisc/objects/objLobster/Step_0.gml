/// @description Insert description here
// You can write your code in this editor

if bCaughtNetLobsterRand == true
{
	//bNetShark = false;
	iMoveSpd = 0.5;
	bFollowspdCheck = true;
	solid = false;
	speed = 0.5;
	iNetNearestRand = instance_nearest(self.x,self.y,objNetRand);
	iNetNearestRand.image_alpha = 1;
	iNetNearestRand.x = self.x;
	iNetNearestRand.y = self.y;
	iCaughtTimerLobsterRand -= 1;
	iInvCounterLobsterRand = 100;
	bCaughtNetLobsterRand = true;
	if iCaughtTimerLobsterRand <= 0
	{
		iNetNearestRand = instance_nearest(self.x,self.y,objNetRand);
		iInvCounterLobsterRand = 100;
		iCaughtTimerLobsterRand = 100;
		bCaughtNetLobsterRand = false;
		bFollowspdCheck = false;
		iNetNearestRand.image_alpha = 0.35;
		sMoveMode = "JumpWithoutMovingRand";
		iNetNearestRand.sMoveMode = "Random";
	}
}
else if iInvCounterLobsterRand <= 0 && objPlayer.iInvCounterPlayerRand <= 0
{
	iNetNearestRand.image_alpha = 1;
	//bNetShark = true;
}

if bCaughtNetLobster == false && bCaughtNetLobsterRand == false
{
	sMoveMode = "JumpWithoutMovingRand";
}

iInvCounterLobster -= 1;
iInvCounterLobsterRand -= 1;

script_execute(scrNPCMovement,sMoveMode,iMoveSpd,iSpeedTimer,iTargetSpd,iJumpTimer,iStartY,bJumping,bFalling,iMinSpeed,iMaxSpeed,bAfter,iCaughtTimerLobster,bCaughtNetLobster,iInvCounterLobster,bCaughtNetLobsterRand,iCaughtTimerLobsterRand,iInvCounterLobsterRand)