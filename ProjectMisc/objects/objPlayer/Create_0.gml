//Creating hitpoints for player

iHp = 3;
iSpd = 4;
iSlowTimer = 0;
bSpeedDecrease = false;
objCurrentNet = objPlayer;
bInvincible = false;
bSharkCollide = false;
iCollideTimer = 0;

//Elliminating player if damaged below 3 hitpoints

iRmMinX = 0;
iRmMinY = 0;
iRmMaxX = room_width;
iRmMaxY = room_height;