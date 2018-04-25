var dir = point_direction(x, y-sprite_height/2, mouse_x, mouse_y)
//Flips the player
flipped = (mouse_x > x) * 2 - 1;






//Draw the player
draw_sprite_ext(sPlayer, image_index, x, ceil(y), x_scale_ * flipped, y_scale_, 0, image_blend, image_alpha)


//Draw the gun
if global.item_data[# global.inventory[# global.inventorySlot, 0], 4] == "Gun" {
	draw_sprite_ext(sItem, global.item_data[# global.inventory[# global.inventorySlot, 0], 0], (x-4*flipped)-3, (y-sprite_height/2+8)-5, 1, flipped, dir, image_blend, image_alpha)
}

if global.item_data[# global.inventory[# global.inventorySlot, 0], 4] == "Sword" {
	var dirSword = point_direction(x, y-sprite_height/2, mouse_x, mouse_y)
	draw_sprite_ext(sSword, swordThrust, (x-4*flipped)-3, (y-sprite_height/2+8), 1, flipped, dirSword, image_blend, image_alpha)
	if mouse_check_button_pressed(mb_left) {
		var sword_collison = instance_create_depth((x-4*flipped)-3, (y-sprite_height/2+8),0,oSwordCollisons)
		sword_collison.direction = dirSword;
		sword_collison.image_angle = dirSword
		swordThrust = 0
		alarm[2] = game_get_speed(gamespeed_fps)/59
	}
}

if global.item_data[# global.inventory[# global.inventorySlot, 0], 4] == "Spear" {
	var dirSword = point_direction(x, y-sprite_height/2, mouse_x, mouse_y)
	draw_sprite_ext(sSpear, spearThrust, (x-4*flipped)-3, (y-sprite_height/2+8), 1, flipped, dirSword, image_blend, image_alpha)
	if mouse_check_button_pressed(mb_left) {
		spearThrust = 0
		var spear_collison = instance_create_depth((x-4*flipped)-3, (y-sprite_height/2+8),0,oSpearCollisons)
		spear_collison.direction = dirSword;
		spear_collison.image_angle = dirSword
		alarm[1] = game_get_speed(gamespeed_fps)/59
	}
}






if tool_locked == false && global.inventorySlot == 4 {
	var r = collision_line_point(x-4*flipped, y-sprite_height/2+8, mouse_x, mouse_y, oCollison, true, true);
	draw_line_width_color(x-4*flipped, y-sprite_height/2+8, r[1], r[2],4, c_aqua,  c_aqua)
	if r[0] != noone && floor(r[1]/32)*32 == r[0].x && floor(r[2]/32)*32 == r[0].y && charge > 0 {
		global.selected = r[0]
	}
	else {
		global.selected = 0;
	}
	draw_sprite_ext(sGun, 0, x-4*flipped, y-sprite_height/2+8, 1, flipped, dir, image_blend, image_alpha)	
} else if global.inventorySlot == 4 {
	draw_line_width_color(x-4*flipped, y-sprite_height/2+8, global.selected.x+16 , global.selected.y+16, 4, c_aqua,  c_aqua)
	draw_sprite_ext(sGun, 0, x-4*flipped, y-sprite_height/2+8, 1, flipped, point_direction(x-4*flipped,y-sprite_height/2,global.selected.x+16, global.selected.y+16), image_blend, image_alpha)	
}

if global.item_data[# global.inventory[# global.inventorySlot, 0], 4] == "Block" {
	global.selected = 0;
	tool_locked = false
	draw_sprite_ext(sGun, 0, x-4*flipped, y-sprite_height/2+8, 1, flipped, dir, image_blend, image_alpha)	
	draw_line_width_color(x-4*flipped, y-sprite_height/2+8, (floor(mouse_x/32)*32)+16, (floor(mouse_y/32)*32)+16,4,c_aqua,c_aqua)
	var closest_collison = instance_nearest((floor(mouse_x/32)*32), (floor(mouse_y/32)*32), oCollison)
	if mouse_check_button(mb_left) && !position_meeting(mouse_x,mouse_y,oCollison){
		var create_inv = instance_create_depth((floor(mouse_x/32)*32), (floor(mouse_y/32)*32), 0, oCollison)
		var create_inv_id = create_inv.id
		create_inv.image_index = global.inventory[# global.inventorySlot, 0]
		create_inv.original = false
		if create_inv.image_index == 13 {
			var torch_light = instance_create_depth((floor(mouse_x/32)*32), (floor(mouse_y/32)*32), 0, oSkyCircle)
			torch_light.owner = create_inv_id
		}
		global.inventory[# global.inventorySlot, 1] -= 1
	} else {	
		draw_sprite(sItem, global.inventory[# global.inventorySlot, 0], floor(mouse_x/32)*32, floor(mouse_y/32)*32	)
	}
	
}
draw_set_color(c_black)
