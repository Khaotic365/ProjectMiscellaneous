/// @description Insert description here
// You can write your code in this editor
/*objCurrentNetShark = instance_nearest(x,y,objShark2);

if other.bCanCollideShark == true
{
	other.bCaughtShark = true;
	other.iNetCollisionTimerShark = 180;
	solid = false;
	bSpeedDecreaseShark = true;
	iSlowTimerShark = 60;
	audio_play_sound(sndDamage2, 0, false);
}

*/

//if solid == true
//{
//audio_play_sound(sndDamage2, 0, false);
//}

if iInvCounter <= 0 && objPlayer.iInvCounterPlayer <= 0
{
	bCaughtNet = true;
	sMoveMode = "CaughtNet";
}
else if iInvCounter <= 0
{
	iNetNearest = instance_nearest(self.x,self.y,objNet);
	iNetNearest.image_alpha = 1;
}