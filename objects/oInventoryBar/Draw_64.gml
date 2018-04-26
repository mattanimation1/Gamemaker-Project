if oGame.draw == true || var_slot < 9 {
	if global.inventorySlot == var_slot && oGame.draw == false {
		draw_sprite(sInventoryBar,1, x+xOffset,y+yOffset)
	}
	else if (global.inventorySlot != var_slot || oGame.draw == true) {
		draw_sprite(sInventoryBar,image, x+xOffset,y+yOffset)
	}
	draw_set_color(c_black)
	//Get values
	var iid = global.inventory[# var_slot, 0];
	var amount = global.inventory[# var_slot, 1];
	name = global.item_data[# iid, 1];

	//Draw stuff
	if (iid != global.item_data[# 0, 0]) && oGame.draw != true
	 {
	 draw_sprite_ext(sItemInventory, iid, xOrigin+8+xOffset, yOrigin+8+yOffset, 1.5, 1.5, 0, c_white, 1); //Draw item sprite
	 if var_slot != 4 draw_text(xOrigin+48+xOffset, yOrigin+40+yOffset, string(amount)); //Draw item quantity
	 } else if  (iid != global.item_data[# 0, 0]) {
		draw_sprite_ext(sItemInventory, iid, xOrigin+8+xOffset, 200+64*floor(var_slot/9)+8+yOffset, 1.5, 1.5, 0, c_white, 1); //Draw item sprite
		if var_slot != 4 draw_text(xOrigin+48+xOffset,200+64*floor(var_slot/9)+40+yOffset, string(amount)); //Draw item quantity
	 }
 
	/// @description Draw the mouse items.

	//Get values
	var iid = global.mouse_slot[# 0, 0];
	var amount = global.mouse_slot[# 0, 1];

	//Draw stuff
	if (iid != global.item_data[# 0, 0])
	 {
	 draw_sprite_ext(sItemInventory, iid, mouse_x-8-camera_get_view_x(view_camera[0]), mouse_y-8-camera_get_view_y(view_camera[0]), 1.5, 1.5, 0, c_white, 1); //Draw item sprite
	 draw_text(mouse_x+32-camera_get_view_x(view_camera[0]), mouse_y+24-camera_get_view_y(view_camera[0]), string(amount)); //Draw item quantity
	 }
	 
}

if global.mouse_over == 8{
	global.over_gun=true
}
else{
	global.over_gun=false	
}