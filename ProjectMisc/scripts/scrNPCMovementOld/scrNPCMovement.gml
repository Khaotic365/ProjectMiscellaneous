randomize();
iFollowspd = 2;

//if !is_undefined(instance_position(x - 32, y, all)).sObjType
//{
instLeftColl = instance_position(x - 32, y, all);
instTopLeftColl = instance_position(x - 32, y - 32, all);
instBotLeftColl = instance_position(x - 32, y + 32, all);
//}
//if !is_undefined(instance_position(x + 32, y, all)).sObjType
//{
instRightColl = instance_position(x + 32, y, all);
instTopRightColl = instance_position(x + 32, y - 32, all);
instBotRightColl = instance_position(x + 32, y + 32, all);
//}
instTopColl = instance_position(x, y - 32, all);
instBotColl = instance_position(x, y + 32, all);

if sMoveMode == "BackForth"
{
	if speed == 0
	{
		motion_set(choose(0, 180), random_range(iMinSpeed,iMaxSpeed));
	}
	
	if !is_undefined(instLeftColl.sObjType)
	{
	if instLeftColl.sObjType == "Wall"
	{ 
		motion_set(0, iMoveSpd);
		image_xscale = -1;
	}
	}
	if !is_undefined(instRightColl.sObjType)
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

if sMoveMode = "Jump"
{
	if speed == 0
	{
		motion_set(choose(0, 180), random_range(iMinSpeed,iMaxSpeed));
	}
	
	if !is_undefined(instLeftColl.sObjType)
	{
	if instLeftColl.sObjType == "Wall"
	{ 
		motion_set(0, iMoveSpd);
		image_xscale = -1;
	}
	}
	if !is_undefined(instRightColl.sObjType)
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
	
	if !is_undefined(instLeftColl.sObjType)
	{
	if instLeftColl.sObjType == "Wall"
	{ 
		motion_set(0, iMoveSpd);
		image_xscale = -1;
	}
	}
	if !is_undefined(instTopLeftColl.sObjType)
	{
	if instTopLeftColl.sObjType == "Wall"
	{
		motion_set(0, iMoveSpd);
		image_xscale = -1;
	}
	}
	if !is_undefined(instBotLeftColl.sObjType)
	{
	if instBotLeftColl.sObjType == "Wall"
	{
		motion_set(45, iMoveSpd);
		image_xscale = -1;
	}
	}
	if !is_undefined(instRightColl.sObjType)
	{
	if instRightColl.sObjType == "Wall"
	{
		motion_set(215, iMoveSpd);
		image_xscale = 1;
	}
	}
	if !is_undefined(instTopRightColl.sObjType)
	{
	if instTopRightColl.sObjType == "Wall"
	{
		motion_set(215, iMoveSpd);
		image_xscale = 1;
	}
	}
	if !is_undefined(instBotRightColl.sObjType)
	{
	if instBotRightColl.sObjType == "Wall"
	{
		motion_set(135, iMoveSpd);
		image_xscale = 1;
	}
	}
	if !is_undefined(instTopColl.sObjType)
	{
	if instTopColl.sObjType == "Wall"
	{
		motion_set(215, iMoveSpd);
		image_xscale = 1;
	}
	}
	if !is_undefined(instBotColl.sObjType)
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
	
   move_towards_point(objPlayer.x, objPlayer.y, iFollowspd);
   if x >= objPlayer.x 
   {
      image_xscale = -1;
   }
   if x <= objPlayer.x 
   {
      image_xscale = -1;
   }
}

//show_debug_message(iJumpPoint);
//show_debug_message(speed);
//show_debug_message(bAfter);