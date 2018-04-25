instance_activate_region( camera_get_view_x(view_camera[0])-256,  camera_get_view_y(view_camera[0])-256, camera_get_view_width(view_camera[0])+320,  camera_get_view_height(view_camera[0])+320, true);
instance_deactivate_region( camera_get_view_x(view_camera[0])-256,  camera_get_view_y(view_camera[0])-256, camera_get_view_width(view_camera[0])+320,  camera_get_view_height(view_camera[0])+320, false, true);
instance_activate_object(oInventoryBar)
instance_activate_object(oCraftingBar)
instance_activate_object(oCrafting)
instance_activate_object(oCraftingBars)
if global.selected != noone instance_activate_object(global.selected)
alarm[0] = game_get_speed(gamespeed_fps)/8
