/// @description Insert description here
// You can write your code in this editor

//Defining variables

randomize();

bForward = true;
bBackward = false;
iPatrolspd = 10;
iTargetspd = 10;
iTimer = 100;
iTimer2 = 75;
iMaxspeed = 20;
iStartx = x - (sprite_width / 2);
iStarty = y;
iJumppoint = 0;
bJumping = false;
bFalling = false;
bSwitch = false;

motion_set(choose(0, 180), iPatrolspd);