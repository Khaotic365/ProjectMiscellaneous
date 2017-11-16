//Setting up keyboard controls for player

if (keyboard_check(vk_right)) x = x + iSpd;
	if (keyboard_check(vk_right)) image_xscale = +1
if (keyboard_check(vk_left)) x = x - iSpd;
	if (keyboard_check(vk_left)) image_xscale = -1
if (keyboard_check(vk_up)) y = y - iSpd;
if (keyboard_check(vk_down)) y = y + iSpd;

iSlowTimer -= 1;

if bSpeedDecrease == true && iSlowTimer >= 0
{
	iSpd = 1;
}
else
{
bSpeedDecrease = false;
iSpd = 4;
objCurrentNet.bCaughtPlayer = false;
}

if objCurrentNet != objPlayer && objCurrentNet.bCanCollide ==  true
{
solid = true;
}

/*
if bSharkCollide == true
{
	solid = false;
	image_alpha = .35;
}
*/

if iCollideTimer > 0
{
	iCollideTimer -= 1;
	solid = false;
	image_alpha = .35;
}
	
if iCollideTimer <= 0
{
	solid = true;
	image_alpha = 1;
//	bSharkCollide = false;
//	iCollideTimer = 60;
}

if (iHp <= 0) 
{
room_goto(rmGameOver);
}

/*
if iCollideTimer == 60 && bSharkCollide == true
{
	iHp -= 1;
}
*/

//Debug
//show_debug_message(objCurrentNet);
//show_debug_message(solid);