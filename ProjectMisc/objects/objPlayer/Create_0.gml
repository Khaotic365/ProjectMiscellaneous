 //Creating hitpoints for player

sObjType = "NotWall";
bClicked = 0;
iDashTimer = 0;
bNormal = true;
iClickTimer = 0;
bCanDash = true;
bOnly = 0;
iStartX = 0;
iStartY = 0;
//iClickTimer = 60;
iMiddle = 0;
i = 10;
iClickX = 0;
iClickY = 0;
iClickRX = 0;
iClickRY = 0;
iDashTimerRight = 10;
iDashTimerLeft = 10;
iDashTimerUp = 10;
iDashTimerDown = 10;
iTimesUpRight = 1;
iTimesUpLeft = 1;
iTimesUpUp = 1;
iTimesUpDown = 1;
iHp = 10000000;
iHpmax = 10000000;
iSpd = 4;
iSlowTimer = 0;
bSpeedDecrease = false;
objCurrentNet = objPlayer;
bInvincible = false;
bSharkCollide = false;
iCollideTimer = 0;
iCollideTimer2 = 0;
iCollideTimerCrab = 0;
iCollideTimerSnake = 0;

//Elliminating player if damaged below 3 hitpoints

iRmMinX = 0;
iRmMinY = 0;
iRmMaxX = 6144;
iRmMaxY = 6144;

//Variables from objTest

randomize();
//sMoveMode = "BackForth";
//sMoveMode = "Jump";
sMoveMode = "None";
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
bCaughtNetPlayer = false;
iCaughtTimerPlayer = 100;
iInvCounterPlayer = 0;
iInvCounterPlayerRand = 0;
bCaughtNetPlayerRand = false;
iCaughtTimerPlayerRand = 100;

iNetNearest = instance_nearest(objPlayer.x,objPlayer.y,objNet);
iNetNearestRand = instance_nearest(objPlayer.x,objPlayer.y,objNetRand);

bCaughtBagRand = false;
iBagRand = instance_nearest(x,y,objBag);
iInvCounterBagRand = 0;
iCaughtTimerBagRand = 100;

//show_debug_message(iBagRand);

bNet = false;