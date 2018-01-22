 //Setting up keyboard controls for player

if (keyboard_check(vk_right)) || (keyboard_check(ord("D")))
{
	if keyboard_check(vk_shift) && iDashTimerRight >= 20 && iTimesUpRight == 0
	{
		x = x + 2*iSpd;
		image_xscale = 1;
		iDashTimerRight -= 1;
		if iTimesUpRight == 0 && iDashTimerRight == 20
		{
			iTimesUpRight = 1;
			iDashTimerRight = 0;
		}
	}
	else
	{
		if iDashTimerRight < 30 && iTimesUpRight == 1
		{
			x = x + iSpd;
			image_xscale = 1;
			iDashTimerRight += 1;
			if iDashTimerRight == 30
			{
				iTimesUpRight = 0;
			}
		}
		else
		{
			if iDashTimerRight < 30
			{
				x = x + iSpd;
				image_xscale = 1;
				iDashTimerRight += 1;
			}
			x = x + iSpd;
			image_xscale = 1;
		}
	}
}
else
{
	if iDashTimerRight < 30 && iTimesUpRight == 1
		{
			iDashTimerRight += 1;
			if iDashTimerRight == 30
			{
				iTimesUpRight = 0;
			}
		}
}
if (keyboard_check(vk_left)) || (keyboard_check(ord("A")))
{
	if keyboard_check(vk_shift) && iDashTimerLeft >= 20 && iTimesUpLeft == 0
	{
		x = x - 2*iSpd;
		image_xscale = -1;
		iDashTimerLeft -= 1;
		if iTimesUpLeft == 0 && iDashTimerLeft == 20
		{
			iTimesUpLeft = 1;
			iDashTimerLeft = 0;
		}
	}
	else
	{
		if iDashTimerLeft < 30 && iTimesUpLeft == 1
		{
			x = x - iSpd;
			image_xscale = -1;
			iDashTimerLeft += 1;
			if iDashTimerLeft == 30
			{
				iTimesUpLeft = 0;
			}
		}
		else
		{
		if iDashTimerLeft < 30
		{
			x = x - iSpd;
			image_xscale = -1;
			iDashTimerLeft += 1;
		}
			x = x - iSpd;
			image_xscale = -1;
		}
	}
}
else
{
	if iDashTimerLeft < 30 && iTimesUpLeft == 1
		{
			iDashTimerLeft += 1;
			if iDashTimerLeft == 30
			{
				iTimesUpLeft = 0;
			}
		}
}
if (keyboard_check(vk_up)) || (keyboard_check(ord("W")))
{
	if keyboard_check(vk_shift) && iDashTimerUp >= 20 && iTimesUpUp == 0
	{
		y = y - 2*iSpd;
		iDashTimerUp -= 1;
		if iTimesUpUp == 0 && iDashTimerUp == 20
		{
			iTimesUpUp = 1;
			iDashTimerUp = 0;
		}
	}
	else
	{
		if iDashTimerUp < 30 && iTimesUpUp == 1
		{
			y = y - iSpd;
			iDashTimerUp += 1;
			if iDashTimerUp == 30
			{
				iTimesUpUp = 0;
			}
		}
		else
		{
		if iDashTimerUp < 30
		{
			y = y - iSpd;
			iDashTimerUp += 1;
		}
			y = y - iSpd;
		}
	}
}
else
{
	if iDashTimerUp < 30 && iTimesUpUp == 1
		{
			iDashTimerUp += 1;
			if iDashTimerUp == 30
			{
				iTimesUpUp = 0;
			}
		}
}
if (keyboard_check(vk_down)) || (keyboard_check(ord("S")))
{
	if keyboard_check(vk_shift) && iDashTimerDown >= 20 && iTimesUpDown == 0
	{
		y = y + 2*iSpd;
		iDashTimerDown -= 1;
		if iTimesUpDown == 0 && iDashTimerDown == 20
		{
			iTimesUpDown = 1;
			iDashTimerDown = 0;
		}
	}
	else
	{
		if iDashTimerDown < 30 && iTimesUpDown == 1
		{
			y = y + iSpd;
			iDashTimerDown += 1;
			if iDashTimerDown == 30
			{
				iTimesUpDown = 0;
			}
		}
		else
		{
		if iDashTimerDown < 30
		{
			y = y + iSpd;
			iDashTimerDown += 1;
		}
			y = y + iSpd;
		}
	}
}
else
{
	if iDashTimerDown < 30 && iTimesUpDown == 1
		{
			iDashTimerDown += 1;
			if iDashTimerDown == 30
			{
				iTimesUpDown = 0;
			}
		}
}

show_debug_message(iDashTimerRight);
show_debug_message(iDashTimerLeft);
show_debug_message(iDashTimerUp);
show_debug_message(iDashTimerDown);

if (x <= iRmMinX) x = 0;
if (x >= iRmMaxX) x = iRmMaxX;
if y <= iRmMinY	y = 0;
if y >= iRmMaxY	y = iRmMaxY;
 
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

//show_debug_message(iSpd);

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
/*
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

show_debug_message(image_alpha);

if iCollideTimer2 > 0
{
	iCollideTimer2 -= 1;
	solid = false;
	image_alpha = .35;
}
	
if iCollideTimer2 <= 0
{
	//solid = true;
	image_alpha = 1;
//	bSharkCollide = false;
//	iCollideTimer = 60;
}
*/
/*
if iCollideTimer > 0
{
	iCollideTimer -= 1;
	solid = false;
	image_alpha = .35;
}
*/	
if iCollideTimer <= 0
{
	//solid = true;
	image_alpha = 1;
//	bSharkCollide = false;
//	iCollideTimer = 60;
}
/*
if iCollideTimer2 > 0
{
	iCollideTimer2 -= 1;
	solid = false;
	image_alpha = .35;
}
*/
if iCollideTimer2 <= 0
{
	//solid = true;
	image_alpha = 1;
//	bSharkCollide = false;
//	iCollideTimer = 60;
}

/*
if iCollideTimerCrab > 0
{
	iCollideTimerCrab -= 1;
	iCollideTimer2 -= 1;
	iCollideTimer -= 1;
	solid = false;
	image_alpha = .35;
}
*/
if iCollideTimerCrab <= 0
{
	//solid = true;
	image_alpha = 1;
//	bSharkCollide = false;
//	iCollideTimer = 60;
}

if iCollideTimerSnake <= 0
{
	//solid = true;
	image_alpha = 1;
//	bSharkCollide = false;
//	iCollideTimer = 60;
}

if iCollideTimerCrab > 0 || iCollideTimer2 > 0 || iCollideTimer > 0 || iCollideTimerSnake > 0
{
	iCollideTimerCrab -= 1;
	iCollideTimer2 -= 1;
	iCollideTimer -= 1;
	iCollideTimerSnake -= 1;
	solid = false;
	image_alpha = .35;
}

//show_debug_message(image_alpha);

if (iHp <= 0) 
{
	room_goto(rmGameOverNonStretch);
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