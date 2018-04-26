for(i = 0; i <= 20; i ++)
{
	var crafting_bar = instance_create_depth(213+48,150+103+(i*32),10,oCraftingBar)
	crafting_bar.crafting_slot = i
}