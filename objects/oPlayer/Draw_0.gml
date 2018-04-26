var dir = point_direction(x-4*flipped, y-sprite_height/2+8, mouse_x, mouse_y)
//Flips the player
flipped = (mouse_x > x) * 2 - 1;



//Draw the player
draw_sprite_ext(sprite, image_index, x, ceil(y), x_scale_ * flipped, y_scale_, 0, image_blend, image_alpha)
//Draw the armour
armour_managment("Helmet",36)
armour_managment("Chestplate",37)
armour_managment("Leggings",38)

if armour_managment("Helmet",36) != -1 draw_sprite_ext(armour_managment("Helmet",36), image_index, x, ceil(y), x_scale_ * flipped, y_scale_, 0, image_blend, image_alpha) 

//Draw the gun
if global.item_data[# global.inventory[# global.inventorySlot, 0], 4] == "Gun" { //Draws the gun
	draw_sprite_ext(sItem, global.item_data[# global.inventory[# global.inventorySlot, 0], 0], (x-4*flipped)-3, (y-sprite_height/2+8)-5, 1, flipped, dir, image_blend, image_alpha)
}

if global.item_data[# global.inventory[# global.inventorySlot, 0], 4] == "Sword" { //Draws the sword
	var dirSword = point_direction(x, y-sprite_height/2, mouse_x, mouse_y)
	draw_sprite_ext(sSword, swordThrust, (x-4*flipped)-3, (y-sprite_height/2+8), 1, flipped, dirSword, image_blend, image_alpha)
	
}

if global.item_data[# global.inventory[# global.inventorySlot, 0], 4] == "Spear" {
	var dirSword = point_direction(x, y-sprite_height/2, mouse_x, mouse_y)
	draw_sprite_ext(sSpear, spearThrust, (x-4*flipped)-3, (y-sprite_height/2+8), 1, flipped, dirSword, image_blend, image_alpha)
}



if global.inventorySlot == 4 && oGame.draw == false
{
	//Check the collison line then draw the line
	var r = collision_line_point(x-4*flipped, y-sprite_height/2+8, mouse_x, mouse_y, oCollison, true, true);
	draw_line_width_color(x-4*flipped, y-sprite_height/2+8, r[1], r[2],4, c_aqua,  c_aqua)
	if r[0] != noone && floor(r[1]/32)*32 == r[0].x && floor(r[2]/32)*32 == r[0].y
	{
		global.selected = r[0]
	}
	else
	{
		global.selected = 0;
	}
	draw_sprite_ext(sGun, 0, x-4*flipped, y-sprite_height/2+8, 1, flipped, dir, image_blend, image_alpha)	
} 
/*else if global.inventorySlot == 4 
{
	//Draw the beam from the players gun to mouse
	draw_line_width_color(x-4*flipped, y-sprite_height/2+8, global.selected.x+16 , global.selected.y+16, 4, c_aqua,  c_aqua)
	draw_sprite_ext(sGun, 0, x-4*flipped, y-sprite_height/2+8, 1, flipped, point_direction(x-4*flipped,y-sprite_height/2,global.selected.x+16, global.selected.y+16), image_blend, image_alpha)	
}*/

if global.item_data[# global.inventory[# global.inventorySlot, 0], 4] == "Block" {
	//Draw the item at the end of the beam. The gun aligned the right way and blue beam pointing towards the block
	
	draw_line_width_color(x-4*flipped, y-sprite_height/2+8, (floor(mouse_x/32)*32)+16, (floor(mouse_y/32)*32)+16,4,c_aqua,c_aqua)
	draw_sprite_ext(sGun, 0, x-4*flipped, y-sprite_height/2+8, 1, flipped, point_direction(x-4*flipped, y-sprite_height/2+8, (floor(mouse_x/32)*32)+16, (floor(mouse_y/32)*32)+16), image_blend, image_alpha)
	draw_sprite(sItem, global.inventory[# global.inventorySlot, 0], floor(mouse_x/32)*32, floor(mouse_y/32)*32	)
}
draw_set_color(c_black)
