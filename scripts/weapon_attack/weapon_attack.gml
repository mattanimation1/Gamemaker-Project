// @description Creates a collison mask and moves the weapon
/// @function weapon_attack(weapon_type_string, collison_mask,variable_name,alarm);
/// @param weapon_type_string
/// @param collison_mask
/// @param variable_name
/// @param alarm

var weapon_type_string = argument0;
var collison_mask = argument1;
var variable_name = argument2;
var alarm_= argument3;

if global.item_data[# global.inventory[# global.inventorySlot, 0], 4] == weapon_type_string { //Rotate the sword
		var dir_ = point_direction(x, y-sprite_height/2, mouse_x, mouse_y)
		var collison = instance_create_depth((x-4*flipped)-3, (y-sprite_height/2+8),0,collison_mask)
		collison.direction = dir_;
		collison.image_angle = dir_;
		variable_name = 0
		alarm[alarm_] = game_get_speed(gamespeed_fps)/59
}