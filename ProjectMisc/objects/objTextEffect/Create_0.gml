sentences = ds_list_create();
ds_list_add(sentences, "Melvin Marmaduke was down on \n his luck.");

index = 0;

randomize();
var i = irandom(ds_list_size(sentences) - 1);
sentence = ds_list_find_value(sentences, i);

var interval = random_range(0.05, 0.10);
alarm[0] = room_speed * interval;