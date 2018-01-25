/// @description Insert description here
// You can write your code in this editor

//Defining variables

randomize();

iSpd = 7;
iTargetx = room_width;
iTargety = room_height;
bGo = 0;
iTimer = 75;
bCaughtPlayer = false;
bCanCollide = true;
iNetCollisionTimer = 0;
bStart = false;
fRand = random_range(0,360);

motion_set(fRand, iSpd);
//show_debug_message(fRand);
