/// @description Insert description here
// You can write your code in this editor

if iCollideTimerSnake <= 0
{
	iCollideTimerSnake = 60;
	iHp -= 1;
//	bSharkCollide = true;
	audio_play_sound(sndDamage2, 0, false);
}

//if solid == true
//{
//audio_play_sound(sndDamage2, 0, false);
//}