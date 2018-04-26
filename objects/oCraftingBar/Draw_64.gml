draw_set_font(fCrafting)
if oCrafting.draw == true {
	if place_meeting(x,y,oCrafting) {
		draw_self()
	
		draw_sprite(sItem,global.crafting_data[# crafting_slot, 8],x+2,y+2)
		draw_set_color(c_black)
		draw_text(x+48, y+4, global.crafting_data[# crafting_slot, 7])
		draw_set_color(c_black)
		if can_craft == false draw_sprite(sCraftingBarCant, 0, x,y)
	
		mask_index = sCraftingBar
	} else {
		mask_index = sNoMask
	}


	if global.crafting_selected == crafting_slot {
		var color_gray = $4D4D4D
		draw_rectangle_color(213+317,150+120,213+538,150+343,color_gray,color_gray,color_gray,color_gray, false)//Draw main background
		var color = $363636
		draw_rectangle_color(213+317,150+87,213+538,150+122,color,color,color,color, false) //Draw backround color
		draw_sprite_ext(sItem,global.crafting_data[# crafting_slot, 8],323+213,92+150, 0.75, 0.75, 0, c_white, 1)//Small Image up the top
		
		draw_sprite_ext(sItemInventory,global.crafting_data[# crafting_slot, 8], 213+398, 150+144, 2, 2, 0, c_white, 1) // Draw image
		draw_text(213+325,229+150, global.item_data[# global.crafting_data[# crafting_slot, 8 ], 2])//Draw description
		draw_text(213+325,229+170, string(global.crafting_data[# global.crafting_selected, 4]) + "x " + string(global.item_data[# global.crafting_data[# global.crafting_selected, 1 ], 1]))
		if  global.crafting_data[# global.crafting_selected, 2] != 0 draw_text(213+325,229+190, string(global.crafting_data[# global.crafting_selected, 5]) + "x " + string(global.item_data[# global.crafting_data[# global.crafting_selected, 2 ], 1]))
		if  global.crafting_data[# global.crafting_selected, 3] != 0 draw_text(213+325,229+210, string(global.crafting_data[# global.crafting_selected, 6]) + "x " + string(global.item_data[# global.crafting_data[# global.crafting_selected, 3 ], 1]))
	}
}



