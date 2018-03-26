/// @description Insert description here
// You can write your code in this editor

//Defining variables
/*
randomize();

enemy = 0;
iSpd = 7;
iTargetx = room_width;
iTargety = room_height;
bGo = 0;
iTimer = 75;
bCaughtPlayer = false;
bCaughtShark = false;
bCanCollide = true;
bCanCollideShark = true;
iNetCollisionTimer = 0;
iNetCollisionTimerShark = 0;
bStart = false;
fRand = random_range(0,360);


motion_set(fRand, iSpd);
//show_debug_message(fRand);
*/

//objNet variables
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
bCaughtNetRand = false;
iCaughtTimerRand = 100;
iInvCounterRand = 0;
iInvCounterCrabRand = 0;
bCaughtOnce = false;
iNetDiffPlayer = objPlayer.iInvCounterPlayerRand;
//iNetDiffShark = instance_nearest(x,y,objShark2).iInvCounterRand;
//iNetDiffCrab = instance_nearest(x,y,objCrab).iInvCounterCrabRand;