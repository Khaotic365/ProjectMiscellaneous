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
   move_towards_point(room_width, starty, spd);
   if distance_to_point(room_width, starty) == 0
   {
      backwards = 1;
	  ordinary = 0;
   }
}

if backwards == 1
{
   move_towards_point(startx, starty, spd);
   if distance_to_point(startx, starty) == 0
   {
      ordinary = 1;
	  backwards = 0;
   }
}

if follow == 1
{
   move_towards_point(objPlayer.x, objPlayer.y, spd);
}

show_debug_message(distance_to_object(objPlayer));