//write your messages in an array, starting at 0, like so
message[0] = "    GAME OVER\n \n \n \n \n \n \n   right click \n   to continue";


message_current = 0; //0 is the first number in our array, and the message we are currently at
message_end = 0; //6 is the last number in our array
message_draw = ""; //this is what we 'write' out. It's blank right now
increase = 0.5; //the speed at which new characters are added
characters = 0; //how many characters have already been drawn
hold = 0; //if we hold 'Z', the text will render faster

message_length = string_length(message[message_current]); //number of characters in first messaged * interval;

audio_stop_sound(msShore);
audio_play_sound(sndGameOver2, 0, false);