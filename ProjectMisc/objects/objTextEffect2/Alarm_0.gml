if (index < string_length(message_length))
{

	index++;
	
	randomize();
	audio_play_sound(choose(sndText1,sndText3,sndText4), 100, false);
	
	var interval = random_range(0.05, 0.10);
	alarm[0] = room_speed * interval;

}
else
{
	alarm[1] = room_speed * 2;
}

