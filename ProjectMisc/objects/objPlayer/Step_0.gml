  //Setting up keyboard controls for player

if (keyboard_check(vk_right)) x = x + 4;
	if (keyboard_check(vk_right)) image_xscale = +1;
if (keyboard_check(vk_left)) x = x - 4;
	if (keyboard_check(vk_left)) image_xscale = -1;
if (keyboard_check(vk_up)) y = y - 4;
if (keyboard_check(vk_down)) y = y + 4;

if (keyboard_check(ord("D"))) x = x + 4;
	if (keyboard_check(ord("D"))) image_xscale = +1;
if (keyboard_check(ord("A"))) x = x - 4;
	if (keyboard_check(ord("A"))) image_xscale = -1;
if (keyboard_check(ord("W"))) y = y - 4;
if (keyboard_check(ord("S"))) y = y + 4;

if (x <= iRmMinX) x = 0;
if (x >= iRmMaxX) x = iRmMaxX;
if y <= iRmMinY	y = 0;
if y >= iRmMaxY	y = iRmMaxY;

<<<<<<< HEAD
show_debug_message(x); 
=======
//show_debug_message(x);

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

//Debug
//show_debug_message(objCurrentNet);
//show_debug_message(solid);

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
	//solid = true;
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
>>>>>>> 56cf8b412bb517ff1b9d624b842e3ad57890398a
