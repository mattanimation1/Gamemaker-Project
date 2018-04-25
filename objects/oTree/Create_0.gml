//Create the trunk
for(t = 0; t <= 3; t++) {
	var wood = instance_create_depth(x,y-(t*32)-32, -1, oCollison)
	wood.image_index = 4;
	wood.image_speed = 0;
	wood.original = false;
}

//Bottom Layer of the tree
for(f = 0; f <= 4; f++) {
	var wood = instance_create_depth((x-64)+(f*32),y-(t*32), 0, oCollison)
	wood.image_index = 22;
	wood.image_speed = 0;
	wood.original = false;
}
//Top layer of the tree
for(k = 0; k <= 2; k++) {
	var wood = instance_create_depth((x-32)+(k*32),y-(t*32)-32, 0, oCollison)
	wood.image_index = 22;
	wood.image_speed = 0;
	wood.original = false;
}