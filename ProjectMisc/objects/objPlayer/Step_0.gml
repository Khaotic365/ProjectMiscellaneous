 //Setting up keyboard controls for player
/*
if (keyboard_check(vk_right)) || (keyboard_check(ord("D")))
{
	if keyboard_check_pressed(vk_space)
	{
		if i >= 0
		{
			x = x + 2*iSpd;
			i -= 1;
		}
	}
	else
	{
		x = x + iSpd;
	}
}
*/

iInvCounterPlayer -= 1;
iInvCounterPlayerRand -= 1;
iInvCounterBagRand -= 1;

//script_execute(scrNPCMovement,sMoveMode,iMoveSpd,iSpeedTimer,iTargetSpd,iJumpTimer,iStartY,bJumping,bFalling,iMinSpeed,iMaxSpeed,bAfter,iCaughtTimer,bCaughtNet,iInvCounter)//,instLeftColl,instRightColl)

if bCaughtNetPlayer == true
{
	iInvCounterPlayer = 100;
	solid = false;
	//speed = 0.5;
	iSpd = 0.5;
	iNetNearest = instance_nearest(objPlayer.x,objPlayer.y,objNet);
	iNetNearest.image_alpha = 1;
	iNetNearest.x = self.x;
	iNetNearest.y = self.y;
	iCaughtTimerPlayer -= 1;
	if iCaughtTimerPlayer <= 0
	{
		iInvCounterPlayer = 100;
		iCaughtTimerPlayer = 100;
		bCaughtNetPlayer = false;
		iNetNearest.image_alpha = 0.35;
		iNetNearest.sMoveMode = "BackForth";
		iSpd = 4;
	}
}

if bCaughtNetPlayerRand == true
{
	iInvCounterPlayerRand = 100;
	solid = false;
	//speed = 0.5;
	iSpd = 0.5;
	iNetNearestRand = instance_nearest(objPlayer.x,objPlayer.y,objNetRand);
	iNetNearestRand.image_alpha = 1;
	iNetNearestRand.x = self.x;
	iNetNearestRand.y = self.y;
	iCaughtTimerPlayerRand -= 1;
	if iCaughtTimerPlayerRand <= 0
	{
		iInvCounterPlayerRand = 100;
		iCaughtTimerPlayerRand = 100;
		bCaughtNetPlayerRand = false;
		iNetNearestRand.image_alpha = 0.35;
		iNetNearestRand.sMoveMode = "Random";
		iSpd = 4;
	}
}
else if iInvCounterPlayerRand <= 0
{
	iNetNearestRand.image_alpha = 1;
}

if bCaughtBagRand == true
{
	solid = false;
	iSpd = 1.5;
	iBagRand = instance_nearest(x,y,objBag);
	iBagRand.image_alpha = 1;
	iBagRand.x = x;
	iBagRand.y = y;
	iCaughtTimerBagRand -= 1;
	iInvCounterBagRand = 100;
	if iCaughtTimerBagRand <= 0
	{
		iInvCounterBagRand = 100;
		iCaughtTimerBagRand = 100;
		bCaughtBagRand = false;
		//bBagRand = false;
		iBagRand.image_alpha = 0.35;
		iBagRand.sMoveMode = "Random";
		iSpd = 4;
	}
}
else if iInvCounterBagRand <= 0
{
	iBagRand.image_alpha = 1;
}

//show_debug_message(iInvCounterPlayer);
//show_debug_message(iInvCounterPlayerRand);
//show_debug_message(iCaughtTimerPlayerRand);


