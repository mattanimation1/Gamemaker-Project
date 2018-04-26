mf=4
mk=2
mt=2

//Bottom Layer of the tree
for(f = 0; f <= mf; f++) {
	var wood = instance_create_depth((x-64)+(f*32),y-((mt+2)*32), 0, oCollison)
	wood.image_index = 22;
	wood.image_speed = 0;
	wood.original = true;
}
//Top layer of the tree
for(k = 0; k <= mk; k++) {
	var wood = instance_create_depth((x-32)+(k*32),y-((mt+2)*32)-32, 0, oCollison)
	wood.image_index = 22;
	wood.image_speed = 0;
	wood.original = true;
}
//Create the trunk
for(t = 0; t <= mt; t++) {
	var wood = instance_create_depth(x,y-(t*32)-32, 1, oCollison)
	wood.image_index = 4;
	wood.image_speed = 0;
	wood.depth = 10;
	wood.original = true;
}