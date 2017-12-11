/// @description Insert description here
// You can write your code in this editor

//Defining variables

iFollowspd = 3;
iPatrolspd = 1;
iMaxspeed = 5;
bForward = false;
bFollow = false;
bDiagonal = false;
iSharkrange = 150;
bBackward = false;
iStartx = x - (sprite_width / 2);
iStarty = y;
iIterations = 0;
iTimer = 100;
iTargetspd = 10;
bAfter = false;

motion_set(choose(0, 180), iPatrolspd);

if direction == 0
{
	image_xscale = 1;
}

if direction == 180
{
	image_xscale = -1;
}