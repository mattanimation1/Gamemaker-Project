surface_set_target(surf)

draw_clear(c_black)

with(oSky)
{
	gpu_set_blendmode(bm_src_color)
	draw_sprite_ext(sSquareLight,0,0,0, 30, 1.07, 0, c_white,1)
	gpu_set_blendmode(bm_normal)
}
with(oSkyBlock)
{
	gpu_set_blendmode(bm_src_color)
	draw_sprite_ext(sSquareLight,0,x*other.surfScale,(y*other.surfScale), lightSize*other.surfScale, lightSize*other.surfScale, 0, c_white, lightStrength-global.daylight)
	gpu_set_blendmode(bm_normal)
}
with(oUnderGroundLightSquare)
{
	gpu_set_blendmode(bm_src_color)
	draw_sprite_ext(sSquareLight,0,x*other.surfScale,(y*other.surfScale), lightSize*other.surfScale, lightSize*other.surfScale, 0, c_white, lightStrength)
	gpu_set_blendmode(bm_normal)
}


with(oSkyCircle)
{
	gpu_set_blendmode(bm_src_color)
	draw_sprite_ext(sLightCircle,0,(x*other.surfScale),(y*other.surfScale), lightSize*other.surfScale, lightSize*other.surfScale, 0, c_white, lightStrength)
	gpu_set_blendmode(bm_normal)
}

	
surface_reset_target()
draw_surface_ext(surf,0,0,1/surfScale,1/surfScale,0,c_white,0.9)
