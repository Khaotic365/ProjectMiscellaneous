/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

//x = x + 25;
//y = y + -25;

//Elliminating player if damaged below 3 hitpoints

//scrInvulnernable(true);
/*
if iCollideTimer2 <= 0
{
	iCollideTimer2 = 60;
	iHp -= 1;
//	bSharkCollide = true;
}
*/

if iCollideTimer2 <= 0
{
	iCollideTimer = 60;
	iCollideTimer2 = 60;
	iCollideTimerCrab = 60;
	iCollideTimerSnake = 60;
	iHp -= 1;
//	bSharkCollide = true;
	audio_play_sound(sndDamage2, 0, false);
}

//Debug messages
//show_debug_message(iHp);

//if solid == true
//{
//audio_play_sound(sndDamage2, 0, false);
//}
