//iTimer = 600;

//iRefreshTimer = 300;
objPlayer.image_alpha = .35;
objPlayer.solid = false;

for (iTimer = 60; iTimer > 0; iTimer -= 1)
{
	if iTimer == 0
	{
		objPlayer.image_alpha = 1;
		objPlayer.solid = true;	
	}	
}

show_debug_message(iTimer);

//if i <= 0
//{
//objPlayer.image_alpha = 1;
//}
