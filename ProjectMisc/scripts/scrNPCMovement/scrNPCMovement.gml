 randomize();
iFollowspd = 2;

//if !is_undefined(instance_position(x - 32, y, all)).sObjType
//{
if position_meeting(x - 64, y, all)
{
instLeftColl = instance_position(x - 64, y, all);
}
if position_meeting(x - 64, y - 64, all)
{
instTopLeftColl = instance_position(x - 64, y - 64, all);
}
if position_meeting(x - 64, y + 64, all)
{
instBotLeftColl = instance_position(x - 64, y + 64, all);
}
//}
//if !is_undefined(instance_position(x + 32, y, all)).sObjType
//{
if position_meeting(x + 64, y, all)
{
instRightColl = instance_position(x + 64, y, all);
}
if position_meeting(x + 64, y - 64, all)
{
instTopRightColl = instance_position(x + 64, y - 64, all);
}
if position_meeting(x + 64, y + 64, all)
{
instBotRightColl = instance_position(x + 64, y + 64, all);
}
//}
if position_meeting(x, y - 64, all)
{
instTopColl = instance_position(x, y - 64, all);
}
if position_meeting(x, y + 64, all)
{
instBotColl = instance_position(x, y + 64, all);
}

if sMoveMode == "BackForth"
{
	if speed == 0
	{
		motion_set(choose(0, 180), random_range(iMinSpeed,iMaxSpeed));
	}
	
	if direction > 270 || direction < 90
	{
		image_xscale = -1;
	}
	if direction > 90 && direction < 270
	{
		image_xscale = 1;
	}
	
	if position_meeting(x - 64, y, all)
	{
	if instLeftColl.sObjType == "Wall"
	{ 
		motion_set(0, iMoveSpd);
		image_xscale = -1;
	}
	}
	if position_meeting(x + 64, y, all)
	{
	if instRightColl.sObjType == "Wall"
	{
		motion_set(180, iMoveSpd);
		image_xscale = 1;
	}
	}
	//if instance_position(x - 32, y, all).sObjType == "NotWall" || instance_position(x + 32, y, all).sObjType == "NotWall"
	//{
	//	speed = iMoveSpd;
	//}
	
	
	if iSpeedTimer != 0
	{
		iSpeedTimer -= 1;
	}
	
	if iSpeedTimer == 0
	{
		iTargetSpd = random_range(iMinSpeed,iMaxSpeed);
		iSpeedTimer = 100;
	}
	
	if iMoveSpd != iTargetSpd
	{
		while iMoveSpd < iTargetSpd
		{
			iMoveSpd += .5;
			speed = iMoveSpd;
		}
		while iMoveSpd > iTargetSpd
		{
			iMoveSpd -= .5;
			speed = iMoveSpd;
		}
	}
	
}

//show_debug_message(iSpeedTimer);
//show_debug_message(speed);

if sMoveMode == "Jump"
{
	if speed == 0
	{
		motion_set(choose(0, 180), random_range(iMinSpeed,iMaxSpeed));
	}
	
	if position_meeting(x - 64, y, all)
	{
	if instLeftColl.sObjType == "Wall"
	{ 
		motion_set(0, iMoveSpd);
		image_xscale = -1;
	}
	}
	if position_meeting(x + 64, y, all)
	{
	if instRightColl.sObjType == "Wall"
	{
		motion_set(180, iMoveSpd);
		image_xscale = 1;
	}
	}
	//if instance_position(x - 32, y, all).sObjType == "NotWall" || instance_position(x + 32, y, all).sObjType == "NotWall"
	//{
	//	speed = iMoveSpd;
	//}
	
	if iSpeedTimer != 0
	{
		iSpeedTimer -= 1;
	}
	
	if iSpeedTimer == 0
	{
		iTargetSpd = random_range(iMinSpeed,iMaxSpeed);
		iSpeedTimer = 100;
	}
	
	if iJumpTimer != 0
	{
		iJumpTimer -= 1;
	}
	
	if iJumpTimer == 0
	{
		iJumpTimer = 125;
		bJumping = true;
		//bForward = false;
		//bBackward = false;
		move_towards_point(x, iJumpPoint, 20);
	}
	
	if bJumping == true
	{
		if point_distance(x, y, x, iJumpPoint) == 0
		{
			bJumping = false;
			bFalling = true;
			move_towards_point(x, iStartY, 20);
		}
	}
	
	if bFalling == true
	{
		if point_distance(x, y, x, iStartY) == 0
		{
			speed = 0;
			bFalling = false;
			motion_set(choose(0, 180), iMoveSpd);
		}
	}
	
	if iMoveSpd != iTargetSpd
	{
		if iMoveSpd < iTargetSpd
		{
			iMoveSpd += .5;
		}
		if iMoveSpd > iTargetSpd
		{
			iMoveSpd -= .5;
		}
	}
}

