/// @description Insert description here
// You can write your code in this editor
/*
bGo = true;
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
		*/ /*
		if position_meeting(x, y + 32, objOuterwall)
		{
			motion_set(random_range(0, 180), iSpd);
		}

		if position_meeting(x, y - 32, objOuterwall)
		{
			motion_set(random_range(180,260), iSpd);
		}
	}

shader_set(myShader);
draw_self();
shader_reset();
*/

randomize();
sMoveMode = "Random";

script_execute(scrNPCMovement,sMoveMode,iMoveSpd,iSpeedTimer,iTargetSpd,iJumpTimer,iStartY,bJumping,bFalling,iMinSpeed,iMaxSpeed,bAfter)//,instLeftColl,instRightColl);
