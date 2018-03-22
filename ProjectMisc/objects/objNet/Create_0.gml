/// @description Insert description here
// You can write your code in this editor

//Defining variables

//randomize();
/*
iSpd = 7;
iStartx = x - (sprite_width / 2);
iStarty = y;
bForward = true;
bBackward = false;
bGo = 0;
iTimer = 75;
bCaughtPlayer = false;
bCanCollide = true;
iNetCollisionTimer = 0;
bStart = false;


motion_set(choose(0, 180), iSpd);

if direction == 0
{
	image_xscale = 1;
}

if direction == 180
{
	image_xscale = -1;
}

sObjType = "NotWall";
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
iSharkRange = 300;
bAfter = false;
bCaughtNet = false;
iCaughtTimer = 100;
bMoveSpdCheck = false;