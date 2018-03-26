 /// @description Insert description here
// You can write your code in this editor
/*objCurrentNet = other;

if other.bCanCollide == true && other.bCaughtShark == false && other.iNetCollisionTimer <= 0 && other.iNetCollisionTimerShark <= 0
{
	other.bCaughtPlayer = true;
	other.iNetCollisionTimer = 180;
	solid = false;
	bSpeedDecrease = true;
	iSlowTimer = 60;
	audio_play_sound(sndDamage2, 0, false);
}
*/ /*
//if solid == true
//{
//audio_play_sound(sndDamage2, 0, false);
//}
*/



if iInvCounterPlayerRand <= 0 && instance_nearest(x,y,objNetRand).iNetDiffShark <= 0 //instance_nearest(x,y,objShark2).iInvCounterRand <= 0 // || instance_nearest(x,y,objShark2).bNetShark == true//&& instance_nearest(objPlayer.x,objPlayer.y,objNetRand).iInvCounterRand <= 0 //|| instance_nearest(objPlayer.x,objPlayer.y,objShark2) <= 0;
{
	bCaughtNetPlayerRand = true;
}
else
{
	solid = false;
}