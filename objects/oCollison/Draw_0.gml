draw_self()
draw_set_color(c_black)

if global.selected == id {
	global.selX=x
	global.selY=y
	oSelected.x=x
	oSelected.y=y
	global.selSize=size
	global.drawSel=true
	//draw_sprite_ext(sSelected, 0, x,y, size, size, 0, c_white, 1)
	/*if mouse_check_button_pressed(mb_left) {
			oPlayer.tool_locked = true;
	}*/
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
	if dur != 0 draw_sprite(sBlockDestroy, ceil(dur/10),x,y)

}

if mouseOver(id.bbox_left,id.bbox_top,id.bbox_right,id.bbox_bottom) == false or global.selected != id{
	dur=0	
}