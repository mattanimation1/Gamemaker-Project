///@description Choose between the pig moving staying still

move_ = choose(1,0,-1)
alarm[0] = game_get_speed(gamespeed_fps)*5
if move_ == -1 image_xscale = -1
if move_ == 1 image_xscale = 1