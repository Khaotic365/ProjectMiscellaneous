/// @description Insert description here
// You can write your code in this editor


if ordinary == 1
{
   move_towards_point(room_width, starty, patrolspd);
   image_xscale = 1;
   if distance_to_point(room_width, starty) == 0
   {
      backwards = 1;
	  ordinary = 0;
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

show_debug_message(string(distance_to_point(room_width, starty)));