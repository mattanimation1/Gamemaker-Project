if oGame.draw == true || var_slot < 9 {
	/// @description Sets the middle slot to matter manipulator
	global.inventory[# 4, 0] = 8;
	global.inventory[# 4, 1] = 1
	//Check if slot needs changing
	if keyboard_key-48 == var_slot + 1 {
		global.inventorySlot = var_slot
	}
	if global.inventorySlot == var_slot {
		image_index = 1;
	} else {
		image_index = 0;
	}

	//If there is nothing in the slot set it to air
	if global.inventory[# var_slot, 1] == 0 global.inventory[# var_slot, 0] = 0
	//Get values
	var iid = global.mouse_slot[# 0, 0];
	var amount = global.mouse_slot[# 0, 1];

	 if mouse_check_button_pressed(mb_left) && var_slot != 4 &&  mouseOver(camera_get_view_x(view_camera[0])+xOrigin,(camera_get_view_y(view_camera[0])+200)+64*floor(var_slot/9),64,64)  {
		/// @description Move items with the mouse

		var iid = global.inventory[# var_slot, 0];
		var amount = global.inventory[# var_slot, 1];
		var mouse_iid = global.mouse_slot[# 0, 0];
		var mouse_amount = global.mouse_slot[# 0, 1];

		if (iid == 0 || mouse_iid == 0 || iid != mouse_iid) //If either slot is empty, or the two slots don't match
		 {
		 //Switch the slots
		 global.inventory[# var_slot, 0] = mouse_iid;
		 global.inventory[# var_slot, 1] = mouse_amount;
		 global.mouse_slot[# 0, 0] = iid;
		 global.mouse_slot[# 0, 1] = amount;
		 }
		else if (iid == mouse_iid) //If both slots are the same
		 {
		 //Take all mouse items and put them in inventory
		 global.inventory[# var_slot, 1] += global.mouse_slot[# 0, 1];
		 global.mouse_slot[# 0, 0] = 0;
		 global.mouse_slot[# 0, 1] = 0;
		 }
	 }
 
}
if oGame.draw == true {
	y = 200+64*floor(var_slot/9)
	global.inventorySlot = 4
} else {
	y = 0
}