if (characters < message_length) 
{ //if current character count is less than the amount in current message* 
    hold = keyboard_check(vk_space); //hold is true or false if we hold 'Z' or not
    characters += increase * (2 + hold); //increase speed based on hold
    message_draw = string_copy(message[message_current], 0, characters); //copy string to current character
} 
else 
{ //if current character is more than the amount in the current message
    if keyboard_check_pressed(vk_anykey)
{
	room_goto(rmShore3);
}
}