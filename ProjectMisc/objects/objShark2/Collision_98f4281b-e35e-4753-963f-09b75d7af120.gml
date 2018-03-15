/// @description Insert description here
// You can write your code in this editor
/*objCurrentNetShark = instance_nearest(x,y,objShark2);

if other.bCanCollideShark == true && other.bCaughtPlayer == false && other.iNetCollisionTimerShark <= 0 && other.iNetCollisionTimer <= 0
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

//iInvCounterRand -= 1;

if iInvCounterRand <= 0 && instance_nearest(x,y,objNetRand).iNetDiffPlayer <= 0//objPlayer.iInvCounterPlayerRand <= 0 //|| objPlayer.bNet == true //&& bCaughtNetRand == false //&& instance_nearest(self.x,self.y,objNetRand).iInvCounterRand <= 0
{
	bCaughtNetRand = true;
}
else 
{
	self.solid = false;
}

//show_debug_message(bCaughtNetRand);
//else if iInvCounterRand <= 0
//{
//	iNetNearestRand = instance_nearest(self.x,self.y,objNetRand);
//	iNetNearestRand.image_alpha = 1;
//}
//show_debug_message(iInvCounterRand);
//show_debug_message(instance_nearest(self.x,self.y,objShark2).iInvCounterRand);

//how_debug_message(instance_nearest(self.x,self.y,objNetRand).iInvCounterRand);

//else if iInvCounterRand <= 0
//{
//	iNetNearestRand = instance_nearest(self.x,self.y,objNetRand);
//	iNetNearestRand.image_alpha = 1;
//}
