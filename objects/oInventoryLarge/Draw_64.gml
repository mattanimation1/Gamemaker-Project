/// @description Draw the light gray background
if oGame.draw == true {
		draw_sprite_ext(sInventoryBack,0,0,0,1,1,0,c_white,0.3)
		draw_set_font(fCraftingLarge)
		draw_set_halign(fa_center)
		draw_set_color(c_white)
		draw_text(512,25,"Inventory")
		draw_set_color(c_black)
		draw_set_halign(fa_left)
		draw_set_font(fCrafting)
		draw_sprite(sInventoryBox,0,40,225)		
		draw_sprite(sInventorySlotInfo,0,403,475)
		draw_sprite(sInventorySlotInfo,0,715,475)
		draw_sprite_ext(player_idle,image_index,155,500,5,5,0,c_white,1)
		if armour_managment("Helmet",36) != -1 draw_sprite_ext(armour_managment("Helmet",36), image_index, 155,500,5,5,0,c_white,1) 
		if armour_managment("Chestplate",37) != -1 draw_sprite_ext(armour_managment("Chestplate",37), image_index, 155,500,5,5,0,c_white,1) 
		if armour_managment("Leggings",38) != -1 draw_sprite_ext(armour_managment("Leggings",38), image_index, 155,500,5,5,0,c_white,1) 
		
		if global.inventory[# global.mouse_over, 0] != global.item_data[# 0, 0] {
			
			draw_text(415,485,global.item_data[# global.inventory[# global.mouse_over, 0], 1]) //Draw the name
			draw_set_color($4D4D4D)
			draw_text(415,505,global.item_data[# global.inventory[# global.mouse_over, 0], 4]) //Draw the type
			draw_set_color(c_black)
			draw_text(415,575,global.item_data[# global.inventory[# global.mouse_over, 0], 2]) //Draw the description
			draw_sprite_ext(sItemInventory,global.item_data[# global.inventory[# global.mouse_over, 0], 0],600,485,2,2,0,c_white,1) //Draw the sprite
			draw_rectangle(600,485,664,550,true) //Draw sprite rectangle
		}else {
			draw_text(415,480,"Hover over an item for more info")
		}


}