if (keyboard_check(vk_right)) || (keyboard_check(ord("D")))
{
	//if keyboard_check_pressed(vk_shift)
	//{
	//	x = x + iSpd;
	//	image_xscale = 1;
	//	iDashTimerRight = 0;
	//	iTimesUpRight = 1;
	//}
	//if iDashTimerRight < 60 && iDashTimerRight >= 0 && iTimesUpRight == 0 && iMiddle == 1
	//{
	//	iDashTimerRight = 0;
	//	iTimesUpRight = 1;
	//	iMiddle = 0;
	//}
	if keyboard_check(vk_shift) != 1 && iDashTimerRight < 60 && iDashTimerRight >= 0 && iTimesUpRight == 0
	{
		iDashTimerRight = 0;
		iTimesUpRight = 1;
	}
	if keyboard_check(vk_shift) && iDashTimerRight >= 40 && iDashTimerLeft >= 60 && iDashTimerUp >= 60 && iDashTimerDown >= 60 && iTimesUpRight == 0
	{
		x = x + 2*iSpd;
		image_xscale = 1;
		iDashTimerRight -= 2;
		if iTimesUpRight == 0 && iDashTimerRight == 40
		{
			iTimesUpRight = 1;
			iDashTimerRight = 0;
		}
	}
	else
	{
		if iDashTimerRight < 60 && iTimesUpRight == 1
		{
			x = x + iSpd;
			image_xscale = 1;
			iDashTimerRight += 1;
			if iDashTimerRight == 60
			{
				iTimesUpRight = 0;
			}
		}
		else
		{
			if iDashTimerRight < 60
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
	if iDashTimerRight < 60 && iTimesUpRight == 1
		{
			iDashTimerRight += 1;
			if iDashTimerRight == 60
			{
				iTimesUpRight = 0;
			}
		}
}
if (keyboard_check(vk_left)) || (keyboard_check(ord("A")))
{
	if keyboard_check(vk_shift) != 1 && iDashTimerLeft < 60 && iDashTimerLeft >= 0 && iTimesUpLeft == 0
	{
		iDashTimerLeft = 0;
		iTimesUpLeft = 1;
	}
	if keyboard_check(vk_shift) && iDashTimerRight >= 60 && iDashTimerLeft >= 40 && iDashTimerUp >= 60 && iDashTimerDown >= 60 && iTimesUpLeft == 0
	{
		x = x - 2*iSpd;
		image_xscale = -1;
		iDashTimerLeft -= 2;
		if iTimesUpLeft == 0 && iDashTimerLeft == 40
		{
			iTimesUpLeft = 1;
			iDashTimerLeft = 0;
		}
	}
	else
	{
		if iDashTimerLeft < 60 && iTimesUpLeft == 1
		{
			x = x - iSpd;
			image_xscale = -1;
			iDashTimerLeft += 1;
			if iDashTimerLeft == 60
			{
				iTimesUpLeft = 0;
			}
		}
		else
		{
		if iDashTimerLeft < 60
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
	if iDashTimerLeft < 60 && iTimesUpLeft == 1
		{
			iDashTimerLeft += 1;
			if iDashTimerLeft == 60
			{
				iTimesUpLeft = 0;
			}
		}
}
if (keyboard_check(vk_up)) || (keyboard_check(ord("W")))
{
	if keyboard_check(vk_shift) != 1 && iDashTimerUp < 60 && iDashTimerUp >= 0 && iTimesUpUp == 0
	{
		iDashTimerUp = 0;
		iTimesUpUp = 1;
	}
	if keyboard_check(vk_shift) && iDashTimerRight >= 60 && iDashTimerLeft >= 60 && iDashTimerUp >= 40 && iDashTimerDown >= 60 && iTimesUpUp == 0
	{
		y = y - 2*iSpd;
		iDashTimerUp -= 2;
		if iTimesUpUp == 0 && iDashTimerUp == 40
		{
			iTimesUpUp = 1;
			iDashTimerUp = 0;
		}
	}
	else
	{
		if iDashTimerUp < 60 && iTimesUpUp == 1
		{
			y = y - iSpd;
			iDashTimerUp += 1;
			if iDashTimerUp == 60
			{
				iTimesUpUp = 0;
			}
		}
		else
		{
		if iDashTimerUp < 60
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
	if iDashTimerUp < 60 && iTimesUpUp == 1
		{
			iDashTimerUp += 1;
			if iDashTimerUp == 60
			{
				iTimesUpUp = 0;
			}
		}
}
if (keyboard_check(vk_down)) || (keyboard_check(ord("S")))
{
	if keyboard_check(vk_shift) != 1 && iDashTimerDown < 60 && iDashTimerDown >= 0 && iTimesUpDown == 0
	{
		iDashTimerDown = 0;
		iTimesUpDown = 1;
	}
	if keyboard_check(vk_shift) && iDashTimerRight >= 60 && iDashTimerLeft >= 60 && iDashTimerUp >= 60 && iDashTimerDown >= 40 && iTimesUpDown == 0
	{
		y = y + 2*iSpd;
		iDashTimerDown -= 2;
		if iTimesUpDown == 0 && iDashTimerDown == 40
		{
			iTimesUpDown = 1;
			iDashTimerDown = 0;
		}
	}
	else
	{
		if iDashTimerDown < 60 && iTimesUpDown == 1
		{
			y = y + iSpd;
			iDashTimerDown += 1;
			if iDashTimerDown == 60
			{
				iTimesUpDown = 0;
			}
		}
		else
		{
		if iDashTimerDown < 60
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
	if iDashTimerDown < 60 && iTimesUpDown == 1
		{
			iDashTimerDown += 1;
			if iDashTimerDown == 60
			{
				iTimesUpDown = 0;
			}
		}
}

//show_debug_message(iDashTimerRight);
//show_debug_message(iDashTimerLeft);
//show_debug_message(iDashTimerUp);
//show_debug_message(iDashTimerDown);

if (x <= iRmMinX) x = 0;
if (x >= iRmMaxX) x = iRmMaxX;
if y <= iRmMinY	y = 0;
if y >= iRmMaxY	y = iRmMaxY;
 
//show_debug_message(x);

if point_direction(x,y,mouse_x,mouse_y) > 270 || point_direction(x,y,mouse_x,mouse_y) < 90
{
	image_yscale = 1;
}
else
{
	image_yscale = -1;
}

image_angle = point_direction(x,y,mouse_x,mouse_y);

/*

if mouse_check_button(mb_left)
{
	move_towards_point(mouse_x,mouse_y,iSpd);
	if direction > 270 && direction < 90
	{
		image_yscale = 1;
	}
	else
	{
		image_yscale = -1;
	}
	//if x = mouse_x && y = mouse_y
	//{
	//	speed = 0;
	//}
}
else
{
	speed = 0;
}
*/

if mouse_check_button_pressed(mb_left) 
{
	iClickX = mouse_x;
	iClickY = mouse_y;
	move_towards_point(iClickX,iClickY,iSpd);
	bClicked = 0;
}
if point_distance(x,y,iClickX,iClickY) <= 5
{
	speed = 0;
	bClicked = 0;
}

if mouse_check_button_pressed(mb_right) && bCanDash == true
{
	iClickRX = mouse_x;
	iClickRY = mouse_y;
	iStartX = x;
	iStartY = y;
	move_towards_point(iClickRX,iClickRY,4*iSpd);
	bOnly = 1;
	bCanDash = false;
	iClickTimer = 0;
}
if iClickTimer < 60
{
	iClickTimer += 1;
}
if iClickTimer == 60
{
	bCanDash = true;
}
if point_distance(iStartX,iStartY,x,y) >= 120 && bOnly == 1
{
	/*move_towards_point(iClickRX,iClickRY,iSpd);
	if point_distance(x,y,iClickRX,iClickRY) <= 5
	{
		bOnly = 0;
		speed = 0;
	}
	*/
	if mouse_check_button(mb_left) || mouse_check_button_pressed(mb_left)
	{
		iClickX = mouse_x;
		iClickY = mouse_y;
		move_towards_point(iClickX,iClickY,iSpd);
		bClicked = 1;
	}
	if point_distance(x,y,iClickX,iClickY) <= 5
	{
		speed = 0;
		bOnly = 0;
		bClicked = 0;
	}
	if bClicked == 0
	{
		speed = 0;
		bOnly = 0;
	}
	else
	{
		bClicked = 0;
	}
}

//show_debug_message(iClickTimer);
//show_debug_message(bClicked);
/*
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

if objCurrentNet != objPlayer && objCurrentNet.bCanCollide == true
{
solid = true;
}
*/
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