/// @description Insert description here
// You can write your code in this editor
if iInvCounterSnakeRand <= 0 && instance_nearest(x,y,objNetRand).iNetDiffPlayer <= 0 && instance_nearest(x,y,objNetRand).iNetDiffShark <= 0//instance_nearest(x,y,objShark2).iInvCounterRand <= 0 // || instance_nearest(x,y,objShark2).bNetShark == true//&& instance_nearest(objPlayer.x,objPlayer.y,objNetRand).iInvCounterRand <= 0 //|| instance_nearest(objPlayer.x,objPlayer.y,objShark2) <= 0;
{
	bCaughtNetSnakeRand = true;
}
else
{
	solid = false;
}