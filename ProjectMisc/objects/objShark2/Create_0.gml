 /// @description Insert description here
// You can write your code in this editor

//Defining variables
/*
randomize();

bAfterFollow = false;
iFollowspd = 3;
iPatrolspd = 1;
iMaxspeed = 5;
bForward = false;
bFollow = false;
bDiagonal = false;
iSharkrange = 150;
bBackward = false;
iStartx = x - (sprite_width / 2);
iStarty = y;
objCurrentNetShark = other;
iIterations = 0;
iTimer = 100;
iTargetspd = 10;
bAfter = false;
fRand = random_range(0,360);

motion_set(fRand, iPatrolspd);

iSlowTimerShark = 0;
bSpeedDecreaseShark = false;

//motion_set(choose(0, 180), iPatrolspd);

if direction >= -90 && direction <= 90
{
	image_xscale = -1;
}

if direction > 90 && direction < 270
{
	image_xscale = 1;
}
*/
randomize();
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