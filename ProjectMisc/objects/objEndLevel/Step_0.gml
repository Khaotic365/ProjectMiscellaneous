/// @description Insert description here
// You can write your code in this editor
if bDisappear == 1
{
	if iAlpha >= 0 && bNext == 0
	{
		iAlpha -= 0.02;
		if iAlpha == 0
		{
			bNext = 1;
			bNextRoom = 1;
		}
	}
	if iAlpha <= 1 && bNext == 1
	{
		iAlpha += 0.02;
		//if iAlpha == 1
		//{
		//	bNextRoom = 1;
		//}
	}
}

if bNextRoom == 1
{
	room_goto_next();
}

show_debug_message(iAlpha);