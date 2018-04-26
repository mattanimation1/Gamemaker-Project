/// @description Create a bullet

var dir = point_direction(x, y-sprite_height/2, mouse_x, mouse_y)
var flipped = (mouse_x > x) * 2 - 1;
var gun_x = x-4*flipped;
var x_offset = lengthdir_x(16, dir)
var y_offset = lengthdir_y(16, dir)

if global.item_data[# global.inventory[# global.inventorySlot, 0], 0] == 14 {
	
	//Set direction for particles
	part_type_direction(flame,dir,dir,0,10)
	part_type_direction(smoke,dir,dir,0,10)
	
	//Set region to create
	part_emitter_region(fire,em,(gun_x+x_offset)+3,(gun_x+x_offset)+3,(y-sprite_height/2+y_offset)+5,(y-sprite_height/2+y_offset)+5,ps_shape_rectangle,ps_distr_linear)
	
	//Create particles
	part_emitter_burst(fire,em,smoke,3)
	part_emitter_burst(fire,em,flame,5)
	instance_create_depth((gun_x+x_offset)+3,(y-sprite_height/2+y_offset),0,oFire)
	
} else if (alarm[0] == -1 && global.item_data[# global.inventory[# global.inventorySlot, 0], 4] == "Gun") {

	
	if global.item_data[# global.inventory[# global.inventorySlot, 0], 0] == 15 {//Shotgun bullets
		repeat(6) {
			randomize()
			var bullet_dir = random_range(-8,8)
			var bullet = instance_create_depth((gun_x+x_offset)+3, (y-sprite_height/2+y_offset)+5, 0, oBullet)
			bullet.direction = dir+bullet_dir
			bullet.image_angle = dir+bullet_dir;
			bullet.sprite_index = sShotGun; 
			bullet.damage = 14;
		}
	}
	
	if global.item_data[# global.inventory[# global.inventorySlot, 0], 0] == 16 { //Rocket Launcher
		
		var bullet = instance_create_depth((gun_x+x_offset)+3, (y-sprite_height/2+y_offset)+5, 0, oBullet)
	
		bullet.direction = dir
		bullet.image_angle = dir;
		bullet.sprite_index = sMisile; 
		bullet.rocket = true;
	}
	
	if global.item_data[# global.inventory[# global.inventorySlot, 0], 0] == 17 { //Copper Gun
		
		var bullet = instance_create_depth((gun_x+x_offset)+3, (y-sprite_height/2+y_offset)+5, 0, oBullet)
	
		bullet.direction = dir
		bullet.image_angle = dir;
		bullet.sprite_index = sDefault;  
		bullet.damage = 15;
	}
	if global.item_data[# global.inventory[# global.inventorySlot, 0], 0] == 18 { //Gold Gun
		
		var bullet = instance_create_depth((gun_x+x_offset)+3, (y-sprite_height/2+y_offset)+5, 0, oBullet)  
	
		bullet.direction = dir
		bullet.image_angle = dir;
		bullet.sprite_index = sDefault;  
		bullet.damage = 15;
	}
	
	alarm[0] = game_get_speed(gamespeed_fps)/4;
}

