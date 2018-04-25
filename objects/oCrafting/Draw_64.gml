if draw == true
{
	var xx = 213;
	var yy = 150;
	draw_sprite(sCrafting,0,xx,yy)//Draw the main inventory part
	instance_activate_object(oCraftingBar)
} else instance_deactivate_object(oCraftingBar)

