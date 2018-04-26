instance_deactivate_all(true)
instance_activate_object(oPlayer)
instance_activate_object(oInventory)

instance_activate_region( camera_get_view_x(view_camera[0])-128,  camera_get_view_y(view_camera[0])-128, camera_get_view_width(view_camera[0])+128,  camera_get_view_height(view_camera[0])+128, true);
alarm[0] = game_get_speed(gamespeed_fps)
global.daylight = 0;
global.time = 12;
alarm[1] = game_get_speed(gamespeed_fps)*2
draw = false;
depth = 100