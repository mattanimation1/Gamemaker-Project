mouse_over = mouseOver(x,y,sprite_get_width(sprite_index),sprite_get_height(sprite_index))

if global.selected == id {
	
	global.selX=x
	global.selY=y
	global.selSize=size
	global.drawSel=true
	if keyboard_check_pressed(ord("F")) && original == false{

	}
	if keyboard_check_pressed(ord("F")) && original == false {
		var back = instance_create_depth(x,y,10,oBackObject)
		back.image_index = image_index
		back.original = false
		back.depth = 9
		oPlayer.tool_locked = false
		global.selected = 0;
		instance_destroy()
		
	}
	if mouse_check_button_pressed(mb_right) && oPlayer.tool_locked == true {
				oPlayer.tool_locked = false;
		}
	if oPlayer.tool_locked == true && keyboard_check(ord("M")) && moving_brick == false {
		moving_brick = true
		if original == true {
			var back = instance_create_depth(x,y,10,oBackObject)
			back.image_index = image_index
			back.original = false
		}
		original = false
		oPlayer.charge -= 1;
	} else if oPlayer.tool_locked == true && mouse_check_button_pressed(mb_left) && !place_meeting(x, y, oCollison) {
		moving_brick = false
	}
	if moving_brick == true {
			x = floor(mouse_x/32)*32	
			y =  floor(mouse_y/32)*32
	}
	

}

if mouse_over == false or global.selected != id or mouse_check_button(mb_left) == false{
	dur=0	
}

if place_meeting(x,y,oCollison)and(image_index==22 or image_index==3){
	instance_destroy()
}