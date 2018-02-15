/// @description Insert description here
// You can write your code in this editor
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
