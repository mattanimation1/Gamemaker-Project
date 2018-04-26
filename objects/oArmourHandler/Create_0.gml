//Load in the json
var theJsonFile = file_text_open_read("armour_data.json");
var theData = "";
while (!file_text_eof(theJsonFile))
{
    theData += file_text_read_string(theJsonFile);
    file_text_readln(theJsonFile);
}
file_text_close(theJsonFile);
var theJsonMap = json_decode(theData);
var theList = ds_map_find_value(theJsonMap, "default");
global.totalArmour = ds_list_size(theList);
global.armour_data = ds_grid_create(global.totalArmour+1,20);
for (var i = 0; i < global.totalArmour; i++)
{
    var theEntry = ds_list_find_value(theList, i);
    global.armour_data[# i, 0] = theEntry[? "ID"];
    global.armour_data[# i, 1] = theEntry[? "Body_Position"];
	global.armour_data[# i, 2] = asset_get_index(theEntry[? "Sprite_Name_Run"]);
	global.armour_data[# i, 3] = asset_get_index(theEntry[? "Sprite_Name_Idle"]);
	global.armour_data[# i, 4] = asset_get_index(theEntry[? "Sprite_Name_Jump"]);
	global.armour_data[# i, 5] = theEntry[? "Armour"];
	global.armour_data[# i, 6] = theEntry[? "Name"];
}
instance_destroy()