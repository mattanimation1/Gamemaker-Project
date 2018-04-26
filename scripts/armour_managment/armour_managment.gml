// @description Manages armour system
/// @function weapon_attack(armour_type_string, armour_variable,armour_slot);
/// @param armour_type_string
/// @param armour_variable
/// @param armour_slot

var armour_type_string = argument0;
var armour_slot = argument1;


if global.item_data[# global.inventory[# armour_slot, 0],4] == armour_type_string {
	var value = global.item_data[# global.inventory[# armour_slot,0], 1]
	var check_place = ds_grid_value_x(global.armour_data,0,0,ds_grid_width(global.armour_data), ds_grid_height(global.armour_data),value)
	
	var sprite_running = global.armour_data[# check_place,2]
	var sprite_idle = global.armour_data[# check_place,3]
	var sprite_jump = global.armour_data[# check_place,4]
	
	if oPlayer.sprite == oPlayer.player_idle_current return sprite_idle
	else if oPlayer.sprite == oPlayer.player_run_current return sprite_running
	else if oPlayer.sprite == oPlayer.player_jump_current return sprite_jump
	else return -1
} 