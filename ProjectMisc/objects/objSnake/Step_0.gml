/// @description Insert description here
// You can write your code in this editor
if position_meeting(x, y + 32, objOuterwall)
{
	motion_set(90, iPatrolspd);
}

if position_meeting(x, y - 32, objOuterwall)
{
motion_set(270, iPatrolspd);
}

if iTimer != 0
{
   iTimer -= 1;
}

if iTimer == 0
{
   iTargetspd = random_range(4, iMaxspeed);
   iTimer = 100;
}

//Setting the patrol speed gradually to target speed

if iPatrolspd != iTargetspd
{
   if iPatrolspd <= iTargetspd
   {
      iPatrolspd += .5;
   }
   if iPatrolspd >= iTargetspd
   {
      iPatrolspd -= .5;
   }
}