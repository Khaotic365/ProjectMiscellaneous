/// @description Insert description here
// You can write your code in this editor

//Defining variables

randomize();

iSpd = 7;
iStartx = x - (sprite_width / 2);
iStarty = y;
bForward = true;
bBackward = false;
bGo = 0;
iTimer = 75;
bCaughtPlayer = false;
bCaughtShark2 = false;
bCanCollide = true;
iNetCollisionTimer = 0;
bStart = false;


motion_set(choose(0, 180), iSpd);

if direction == 0
{
	image_xscale = 1;
}

if direction == 180
{
	image_xscale = -1;
}
