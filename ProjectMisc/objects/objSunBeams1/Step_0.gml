/// @description Insert description here
// You can write your code in this editor
if iAlpha <= 50 && bDone == false
{
	iAlpha += 1.5;
	image_alpha = iAlpha / 100;
	if iAlpha >= 50
	{
		bDone = true;
	}
}
if iAlpha >= 0 && bDone == true
{
	iAlpha -= 1.5;
	image_alpha = iAlpha / 100;
	if iAlpha <= 0
	{
		bDone = false;
	}
}