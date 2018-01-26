 //Creating hitpoints for player

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
iHp = 3;
iHpmax = 3;
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