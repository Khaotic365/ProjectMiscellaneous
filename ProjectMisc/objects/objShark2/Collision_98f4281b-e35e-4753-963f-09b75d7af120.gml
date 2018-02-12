/// @description Insert description here
// You can write your code in this editor
objCurrentNetShark = instance_nearest(x,y,objShark2);

if other.bCanCollideShark == true && other.bCaughtPlayer == false && other.iNetCollisionTimerShark <= 0 && other.iNetCollisionTimer <= 0
{
	other.bCaughtShark = true;
	other.iNetCollisionTimerShark = 180;
	solid = false;
	bSpeedDecreaseShark = true;
	iSlowTimerShark = 60;
	audio_play_sound(sndDamage2, 0, false);
}

//if solid == true
//{
//audio_play_sound(sndDamage2, 0, false);
//}