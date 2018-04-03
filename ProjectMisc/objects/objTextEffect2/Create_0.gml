//write your messages in an array, starting at 0, like so
message[0] = "Melvin Marmaduke was \n  down on his luck.";
message[1] = "He was drowning in \ngambling debt and \nhis wife left him \nbecause of it.";
message[2] = "As a historian, Melvin began researching ancient legends to cure him of his financial woes.";
message[3] = "While looking through an oceanographic text, an old map fell out with 'ATLANTIS' written across it.";
message[4] = "Melvin then digs out an old diving suit and sails his houseboat on the path the map describes.";
message[5] = "Melvin then dives into the ocean, determined to emerge a wealthy man.";

index = 0;

message_current = 0; //0 is the first number in our array, and the message we are currently at
message_end = 5; //6 is the last number in our array
message_draw = ""; //this is what we 'write' out. It's blank right now
increase = 0.5; //the speed at which new characters are added
characters = 0; //how many characters have already been drawn
hold = 0; //if we hold 'Z', the text will render faster

message_length = string_length(message[message_current]); //number of characters in first messaged * interval;