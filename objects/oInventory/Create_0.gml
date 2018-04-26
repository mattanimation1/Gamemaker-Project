//Load in the json
yIncrement = -64;
xIncrement =0
global.inventorySlot = 4;
var theJsonFile = file_text_open_read("item_index.json");
var theData = "";
while (!file_text_eof(theJsonFile))
{
    theData += file_text_read_string(theJsonFile);
    file_text_readln(theJsonFile);
}
file_text_close(theJsonFile);
var theJsonMap = json_decode(theData);
var theList = ds_map_find_value(theJsonMap, "default");
global.totalItems = ds_list_size(theList);
global.item_data = ds_grid_create(global.totalItems,10);
for (var i = 0; i < global.totalItems; i++)
{
    var theEntry = ds_list_find_value(theList, i);
    global.item_data[# i, 0] = theEntry[? "ID"];
    global.item_data[# i, 1] = theEntry[? "Name"];
	global.item_data[# i, 2] = theEntry[? "Description"];
	global.item_data[# i, 3] = theEntry[? "Damage"];
	global.item_data[# i, 4] = theEntry[? "Type"];
	global.item_data[# i, 5] = theEntry[? "Solid"];
	global.item_data[# i, 6] = theEntry[? "Stack_Limit"];
}


draw = false;



global.inventory = ds_grid_create(39, 2);
ds_grid_clear(global.inventory, 0);


	var slot = 0;
	while (slot < ds_grid_width(global.inventory))
	 {
	if slot % 9 = 0 {
		yIncrement +=64
		xIncrement = 0;
	}
	 var inst = instance_create_layer(x-16+(64*xIncrement), y-16+yIncrement, "Instances", oInventoryBar);
	 inst.var_slot = slot;
	 slot ++;
	 xIncrement++
	 }
 instance_destroy()
