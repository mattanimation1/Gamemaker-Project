var startX = argument0;
var startY = argument1;
var width = argument2;
var height = argument3;

if mouse_x >= startX && mouse_x < startX + width {
	if mouse_y >= startY && mouse_y < startY + height {
		return true
	} else return false;
} else return false;