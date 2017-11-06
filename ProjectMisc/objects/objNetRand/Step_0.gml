/// @description Insert description here
// You can write your code in this editor

//Setting the timer so that it goes from 0 to 75

if iTimer != 75
{
	iTimer += 1;
}

if iTimer == 75 && bGo == false
{
	iTargetx = random_range((2 * sprite_width), (room_width - (sprite_width * 2)));
	iTargety = random_range((2 * sprite_height), (room_height - (sprite_height * 2)));
	bGo = true;
	iTimer = 0;
}

if bGo == true
{
	move_towards_point(iTargetx, iTargety, iSpd);
	if distance_to_point(iTargetx, iTargety) == 0
	{
		bGo = false;
	}
}

//Debug messages
show_debug_message("MouseX: " + string(mouse_x));
show_debug_message("MouseY: " + string(mouse_y));
show_debug_message("RoomWidth: " + string(room_width));
show_debug_message("RoomHeight: " + string(room_height));
//show_debug_message(iTimer);