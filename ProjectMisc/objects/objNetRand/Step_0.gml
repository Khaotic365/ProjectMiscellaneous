/// @description Insert description here
// You can write your code in this editor
randomize();
/*
iNetCollisionTimer -= 1;
iNetCollisionTimerShark -= 1;

if iNetCollisionTimer <= 0 && iNetCollisionTimerShark <= 0
{
bCanCollide = true;
}
//else
//{
//bCanCollide = false;
//}
if iNetCollisionTimerShark <= 119 //<= 60 && iNetCollisionTimerShark >= 0
{
bCaughtShark = false;
}
if iNetCollisionTimerShark <= 0 && iNetCollisionTimer <= 0
{
bCanCollideShark = true;
}
//else
//{
//bCanCollide = false;
//}
//if iNetCollisionTimerShark < 0
//{
//bCanCollideShark = true;
//}


//show_debug_message(iNetCollisionTimerShark);
//show_debug_message(iNetCollisionTimer);
//show_debug_message(iNetCollisionTimer);

if bCaughtPlayer == false && bCaughtShark == false
{
    if iNetCollisionTimer == 0
	{
	image_alpha = 1;
	bCanCollide = true;
	bCanCollideShark = true;
	}
	
	if iNetCollisionTimerShark == 0
	{
	image_alpha = 1;
	bCanCollide = true;
	bCanCollideShark = true;
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
		if position_meeting(x - 64, y, objWallLeftSide1)
		{
			motion_set(random_range(-90, 90), iSpd);
			image_xscale = 1;
			//show_debug_message("Wall to the left");
		}

		if position_meeting(x + 64, y, objWallRightSide1)
		{
			motion_set(random_range(90, 270), iSpd);
			image_xscale = -1;
			//show_debug_message("Wall to the right");
		}
		
		if position_meeting(x - 64, y + 64, objCornerBotLeft)
		{
			motion_set(random_range(-45, 135), iSpd);
			image_xscale = 1;
		}
		
		if position_meeting(x - 64, y - 64, objCornerTopLeft)
		{
			motion_set(random_range(-225, 45), iSpd);
			image_xscale = 1;
		}
		
		if position_meeting(x + 64, y + 64, objCornerBotRight)
		{
			motion_set(random_range(45, 225), iSpd);
			image_xscale = -1;
		}
		
		if position_meeting(x + 64, y - 64, objCornerTopRight)
		{
			motion_set(random_range(135, 315), iSpd);
			image_xscale = -1;
		}
		
			if position_meeting(x - 64, y + 64, objCornerBarnBotLeft)
		{
			motion_set(random_range(-45, 135), iSpd);
			image_xscale = 1;
		}
		
		if position_meeting(x - 64, y - 64, objCornerBarnTopLeft)
		{
			motion_set(random_range(-225, 45), iSpd);
			image_xscale = 1;
		}
		
		if position_meeting(x + 64, y + 64, objCornerBarnBotRIght)
		{
			motion_set(random_range(45, 225), iSpd);
			image_xscale = -1;
		}
		
		if position_meeting(x + 64, y - 64, objCornerBarnTopRight)
		{
			motion_set(random_range(135, 315), iSpd);
			image_xscale = -1;
		}
		
		if position_meeting(x, y + 64, objWallBot1)
		{
			motion_set(random_range(0, 180), iSpd);
		}
		
		if position_meeting(x, y + 64, objWallBot2)
		{
			motion_set(random_range(0, 180), iSpd);
		}
		
		if position_meeting(x, y - 64, objWallRoof1)
		{
			motion_set(random_range(180, 360), iSpd);
		}
		
		if position_meeting(x, y - 64, objWallRoof2)
		{
			motion_set(random_range(180, 360), iSpd);
		}
		
		if position_meeting(x + 64, y, objCornerBotRight)
		{
			motion_set(random_range(90, 270), iSpd);
			image_xscale = -1;
		}
		
		if position_meeting(x + 64, y, objCornerTopRight)
		{
			motion_set(random_range(90, 270), iSpd);
			image_xscale = -1;
		}
		
		if position_meeting(x + 64, y, objCornerBotLeft)
		{
			motion_set(random_range(-90, 90), iSpd);
			image_xscale = 1;
		}
		
		if position_meeting(x + 64, y, objCornerTopLeft)
		{
			motion_set(random_range(-90, 90), iSpd);
			image_xscale = 1;
		}
		
			if position_meeting(x, y + 64, objCornerBotRight)
		{
			motion_set(random_range(0, 180), iSpd);
			image_xscale = -1;
		}
		
		if position_meeting(x, y - 64, objCornerTopRight)
		{
			motion_set(random_range(180, 360), iSpd);
			image_xscale = -1;
		}
		
		if position_meeting(x, y + 64, objCornerBotLeft)
		{
			motion_set(random_range(0, 180), iSpd);
			image_xscale = 1;
		}
		
		if position_meeting(x, y - 64, objCornerTopLeft)
		{
			motion_set(random_range(180, 360), iSpd);
			image_xscale = 1;
		}
		
		/*
		if position_meeting(x - 64, y + 32, objOuterwall)
		{
			motion_set(0, iSpd);
			image_xscale = 1;
			//show_debug_message("Wall to the left");
		}

		if position_meeting(x + 64, y + 32, objOuterwall)
		{
			motion_set(215, iSpd);
			image_xscale = -1;
			//show_debug_message("Wall to the right");
		}
		*//*
		if position_meeting(x, y + 32, objOuterwall)
		{
			motion_set(random_range(0, 180), iSpd);
		}

		if position_meeting(x, y - 32, objOuterwall)
		{
			motion_set(random_range(180,260), iSpd);
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
/*
var i;

for (i = 0; i < instance_number(objShark2); i += 1)
{
	enemy[i] = instance_find(objShark2,i);
}*//*
if bCaughtShark == true
{
	if iNetCollisionTimerShark == 120
	{
	image_alpha = .35;
	}
	iSpd = 0;
	bCanCollideShark = false;
	x = instance_nearest(x,y,objShark2).x;
	y = instance_nearest(x,y,objShark2).y;
}
*/


