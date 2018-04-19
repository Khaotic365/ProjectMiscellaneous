if (characters < message_length) 
{ //if current character count is less than the amount in current message* 
	hold = mouse_check_button_pressed(mb_left); //hold is true or false if we hold 'Z' or not
    characters += increase * (2 + hold); //increase speed based on hold
    message_draw = string_copy(message[message_current], 0, characters); //copy string to current character
} 
else 
{ //if current character is more than the amount in the current message
    if (mouse_check_button_released(mb_left)) 
	{ //if we press Z...
        if (message_current < message_end) 
		{ //if there are more messages left to show (0 -> 6, in our case)
            message_current += 1; //increase the message by 1
            message_length = string_length(message[message_current]);  //get the new character length for message
            characters = 0; //set the characters back to 0
            message_draw = ""; //clear the drawn text
        }
        else 
		{ //if our messages are done (we reach 6, in our case)...
            alarm[1] = room_speed * 1; //destroy the object
        }
    }
	else if (mouse_check_button_released(mb_right))
	room_goto(rmShore3);
	}