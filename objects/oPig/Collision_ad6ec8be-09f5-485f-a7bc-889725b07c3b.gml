/// @description Take damage then destroy projectile and itself if health is below 0
health_ -= other.damage
alarm[2] = game_get_speed(gamespeed_fps)/5
flash = true
if health_ < 0 instance_destroy()

instance_destroy(other)