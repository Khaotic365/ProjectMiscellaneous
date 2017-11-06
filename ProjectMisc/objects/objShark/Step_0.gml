/// @description Insert description here
// You can write your code in this editor
/*
if distance_to_object(objPlayer) != 20
{
   move_towards_point(960, 576, spd)
   
}
*/

//Checking to see if the player is within range of the shark. 
//If it is the shark will follow the player.

if distance_to_object(objPlayer) > sharkrange
{
   bForward = true;
   bFollow = false;
}

if distance_to_object(objPlayer) <= sharkrange
{
   bFollow = true;
   bForward = false;
}

//Making the shark patrol toward the right edge of the screen.

if bForward == true
{
   move_towards_point(room_width, starty, patrolspd);
   image_xscale = 1;
   if distance_to_point(room_width, starty) == 0
   {
      bDiagonal = true;
	  bForward = false;
   }
}

//Makes the shark move on a diagonal toward the center of the screen.

if bDiagonal == true
{
   move_towards_point(room_width/2, starty + room_height/5, patrolspd);
   image_xscale = -1;
   if distance_to_point(room_width/2, starty + room_height/5) == 0
   {
      bDiagonal = false;
	  bBackward = true; 
   }
   
}

//Makes the shark patrol backward to the left edge of the screen.

if bBackward == true
{
   move_towards_point(0, starty, patrolspd);
   image_xscale = -1;
   if distance_to_point(0, starty) == 0
   {
      bForward = true;
	  bBackward = false;
   }
}

//Makes the shark follow the player until he or she is out of range.

if bFollow == true
{
   move_towards_point(objPlayer.x, objPlayer.y, followspd);
   if x >= objPlayer.x 
   {
      image_xscale = -1;
   }
   if x <= objPlayer.x 
   {
      image_xscale = 1;
   }
}

//Place debug messages below
//show_debug_message(string(id) + ": " + string(distance_to_point(startx, starty)));
//show_debug_message(distance_to_object(objPlayer));