/// @description Insert description here
// You can write your code in this editor

//Defining variables

iSpd = 10;
iStartx = x - (sprite_width / 2);
iStarty = y;
bForward = true;
bBackward = false;

motion_set(choose(0, 180), iSpd);

if direction == 0
{
	image_xscale = 1;
}

if direction == 180
{
	image_xscale = -1;
}