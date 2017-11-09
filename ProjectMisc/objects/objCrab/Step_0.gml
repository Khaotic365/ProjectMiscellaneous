/// @description Insert description here
// You can write your code in this editor

if ordinary == 1
{
   move_towards_point(room_width, starty, patrolspd);
   image_xscale = 1;
   if distance_to_point(room_width, starty) == 0
   {
      backwards = 1;
	  ordinary = 0;
	  blink = 1;
   }
}

if backwards == 1
{
   move_towards_point(0, starty, patrolspd);
   image_xscale = -1;
   if distance_to_point(0, starty) == 0
   {
      ordinary = 1;
	  backwards = 0;
	  blink = 0;
   }
}

if timer != 0
{
   timer -= 1;
}

if timer == 0
{
   targetspd = random_range(0, maxspeed);
   timer = 100;
}

if timer2 != 0
{
   timer2 -= 1;
}

if timer2 == 0
{
	timer2 = 125;
	bJumping = true;
	ordinary = 0;
	backwards = 0;
	jumppoint = starty - 200;
	move_towards_point(x, jumppoint, 20);
}

if bJumping == true
{
	if distance_to_point(x, jumppoint) == 0
	{
		bJumping = false;
		bFalling = true;
		move_towards_point(x, starty, 20);
	}
}

if bFalling == true
{
	if distance_to_point(x, starty) == 0 && blink == 0
	{
		bFalling = false;
		ordinary = 1;
	}	
	if distance_to_point(x, starty) == 0 && blink == 1
	{
		bFalling = false;
		backwards = 1;
	}
}

if patrolspd != targetspd
{
   if patrolspd <= targetspd
   {
      patrolspd += .5;
   }
   if patrolspd >= targetspd
   {
      patrolspd -= .5;
   }
}

//Debug Messasges
//show_debug_message("TimerTimerTimer");
//show_debug_message(timer2);
//show_debug_message("Jump point: " + string(jumppoint));
//show_debug_message("Start Y: " + string(starty));