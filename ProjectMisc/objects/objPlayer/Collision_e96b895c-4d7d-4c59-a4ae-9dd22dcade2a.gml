/// @description Insert description here
// You can write your code in this editor
objCurrentBag = other;

if other.bCanCollide == true
{
	other.bCaughtPlayer = true;
	other.iNetCollisionTimer = 180;
	solid = false;
	bSpeedDecrease = true;
	iSlowTimer = 60;
	audio_play_sound(sndDamage2, 0, false);
}