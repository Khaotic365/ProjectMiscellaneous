/// @description Insert description here
// You can write your code in this editor
/*
if distance_to_object(objPlayer) != 20
{
   move_towards_point(960, 576, spd)
   
}
*/
if distance_to_object(objPlayer) > sharkrange
{
   ordinary = 1;
   follow = 0;
}

if distance_to_object(objPlayer) <= sharkrange
{
   follow = 1;
   ordinary = 0;
}

if ordinary == 1
{
   move_towards_point(room_width, starty, patrolspd);
   image_xscale = 1;
   if distance_to_point(room_width, starty) == 0
   {
      diagonal = 1;
	  ordinary = 0;
   }
}

if diagonal == 1
{
   move_towards_point(room_width/2, starty + room_height/5, patrolspd);
   image_xscale = -1;
   if distance_to_point(room_width/2, starty + room_height/5) == 0
   {
      diagonal = 0;
	  backwards = 1; 
   }
   
}

if backwards == 1
{
   move_towards_point(0, starty, patrolspd);
   image_xscale = -1;
   if distance_to_point(0, starty) == 0
   {
      ordinary = 1;
	  backwards = 0;
   }
}

if follow == 1
{
   move_towards_point(objPlayer.x, objPlayer.y, followspd);
}

//Place debug messages below
//show_debug_message(string(id) + ": " + string(distance_to_point(startx, starty)));
//show_debug_message(distance_to_object(objPlayer));