if ds_grid_value_exists(global.inventory,0,0,10,0,global.crafting_data[# crafting_slot, 1]) && ds_grid_value_exists(global.inventory,0,0,10,0,global.crafting_data[# crafting_slot, 2]) && ds_grid_value_exists(global.inventory,0,0,10,0,global.crafting_data[# crafting_slot, 3]) { //Check if the item exsists in the grid
	var xpos1 = ds_grid_value_x(global.inventory,0,0,10,0,global.crafting_data[# crafting_slot, 1])
	var xpos2 = ds_grid_value_x(global.inventory,0,0,10,0,global.crafting_data[# crafting_slot, 2])
	var xpos3 = ds_grid_value_x(global.inventory,0,0,10,0,global.crafting_data[# crafting_slot, 3])
	if global.crafting_data[# crafting_slot, 4] <= global.inventory[# xpos1, 1] && global.crafting_data[# crafting_slot, 5] <= global.inventory[# xpos2, 1] && global.crafting_data[# crafting_slot, 6]<= global.inventory[# xpos3, 1] can_craft = true;
	
} else can_craft = false

if mouseOver(camera_get_view_x(view_camera[0])+213+399,camera_get_view_y(view_camera[0])+150+351, 66, 20) && can_craft == true && mouse_check_button_released(mb_left) && global.crafting_selected == crafting_slot {
	var xpos1 = ds_grid_value_x(global.inventory,0,0,10,0,global.crafting_data[# crafting_slot, 1])
	var xpos2 = ds_grid_value_x(global.inventory,0,0,10,0,global.crafting_data[# crafting_slot, 2])
	var xpos3 = ds_grid_value_x(global.inventory,0,0,10,0,global.crafting_data[# crafting_slot, 3])
	
	show_debug_message(xpos1)
	show_debug_message(xpos2)
	show_debug_message(xpos3)
	
	global.inventory[# xpos1, 1] -=  global.crafting_data[# crafting_slot, 4]
	global.inventory[# xpos2, 1] -=  global.crafting_data[# crafting_slot, 5]
	global.inventory[# xpos3, 1] -=  global.crafting_data[# crafting_slot, 6]
	inventory_gain_item(global.crafting_data[# crafting_slot, 8], global.crafting_data[# crafting_slot, 9])
	
}

if mouseOver(camera_get_view_x(view_camera[0])+202, y+camera_get_view_y(view_camera[0]),226, 36) && mouse_check_button(mb_left) && place_meeting(x,y, oCrafting) global.crafting_selected = crafting_slot