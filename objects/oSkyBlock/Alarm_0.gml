if !position_meeting(x,y+33,oSkyBlock) && !position_meeting(x,y,oCollison){
	var air =instance_create_depth(x,y+32,-10,oSkyBlock)
	if y > 640 air.lightStrength = lightStrength - 0.1
}
if y > 672 {
	if !position_meeting(x+33,y,oSkyBlock) && !position_meeting(x,y,oCollison) && x!= 10208 {
		var air =instance_create_depth(x+32,y,-10,oSkyBlock)
		air.lightStrength = lightStrength - 0.1
	}
	if !position_meeting(x-1,y,oSkyBlock) && !position_meeting(x,y,oCollison) && x != 0 {
		var air =instance_create_depth(x-32,y,-10,oSkyBlock)
		air.lightStrength = lightStrength - 0.1
	}
	if !position_meeting(x,y-1,oSkyBlock) && !position_meeting(x,y,oCollison) && x != 0 {
		var air =instance_create_depth(x,y-32,-10,oSkyBlock)
		air.lightStrength = lightStrength - 0.1
	}
}

alarm[0] = game_get_speed(gamespeed_fps)/3