if sMoveMode == "JumpWithoutMoving"
{
	//if instance_position(x - 32, y, all).sObjType == "NotWall" || instance_position(x + 32, y, all).sObjType == "NotWall"
	//{
	//	speed = iMoveSpd;
	//}
	
	if iJumpTimer != 0
	{
		iJumpTimer -= 1;
	}
	
	if iJumpTimer == 0
	{
		iJumpTimer = 70;
		bJumping = true;
		//bForward = false;
		//bBackward = false;
		move_towards_point(x, iJumpPoint, 20);
	}
	
	if bJumping == true
	{
		if point_distance(x, y, x, iJumpPoint) == 0
		{
			bJumping = false;
			bFalling = true;
			move_towards_point(x, iStartY, 20);
		}
	}
	
	if bFalling == true
	{
		if point_distance(x, y, x, iStartY) == 0
		{
			speed = 0;
			bFalling = false;
		}
	}
}

if sMoveMode == "JumpWithoutMovingRand"
{
	//if instance_position(x - 32, y, all).sObjType == "NotWall" || instance_position(x + 32, y, all).sObjType == "NotWall"
	//{
	//	speed = iMoveSpd;
	//}
	
	if iJumpTimer != 0
	{
		iJumpTimer -= 1;
	}
	
	if iJumpTimer == 0
	{
		iJumpTimer = irandom_range(30, 70);
		bJumping = true;
		//bForward = false;
		//bBackward = false;
		move_towards_point(x, iJumpPoint, 20);
	}
	
	if bJumping == true
	{
		if point_distance(x, y, x, iJumpPoint) == 0
		{
			bJumping = false;
			bFalling = true;
			move_towards_point(x, iStartY, 20);
		}
	}
	
	if bFalling == true
	{
		if point_distance(x, y, x, iStartY) == 0
		{
			speed = 0;
			bFalling = false;
		}
	}
}

