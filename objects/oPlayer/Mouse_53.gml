/// @description Move weapons and create collisons mask
weapon_attack("Sword",oSwordCollisons,swordThrust,2) //Sword thrust
weapon_attack("Spear",oSpearCollisons,spearThrust,1) //Spear thrust

if !position_meeting(mouse_x,mouse_y,oCollison) && global.item_data[# global.inventory[# global.inventorySlot, 0], 4] == "Block" //Check to see if the block is ontop of another block
	{
		//Create block and make it so its image_index is what its meant to be and its not original
		var create_inv = instance_create_depth((floor(mouse_x/32)*32), (floor(mouse_y/32)*32), 0, oCollison)
		create_inv.image_index = global.inventory[# global.inventorySlot, 0]
		create_inv.original = false
		//If the block placed is a torch
		if create_inv.image_index == 13 
		{
			//Make a parent light for the torch which dissaperas on destroction of the torch
			var create_inv_id = create_inv.id
			var torch_light = instance_create_depth((floor(mouse_x/32)*32), (floor(mouse_y/32)*32), 0, oSkyCircle)
			torch_light.owner = create_inv_id
		}
		//Take the block out of the inventory
		global.inventory[# global.inventorySlot, 1] -= 1
}