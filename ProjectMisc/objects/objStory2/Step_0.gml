/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(vk_anykey)
   {
   bAnyKeyPressed = 1;
   }

if bAnyKeyPressed == 0
   {
   image_alpha = min(image_alpha + 0.02, 1);
   }
   
if bAnyKeyPressed == 1
   {
   image_alpha = max(image_alpha - 0.02, 0);
   if image_alpha == 0
      {
	  room_goto_next();
	  }
   }