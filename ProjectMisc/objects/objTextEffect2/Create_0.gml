//write your messages in an array, starting at 0, like so
message[0] = "Melvin Marmaduke was \ndown on his luck.\n \n \n \n \n \n \n \n  press spacebar to \n      continue\n   press s to skip";
message[1] = "He was drowning in \ngambling debt and \nhis wife left him \nbecause of it.";
message[2] = "As a historian, Melvin \nbegan researching \nancient legends to \ncure him of his \nfinancial woes.";
message[3] = "While looking through \nan oceanographic text, \nan old map fell out \nwith 'ATLANTIS' \nwritten across it.";
message[4] = "Melvin then digs out \nan old diving suit and \nsails his houseboat on \nthe path the map \ndescribes.";
message[5] = "Melvin then dives into \nthe ocean, determined \nto emerge a wealthy \nman.";

index = 0;

message_current = 0; //0 is the first number in our array, and the message we are currently at
message_end = 5; //6 is the last number in our array
message_draw = ""; //this is what we 'write' out. It's blank right now
increase = 0.5; //the speed at which new characters are added
characters = 0; //how many characters have already been drawn
hold = 0; //if we hold 'Z', the text will render faster

message_length = string_length(message[message_current]); //number of characters in first messaged * interval;