//Debug messages
//show_debug_message("MouseX: " + string(mouse_x));
//show_debug_message("MouseY: " + string(mouse_y));
//show_debug_message("RoomWidth: " + string(room_width));
//show_debug_message("RoomHeight: " + string(room_height));
//show_debug_message(iTimer);
//show_debug_message(iNetCollisionTimer);

iNetNearestRand = instance_nearest(x,y,objNetRand);
if instance_nearest(objPlayer.x,objPlayer.y,objNetRand) == instance_nearest(instance_nearest(x,y,objShark2).x,instance_nearest(x,y,objShark2).y,objNetRand)
{
	iNetNearestRand.iNetDiffPlayer = objPlayer.iInvCounterPlayerRand;
	iNetNearestRand.iNetDiffShark = instance_nearest(x,y,objShark2).iInvCounterRand;
}
if instance_nearest(objPlayer.x,objPlayer.y,objNetRand) != instance_nearest(instance_nearest(x,y,objShark2).x,instance_nearest(x,y,objShark2).y,objNetRand)
{
	iNetNearestRand.iNetDiffPlayer = 0;
	iNetNearestRand.iNetDiffShark = 0;
}

if instance_nearest(objPlayer.x,objPlayer.y,objNetRand) == instance_nearest(instance_nearest(x,y,objSnake).x,instance_nearest(x,y,objSnake).y,objNetRand)
{
	iNetNearestRand.iNetDiffPlayer = objPlayer.iInvCounterPlayerRand;
	iNetNearestRand.iNetDiffSnake = instance_nearest(x,y,objSnake).iInvCounterSnakeRand;
}
if instance_nearest(objPlayer.x,objPlayer.y,objNetRand) != instance_nearest(instance_nearest(x,y,objSnake).x,instance_nearest(x,y,objSnake).y,objNetRand)
{
	iNetNearestRand.iNetDiffPlayer = 0;
	iNetNearestRand.iNetDiffSnake = 0;
}

if instance_nearest(objPlayer.x,objPlayer.y,objNetRand) == instance_nearest(instance_nearest(x,y,objCrab).x,instance_nearest(x,y,objCrab).y,objNetRand)
{
	iNetNearestRand.iNetDiffPlayer = objPlayer.iInvCounterPlayerRand;
	iNetNearestRand.iNetDiffCrab = instance_nearest(x,y,objCrab).iInvCounterCrabRand;
}
if instance_nearest(objPlayer.x,objPlayer.y,objNetRand) != instance_nearest(instance_nearest(x,y,objCrab).x,instance_nearest(x,y,objCrab).y,objNetRand)
{
	iNetNearestRand.iNetDiffPlayer = 0;
	iNetNearestRand.iNetDiffCrab = 0;
}

if instance_nearest(objPlayer.x,objPlayer.y,objNetRand) == instance_nearest(instance_nearest(x,y,objLobster).x,instance_nearest(x,y,objLobster).y,objNetRand)
{
	iNetNearestRand.iNetDiffPlayer = objPlayer.iInvCounterPlayerRand;
	iNetNearestRand.iNetDiffCrab = instance_nearest(x,y,objLobster).iInvCounterLobsterRand;
}
if instance_nearest(objPlayer.x,objPlayer.y,objNetRand) != instance_nearest(instance_nearest(x,y,objLobster).x,instance_nearest(x,y,objLobster).y,objNetRand)
{
	iNetNearestRand.iNetDiffPlayer = 0;
	iNetNearestRand.iNetDiffLobster = 0;
}

if instance_nearest(instance_nearest(x,y,objSnake).x,instance_nearest(x,y,objSnake).y,objNetRand) == instance_nearest(instance_nearest(x,y,objShark2).x,instance_nearest(x,y,objShark2).y,objNetRand)
{
	iNetNearestRand.iNetDiffSnake = instance_nearest(x,y,objSnake).iInvCounterSnakeRand;
	iNetNearestRand.iNetDiffShark = instance_nearest(x,y,objShark2).iInvCounterRand;
}
if instance_nearest(instance_nearest(x,y,objSnake).x,instance_nearest(x,y,objSnake.y),objNetRand) != instance_nearest(instance_nearest(x,y,objShark2).x,instance_nearest(x,y,objShark2).y,objNetRand)
{
	iNetNearestRand.iNetDiffSnake = 0;
	iNetNearestRand.iNetDiffShark = 0;
}

/*
if instance_nearest(x,y,objPlayer) != instance_nearest(x,y,objShark2)
{
	iNetNearest.iNetDiffPlayer = objPlayer.iInvCounterPlayerRand;
	iNetNearest.iNetDiffShark = instance_nearest(x,y,objShark2).iInvCounterRand;
}
*/
sMoveMode = "Random";

script_execute(scrNPCMovement,sMoveMode,iMoveSpd,iSpeedTimer,iTargetSpd,iJumpTimer,iStartY,bJumping,bFalling,iMinSpeed,iMaxSpeed,bAfter)//,instLeftColl,instRightColl);
