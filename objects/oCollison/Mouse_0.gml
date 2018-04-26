if global.selected == id /*&& oPlayer.tool_locked == true*/ {
	dur ++
	if dur == max_dur {
		instance_destroy()
		oPlayer.tool_locked = false
		global.selected = 0;
		inventory_gain_item(image_index,1)
	}
}