if sMoveMode == "Triangle"
{
	if bAfter == true
	{
		image_angle = 0;
		motion_set(choose(0, 180), iMoveSpd);
		if direction == 0
		{
			image_xscale = -1;
		}

		if direction == 180
		{
			image_xscale = 1;
		}
		bAfter = false;
	}
	if speed == 0
	{
		motion_set(choose(0, 180), random_range(iMinSpeed,iMaxSpeed));
		if direction == 0
		{
			image_xscale = -1;
		}
		if direction == 180
		{
			image_xscale = 1;
		}
	}
	
	if position_meeting(x - 64, y, all)
	{
	if instLeftColl.sObjType == "Wall"
	{ 
		motion_set(0, iMoveSpd);
		image_xscale = -1;
	}
	}
	if position_meeting(x - 64, y - 64, all)
	{
	if instTopLeftColl.sObjType == "Wall"
	{
		motion_set(0, iMoveSpd);
		image_xscale = -1;
	}
	}
	if position_meeting(x - 64, y + 64, all)
	{
	if instBotLeftColl.sObjType == "Wall"
	{
		motion_set(45, iMoveSpd);
		image_xscale = -1;
	}
	}
	if position_meeting(x + 64, y, all)
	{
	if instRightColl.sObjType == "Wall"
	{
		motion_set(215, iMoveSpd);
		image_xscale = 1;
	}
	}
	if position_meeting(x + 64, y - 64, all)
	{
	if instTopRightColl.sObjType == "Wall"
	{
		motion_set(215, iMoveSpd);
		image_xscale = 1;
	}
	}
	if position_meeting(x + 64, y + 64, all)
	{
	if instBotRightColl.sObjType == "Wall"
	{
		motion_set(135, iMoveSpd);
		image_xscale = 1;
	}
	}
	if position_meeting(x, y - 64, all)
	{
	if instTopColl.sObjType == "Wall"
	{
		motion_set(215, iMoveSpd);
		image_xscale = 1;
	}
	}
	if position_meeting(x, y + 64, all)
	{
	if instBotColl.sObjType == "Wall"
	{
		motion_set(135, iMoveSpd);
		image_xscale = 1;
	}
	}
	
	if iSpeedTimer != 0
	{
		iSpeedTimer -= 1;
	}
	
	if iSpeedTimer == 0
	{
		iTargetSpd = random_range(iMinSpeed,iMaxSpeed);
		iSpeedTimer = 100;
	}
	
	if iMoveSpd != iTargetSpd
	{
		while iMoveSpd < iTargetSpd
		{
			iMoveSpd += .5;
			speed = iMoveSpd;
		}
		while iMoveSpd > iTargetSpd
		{
			iMoveSpd -= .5;
			speed = iMoveSpd;
		}
	}
}

