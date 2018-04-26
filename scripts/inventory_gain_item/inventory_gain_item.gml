	// @description Adds an item and a quantity into the inventory in a valid slot.
/// @function inventory_gain_item(item_ID, amount);
/// @param item_ID
/// @param amount

var iid = argument0;
var amount = argument1;

var slot = 0; //A temporary variable to loop through the slots
var inventory_width = ds_grid_width(global.inventory);

while (slot < inventory_width)
 {
 //If the tested slot in the inventory is either empty, or contains a matching item id
if (global.inventory[# slot, 1] != global.item_data[# slot, 6] && global.inventory[# slot, 0] == iid || global.inventory[# slot, 0] == global.item_data[# 0, 0] && slot != 4)
 {
  global.inventory[# slot, 0] = iid;
  global.inventory[# slot, 1] += amount;
  return true; //Did set the slot
  exit; //Exit function, because it has set the slot
  }
 slot ++; //Incriment slot to test next position
 }
return false; //Did not set slot