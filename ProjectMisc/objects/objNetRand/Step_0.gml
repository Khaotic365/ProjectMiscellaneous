/// @description Insert description here
// You can write your code in this editor
iNetCollisionTimer -= 1;

if iNetCollisionTimer <= 0
{
bCanCollide = true;
}

if bCaughtPlayer == false
{
    if iNetCollisionTimer == 0
	{
	image_alpha = 1;
	}
	iSpd = 10;
	//Setting the timer so that it goes from 0 to 75
	if iTimer != 75
	{
		iTimer += 1;
	}

	//If the timer is at 75 and boolean go is false (i.e. it's not time to go)
	//Set target x and y coordinates

	if iTimer == 75 && bGo == false
	{
		iTargetx = random_range((2 * sprite_width), (room_width - (sprite_width * 2)));
		iTargety = random_range((2 * sprite_height), (room_height - (sprite_height * 2)));
		bGo = true;
		iTimer = 0;
	}

	//If boolean go is true (i.e. it's time to go)
	//Move toward the target x and y coordinates

	if bGo == true
	{
		move_towards_point(iTargetx, iTargety, iSpd);
		if distance_to_point(iTargetx, iTargety) == 0
		{
			bGo = false;
		}
	}
}

if bCaughtPlayer == true
{
    if iNetCollisionTimer == 120
	{
	image_alpha = .35;
	}
	iSpd = 0;
	bCanCollide = false;
	x = objPlayer.x;
	y = objPlayer.y;
}



//Debug messages
//show_debug_message("MouseX: " + string(mouse_x));
//show_debug_message("MouseY: " + string(mouse_y));
//show_debug_message("RoomWidth: " + string(room_width));
//show_debug_message("RoomHeight: " + string(room_height));
//show_debug_message(iTimer);
//show_debug_message(iNetCollisionTimer);