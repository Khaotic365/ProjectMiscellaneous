/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(vk_anykey)
   {
   bAnyKeyPressed = true;
   }

//If no key has been pressed, the storyboard fades in

if bAnyKeyPressed == false
   {
   image_alpha = min(image_alpha + fFadeSpeed, 1);
   }
   
//If a keyr has been pressed, the storyboard fades out
   
if bAnyKeyPressed == true
   {
   image_alpha = max(image_alpha - fFadeSpeed, 0);
   if image_alpha == 0
      {
	  room_goto_next();
	  }
   }