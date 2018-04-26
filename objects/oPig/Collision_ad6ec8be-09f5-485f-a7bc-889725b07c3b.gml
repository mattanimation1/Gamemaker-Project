/// @description Take damage then destroy projectile and itself if health is below 0
health_ -= other.damage

if health_ < 0 instance_destroy()

instance_destroy(other)