if sMoveMode == "Follow"
{
	bAfter = true;
	
	if position_meeting(x - 64, y, all)
	{
	if instLeftColl.sObjType == "Wall"
	{ 
		motion_set(0, iMoveSpd);
		//speed = 0;
		image_xscale = -1;
	}
	}
	else
	{
	move_towards_point(objPlayer.x, objPlayer.y, iFollowspd);
	}
	if position_meeting(x - 64, y - 64, all)
	{
	if instTopLeftColl.sObjType == "Wall"
	{
		motion_set(315, iMoveSpd);
		//speed = 0;
		image_xscale = -1;
	}
	}
	else
	{
	move_towards_point(objPlayer.x, objPlayer.y, iFollowspd);
	}
	if position_meeting(x - 64, y + 64, all)
	{
	if instBotLeftColl.sObjType == "Wall"
	{
		motion_set(45, iMoveSpd);
		//speed = 0;
		image_xscale = -1;
	}
	}
	else
	{
	move_towards_point(objPlayer.x, objPlayer.y, iFollowspd);
	}
	if position_meeting(x + 64, y, all)
	{
	if instRightColl.sObjType == "Wall"
	{
		motion_set(180, iMoveSpd);
		//speed = 0;
		image_xscale = 1;
	}
	}
	else
	{
	move_towards_point(objPlayer.x, objPlayer.y, iFollowspd);
	}
	if position_meeting(x + 64, y - 64, all)
	{
	if instTopRightColl.sObjType == "Wall"
	{
		motion_set(225, iMoveSpd);
		//speed = 0;
		image_xscale = 1;
	}
	}
	else
	{
	move_towards_point(objPlayer.x, objPlayer.y, iFollowspd);
	}
	if position_meeting(x + 64, y + 64, all)
	{
	if instBotRightColl.sObjType == "Wall"
	{
		motion_set(135, iMoveSpd);
		//speed = 0;
		image_xscale = 1;
	}
	}
	else
	{
	move_towards_point(objPlayer.x, objPlayer.y, iFollowspd);
	}
	if position_meeting(x, y - 64, all)
	{
	if instTopColl.sObjType == "Wall"
	{
		motion_set(270, iMoveSpd);
		//speed = 0;
		image_xscale = 1;
	}
	}
	else
	{
	move_towards_point(objPlayer.x, objPlayer.y, iFollowspd);
	}
	if position_meeting(x, y + 64, all)
	{
	if instBotColl.sObjType == "Wall"
	{
		motion_set(90, iMoveSpd);
		//speed = 0;
		image_xscale = 1;
	}
	}
	else
	{
	move_towards_point(objPlayer.x, objPlayer.y, iFollowspd);
	}
	
	if point_direction(x,y,objPlayer.x,objPlayer.y) > 0 && point_direction(x,y,objPlayer.x,objPlayer.y) < 90
	{
		if point_direction(x,y,objPlayer.x,objPlayer.y) > 0 && point_direction(x,y,objPlayer.x,objPlayer.y) < 25
		{
			image_angle = point_direction(x,y,objPlayer.x,objPlayer.y);
			image_xscale = -1;
			image_yscale = 1;
		}
	}
	if point_direction(x,y,objPlayer.x,objPlayer.y) > 25 && point_direction(x,y,objPlayer.x,objPlayer.y) < 90
	{
		image_angle = 25;
		image_xscale = -1;
		image_yscale = 1;
	}
	if point_direction(x,y,objPlayer.x,objPlayer.y) > 90 && point_direction(x,y,objPlayer.x,objPlayer.y) < 180
	{
		if point_direction(x,y,objPlayer.x,objPlayer.y) > 155 && point_direction(x,y,objPlayer.x,objPlayer.y) < 180
		{
			image_angle = point_direction(x,y,objPlayer.x,objPlayer.y);
			image_xscale = -1;
			image_yscale = -1;
		}
	}
	if point_direction(x,y,objPlayer.x,objPlayer.y) > 90 && point_direction(x,y,objPlayer.x,objPlayer.y) < 155
	{
		image_angle = 155;
		image_xscale = -1;
		image_yscale = -1;
	}
	if point_direction(x,y,objPlayer.x,objPlayer.y) > 180 && point_direction(x,y,objPlayer.x,objPlayer.y) < 270
	{
		if point_direction(x,y,objPlayer.x,objPlayer.y) > 180 && point_direction(x,y,objPlayer.x,objPlayer.y) < 205
		{
			image_angle = point_direction(x,y,objPlayer.x,objPlayer.y);
			image_xscale = 1;
			image_yscale = -1;
		}
	}
	if point_direction(x,y,objPlayer.x,objPlayer.y) > 205 && point_direction(x,y,objPlayer.x,objPlayer.y) < 270
	{
		image_angle = 205;
		image_xscale = 1;
		image_yscale = -1;
	}
	if point_direction(x,y,objPlayer.x,objPlayer.y) > 270 && point_direction(x,y,objPlayer.x,objPlayer.y) < 360
	{
		if point_direction(x,y,objPlayer.x,objPlayer.y) > 335 && point_direction(x,y,objPlayer.x,objPlayer.y) < 360
		{
			image_angle = point_direction(x,y,objPlayer.x,objPlayer.y);
			image_xscale = -1;
			image_yscale = 1;
		}
	}
	if point_direction(x,y,objPlayer.x,objPlayer.y) > 270 && point_direction(x,y,objPlayer.x,objPlayer.y) < 335
	{
		image_angle = 335;
		image_xscale = -1;
		image_yscale = 1;
	}

   if x >= objPlayer.x 
   {
      image_xscale = -1;
   }
   if x <= objPlayer.x 
   {
      image_xscale = -1;
   }
}

