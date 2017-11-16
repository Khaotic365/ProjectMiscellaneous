  //Setting up keyboard controls for player

if (keyboard_check(vk_right)) x = x + 4;
	if (keyboard_check(vk_right)) image_xscale = +1;
if (keyboard_check(vk_left)) x = x - 4;
	if (keyboard_check(vk_left)) image_xscale = -1;
if (keyboard_check(vk_up)) y = y - 4;
if (keyboard_check(vk_down)) y = y + 4;

if (keyboard_check(ord("D"))) x = x + 4;
	if (keyboard_check(ord("D"))) image_xscale = +1;
if (keyboard_check(ord("A"))) x = x - 4;
	if (keyboard_check(ord("A"))) image_xscale = -1;
if (keyboard_check(ord("W"))) y = y - 4;
if (keyboard_check(ord("S"))) y = y + 4;

if (x <= iRmMinX) x = 0;
if (x >= iRmMaxX) x = iRmMaxX;
if y <= iRmMinY	y = 0;
if y >= iRmMaxY	y = iRmMaxY;

show_debug_message(x);