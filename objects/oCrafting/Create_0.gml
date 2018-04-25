//Load in the json
var theJsonFile = file_text_open_read("crafting_recipies.json");
var theData = "";
while (!file_text_eof(theJsonFile))
{
    theData += file_text_read_string(theJsonFile);
    file_text_readln(theJsonFile);
}
file_text_close(theJsonFile);
var theJsonMap = json_decode(theData);
var theList = ds_map_find_value(theJsonMap, "default");
global.totalCrafts = ds_list_size(theList);
global.crafting_data = ds_grid_create(global.totalCrafts+1,20);
for (var i = 0; i < global.totalCrafts; i++)
{
    var theEntry = ds_list_find_value(theList, i);
    global.crafting_data[# i, 0] = theEntry[? "ID"];
    global.crafting_data[# i, 1] = theEntry[? "Required1"];
	global.crafting_data[# i, 2] = theEntry[? "Required2"];
	global.crafting_data[# i, 3] = theEntry[? "Required3"];
	global.crafting_data[# i, 4] = theEntry[? "Required1Amount"];
	global.crafting_data[# i, 5] = theEntry[? "Required2Amount"];
	global.crafting_data[# i, 6] = theEntry[? "Required3Amount"];
	global.crafting_data[# i, 7] = theEntry[? "Name"];
	global.crafting_data[# i, 8] = theEntry[? "Item_IndexID"];
	global.crafting_data[# i, 9] = theEntry[? "Crafting_Amount"];
}

draw = false


