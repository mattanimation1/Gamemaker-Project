/*if place_meeting(x,y, oSkyBlock) {
	instance_destroy(instance_nearest(x,y,oSkyBlock))
	
}
if place_meeting(x,y, oUnderGroundLightSquare) 
{	
	instance_destroy(instance_nearest(x,y,oUnderGroundLightSquare))
}*/

if  original == true && image_index != 4 && image_index != 22 {
	var back = instance_create_depth(x,y,10,oBackObject)
	back.image_index = image_index
	back.original = false
	back.depth = 10;
}
