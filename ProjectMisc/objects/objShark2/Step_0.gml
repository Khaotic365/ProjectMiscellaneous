/// @description Insert description here
// You can write your code in this editor
/*
if distance_to_object(objPlayer) != 20
{
   move_towards_point(960, 576, spd)
   
}
*/

/*
if patrolspd <= maxspeed
{
   patrolspd += .1;
}

if patrolspd == maxspeed && iterations == 10
{
   patrolspd = maxspeed / 5;
}
else
{
  iterations += 1;
}
*/

//Set timer so that the shark will change speeds over time

if position_meeting(x - 64, y - 32, objOuterwall)
{
	motion_set(0, iPatrolspd);
	image_xscale = 1;
	//show_debug_message("Wall to the left");
}

if position_meeting(x + 64, y - 32, objOuterwall)
{
	motion_set(215, iPatrolspd);
	image_xscale = -1;
	//show_debug_message("Wall to the right");
}

if position_meeting(x, y + 32, objOuterwall)
{
	motion_set(145, iPatrolspd);
}

if position_meeting(x, y - 32, objOuterwall)
{
	motion_set(215, iPatrolspd);
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

//Checking to see if the shark is within rnage of the player

if distance_to_object(objPlayer) > iSharkrange
{
   bForward = true;
   bFollow = false;
}

if distance_to_object(objPlayer) <= iSharkrange
{
   bFollow = true;
   bForward = false;
}

//If the shark should be moving forward, move towards the end of the room
//If the shark reaches the end of the room it starts to go back diagonally
/*
if bForward == true
{
   move_towards_point(room_width, iStarty, iPatrolspd);
   image_xscale = 1;
   if distance_to_point(room_width, iStarty) == 0
   {
      bDiagonal = true;
	  bForward = false;
   }
}

//The shark moves diagonally to the half way point of the room

if bDiagonal == true
{
   move_towards_point(room_width/2, iStarty + room_height/5, iPatrolspd);
   image_xscale = -1;
   if distance_to_point(room_width/2, iStarty + room_height/5) == 0
   {
      bDiagonal = false;
	  bBackward = true; 
   }
   
}

//The shark moves to the beginning of the room

if bBackward == true
{
   move_towards_point(0, iStarty, iPatrolspd);
   image_xscale = -1;
   if distance_to_point(0, iStarty) == 0
   {
      bForward = true;
	  bBackward = false;
   }
}
*/
//The shark will follow the player if it gets in range

if bFollow == true
{
   move_towards_point(objPlayer.x, objPlayer.y, iFollowspd);
   if x >= objPlayer.x 
   {
      image_xscale = -1;
   }
   if x <= objPlayer.x 
   {
      image_xscale = 1;
   }
}

if y >= 768
{
	motion_set(145, iPatrolspd);
}

//Place debug messages below
//show_debug_message(string(id) + ": " + string(distance_to_point(startx, starty)));
//show_debug_message(distance_to_object(objPlayer));