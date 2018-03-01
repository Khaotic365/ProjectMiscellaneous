/// @description Insert description here
// You can write your code in this editor

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