if sMoveMode == "Random"
{
	if speed == 0
	{
		motion_set(random_range(0,360), iMoveSpd);
	}
	if direction > 270 || direction < 90
	{
		image_xscale = -1;
	}
	if direction > 90 && direction < 270
	{
		image_xscale = 1;
	}
	
	
	if position_meeting(x - 64, y, all)
	{
	if instLeftColl.sObjType == "Wall"
	{ 
		motion_set(random_range(-90,90), iMoveSpd);
		//image_xscale = -1;
	}
	}
	if position_meeting(x - 64, y - 64, all)
	{
	if instTopLeftColl.sObjType == "Wall"
	{
		motion_set(random_range(-225,45), iMoveSpd);
		//image_xscale = -1;
	}
	}
	if position_meeting(x - 64, y + 64, all)
	{
	if instBotLeftColl.sObjType == "Wall"
	{
		motion_set(random_range(-45,135), iMoveSpd);
		//image_xscale = -1;
	}
	}
	if position_meeting(x + 64, y, all)
	{
	if instRightColl.sObjType == "Wall"
	{
		motion_set(random_range(90,270), iMoveSpd);
		//image_xscale = 1;
	}
	}
	if position_meeting(x + 64, y - 64, all)
	{
	if instTopRightColl.sObjType == "Wall"
	{
		motion_set(random_range(135,315), iMoveSpd);
		//image_xscale = 1;
	}
	}
	if position_meeting(x + 64, y + 64, all)
	{
	if instBotRightColl.sObjType == "Wall"
	{
		motion_set(random_range(45,225), iMoveSpd);
		//image_xscale = 1;
	}
	}
	if position_meeting(x, y - 64, all)
	{
	if instTopColl.sObjType == "Wall"
	{
		motion_set(random_range(180,360), iMoveSpd);
		//image_xscale = 1;
	}
	}
	if position_meeting(x, y + 64, all)
	{
	if instBotColl.sObjType == "Wall"
	{
		motion_set(random_range(0,180), iMoveSpd);
		//image_xscale = 1;
	}
	}
	
}

if sMoveMode == "CaughtNet"
{
	solid = false;
	speed = 0.5;
	iNetNearest = instance_nearest(self.x,self.y,objNet);
	iNetNearest.image_alpha = 0.35;
	iNetNearest.x = self.x;
	iNetNearest.y = self.y;
	iCaughtTimer -= 1;
	iInvCounter = 100;
	if iCaughtTimer <= 0
	{
		iInvCounter = 100;
		iCaughtTimer = 100;
		bCaughtNet = false;
		iNetNearest.image_alpha = 1;
		sMoveMode = "BackForth";
		iNetNearest.sMoveMode = "BackForth";
		iNetNearest.x += 0;
		iNetNearest.y += 0;
	}
	
}

if sMoveMode == "CaughtNetRand"
{
	solid = false;
	speed = 0.5;
	iNetNearestRand = instance_nearest(self.x,self.y,objNetRand);
	iNetNearestRand.image_alpha = 1;
	iNetNearestRand.x = self.x;
	iNetNearestRand.y = self.y;
	iCaughtTimerRand -= 1;
	iInvCounterRand = 100;
	bCaughtNetRand = true;
	if iCaughtTimerRand <= 0
	{
		iNetNearestRand = instance_nearest(self.x,self.y,objNetRand);
		iInvCounterRand = 100;
		iCaughtTimerRand = 100;
		bCaughtNetRand = false;
		iNetNearestRand.image_alpha = 0.35;
		sMoveMode = "BackForth";
		iNetNearestRand.sMoveMode = "Random";
		iNetNearestRand.x += 0;
		iNetNearestRand.y += 0;
	}
}
/*
else if iInvCounterRand <= 0 && bCaughtNetRand == false
{
	iNetNearestRand = instance_nearest(self.x,self.y,objNetRand);
	iNetNearestRand.image_alpha = 1;
}
*/
/*
	if sMoveMode == "CaughtBag"
{
	solid = false;
	speed = 0.5;
	iBagRand = instance_nearest(self.x,self.y,objBag);
	iBagRand.image_alpha = 0.35;
	iBagRand.x = self.x;
	iBagRand.y = self.y;
	iCaughtTimerBag -= 1;
	iInvCounterRand = 100;
	if iCaughtTimerRand <= 0
	{
		iInvCounterRand = 100;
		iCaughtTimerRand = 100;
		bBagRand = false;
		iBagRand.image_alpha = 1;
		sMoveMode = "BackForth";
		iBagRand.sMoveMode = "Random";
		iBagRand.x += 0;
		iBagRand.y += 0;
	}
}
*/
//show_debug_message(iCountTimer);

//show_debug_message(iJumpPoint);
//show_debug_message(speed);
//show_debug_message(bAfter);
//show_debug_message(iCaughtTimer);
//show_debug_message(bCaughtNet);
//show_debug_message(iInvCounter);
//show_debug_message(object_get_name(object_index));