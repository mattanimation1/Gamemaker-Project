if draw == true
{
	var xx = 213;
	var yy = 150;
	draw_sprite(sCrafting,0,xx,yy)//Draw the main inventory part
	instance_activate_object(oCraftingBar)
	draw_text_color(355+213,95+91+50,global.crafting_data[# global.crafting_selected, 7], c_black,c_black,c_black,c_black,1) //Draw small name
	draw_text_color(355+213,105+98+50,global.item_data[# global.crafting_data[# global.crafting_selected, 8], 4], c_gray,c_gray,c_gray,c_gray,1) //Draw small item type
} else instance_deactivate_object(oCraftingBar)

