//Creating hitpoints for player

iDashTimer = 10;
iTimesUp = 1;
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