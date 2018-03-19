/// @description Insert description here
// You can write your code in this editor
/*randomize();

iPatrolspd = 6;
iTargetspd = 6;
iTimer = 100;
iMaxspeed = 15;
//motion_set(choose(90, 270), iPatrolspd);

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
iSharkRange = 150;
bAfter = false;
bCaughtNet = false;
bCaughtNetSnake = false;
iCaughtTimer = 100;
iInvCounter = 0;
bCaughtNetSnakeRand = false;
iCaughtTimerSnakeRand = 100;
iInvCounterSnakeRand = 0;
bCaughtOnce = false;
iNetNearestRand = instance_nearest(self.x,self.y,objNetRand);