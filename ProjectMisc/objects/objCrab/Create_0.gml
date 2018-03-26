/// @description Insert description here
// You can write your code in this editor

//Defining variables
/*
randomize();

bForward = true;
bBackward = false;
iPatrolspd = 10;
iTargetspd = 10;
iTimer = 100;
iTimer2 = 75;
iMaxspeed = 20;
iStartx = x - (sprite_width / 2);
iStarty = y;
iJumppoint = 0;
bJumping = false;
bFalling = false;
bSwitch = false;

motion_set(choose(0, 180), iPatrolspd);
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
bCaughtNetCrab = false;
iCaughtTimerCrab = 100;
iInvCounterCrab = 0;
bCaughtNetCrabRand = false;
iCaughtTimerCrabRand = 100;
bCaughtOnce = false;
iInvCounterCrabRand = 0;

iNetNearest = instance_nearest(self.x,self.y,objNet);
iNetNearestRand = instance_nearest(self.x,self.y,objNetRand);