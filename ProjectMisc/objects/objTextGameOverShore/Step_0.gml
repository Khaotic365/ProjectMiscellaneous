if (characters < message_length) 
{ //if current character count is less than the amount in current message* 
    hold = mouse_check_button_pressed(mb_left); //hold is true or false if we hold 'Z' or not
    characters += increase * (3 + hold); //increase speed based on hold
    message_draw = string_copy(message[message_current], 0, characters); //copy string to current character
} 
else 
{ //if current character is more than the amount in the current message
    if mouse_check_button_released(mb_right)
{
	room_goto(rmShore3);
}
}