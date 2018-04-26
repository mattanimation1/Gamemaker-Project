/// @description Sword thrust
swordThrust += 1;
if swordThrust != 7 {
	alarm[2] = game_get_speed(gamespeed_fps)/59
} else {
	swordThrust = 0
	instance_destroy(oSwordCollisons)
}