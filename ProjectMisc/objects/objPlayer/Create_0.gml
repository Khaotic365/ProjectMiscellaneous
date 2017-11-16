//Creating hitpoints for player

iHp = 3;

//Elliminating player if damaged below 3 hitpoints

if (iHp <= 0) instance_destroy();

iRmMinX = 0;
iRmMinY = 0;
iRmMaxX = room_width;
iRmMaxY = room_height;