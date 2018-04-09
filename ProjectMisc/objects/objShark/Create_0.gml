 /// @description Insert description here
// You can write your code in this editor

//Defining variables

randomize();

iFollowspd = 2;
iPatrolspd = 10;
bForward = false;
bFollow = false;
bDiagonal = false;
iSharkrange = 150;
bBackward = false;
iStartx = x - (sprite_width / 2);
iStarty = y;

/*(
motion_set(choose(0, 180), iPatrolspd);

if direction == 0
{
	image_xscale = 1;
}

if direction == 180
{
	image_xscale = -1;
}
*/
//randomize();
sMoveMode = "BackForth";
//sMoveMode = "Jump";
iMinSpeed = 2;
iMaxSpeed = 5;
iMoveSpd = random_range(iMinSpeed,iMaxSpeed);
iSpeedTimer = 100;
iTargetSpd = 4;
iJumpTimer = 125;
iStartY = y;
bJumping = false;
bFalling = false;
iJumpPoint = iStartY - 200;
//instLeftColl = 0;
//instRightColl = 0;
sObjType = "NotWall";
iSharkRange = 150;
bAfter = false;
bCaughtNet = false;
iCaughtTimer = 100;
iInvCounter = 0;
bCaughtNetRand = false;
iCaughtTimerRand = 100;
iInvCounterRand = 0;
iNetNearestRand = instance_nearest(self.x,self.y,objNetRand);
bCaughtOnce = false;

bNetShark = false;
bFollowspdCheck = false;
bMoveSpdCheck = false;