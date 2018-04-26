// @description Player Movement
var hinput = keyboard_check (vk_right) - keyboard_check(vk_left);

if hinput != 0 {
	speed_[h] += hinput*acceleration_;
	speed_[h] = clamp(speed_[h], -max_speed_, max_speed_);
	get_flipped();
	image_speed = flipped*hinput*.6;
} else {
	speed_[h] = lerp(speed_[h], 0, friction_);
	image_speed = 0;
	image_index = 0;
}

if !place_meeting(x, y+1, oCollison) {
	speed_[ve] += gravity_;
	image_speed = 0;
	image_index = 6;
} else if keyboard_check_pressed(vk_up) {
	speed_[ve] = jump_height_;
	x_scale_ = image_xscale*.8;
	y_scale_ = image_yscale*1.4;
}

move(speed_, 0);

//Check for landing
if place_meeting(x, y+1, oCollison) && !place_meeting(x, yprevious+1, oCollison) {
	x_scale_ = image_xscale * 1.8;
	y_scale_ = image_yscale * .8;
	
}

//Move back to normal scale value
x_scale_ = lerp(x_scale_, image_xscale, .2)
y_scale_ = lerp(y_scale_, image_yscale, .2)

if charge < 0 charge = 0;
if charge > 120 charge = 120

if place_meeting(x,y, oCollison) y-= 16


//Un set the tool if there is no one to lock it on
if global.inventorySlot != 4 {
	global.selected = 0;
	tool_locked = false
}


//Placing block
if global.item_data[# global.inventory[# global.inventorySlot, 0], 4] == "Block" 
{
	//Unset all block
	global.selected = 0; 
	tool_locked = false
}
