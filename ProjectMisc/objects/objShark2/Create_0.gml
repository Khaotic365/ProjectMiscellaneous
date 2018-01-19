 /// @description Insert description here
// You can write your code in this editor

//Defining variables

randomize();

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
fRand = random_range(0,360);

motion_set(fRand, iPatrolspd);

//motion_set(choose(0, 180), iPatrolspd);

if direction >= -90 && direction <= 90
{
	image_xscale = -1;
}

if direction > 90 && direction < 270
{
	image_xscale = 1;
}