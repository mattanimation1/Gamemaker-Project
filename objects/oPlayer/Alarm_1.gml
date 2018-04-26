/// @description Spear thrust
spearThrust += 1;
if spearThrust != 7 {
	alarm[1] = game_get_speed(gamespeed_fps)/59
	
} else {
	spearThrust = 0
	instance_destroy(oSpearCollisons)
}