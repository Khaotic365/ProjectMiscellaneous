/// @description Insert description here
// You can write your code in this editor
/*objCurrentBag = other;

if other.bCanCollide == true
{
	other.bCaughtPlayer = true;
	other.iNetCollisionTimer = 180;
	solid = false;
	bSpeedDecrease = true;
	iSlowTimer = 60;
	audio_play_sound(sndDamage2, 0, false);
}
*/
if iInvCounterBagRand <= 0 //&& instance_nearest(objPlayer.x,objPlayer.y,objNetRand).iInvCounterRand <= 0 //|| instance_nearest(objPlayer.x,objPlayer.y,objShark2) <= 0;
{
	bCaughtBagRand = true;
}
else
{
	solid = false;
}