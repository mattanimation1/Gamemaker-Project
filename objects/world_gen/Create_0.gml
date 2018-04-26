randomize()
p = 41; //Height to gen
v = 2; //Increase height to generate
a = -1; //Decrease v by one
t = 1 //The chance out of ten to create a tree
g = 1 //Chance out of 50 to make a gold vein appear
c = 100 //Chance for cave to occur
;

for(i=0; i<room_width; i+=32) {
	if round(random_range(0,50)) == 100 {
		d = 1
		var caveX = 0;
		var caveY = 0;
		instance_create_depth(i+caveX,room_height-(p*32)+caveY-96, -100, oAir)
		instance_create_depth(i+32+caveX,room_height-(p*32)+caveY-96, -100, oAir)
		instance_create_depth(i+caveX,room_height-(p*32)+caveY-64, -100, oAir)
		instance_create_depth(i+32+caveX,room_height-(p*32)+caveY-64, -100, oAir)
		instance_create_depth(i+caveX,room_height-(p*32)+caveY-32, -100, oAir)
		instance_create_depth(i+32+caveX,room_height-(p*32)+caveY-32, -100, oAir)
		instance_create_depth(i+caveX,room_height-(p*32)+caveY, -100, oAir)
		instance_create_depth(i+32+caveX,room_height-(p*32)+caveY, -100, oAir)
		instance_create_depth(i+32+caveX,room_height-(p*32)+caveY+32, -100, oAir)
		instance_create_depth(i+caveX,room_height-(p*32)+caveY+32, -100, oAir)
		d-=0.1
		for(caveSize = 100; caveSize > 0; caveSize -=1) {
			caveGen = choose(0,1,2,3,4)
			switch(caveGen)
			{
				case 0:
				instance_create_depth(i+caveX,room_height-(p*32)+caveY, -100, oAir)
				instance_create_depth(i+32+caveX,room_height-(p*32)+caveY, -100, oAir)
				instance_create_depth(i+32+caveX,room_height-(p*32)+caveY+32, -100, oAir)
				instance_create_depth(i+caveX,room_height-(p*32)+caveY+32, -100, oAir)
				caveX += 32;
				caveY += 32;
				d-=0.1
				break;
				case 1:
				instance_create_depth(i+caveX,room_height-(p*32)+caveY, -100, oAir)
				instance_create_depth(i+caveX,room_height-(p*32)+caveY+32, -100, oAir)
				instance_create_depth(i+caveX+32,room_height-(p*32)+caveY, -100, oAir)
				instance_create_depth(i+caveX+32,room_height-(p*32)+caveY+32, -100, oAir)
				instance_create_depth(i+caveX,room_height-(p*32)+caveY+64, -100, oAir)
				instance_create_depth(i+caveX,room_height-(p*32)+caveY+96, -100, oAir)
				instance_create_depth(i+caveX+32,room_height-(p*32)+caveY+64, -100, oAir)
				instance_create_depth(i+caveX+32,room_height-(p*32)+caveY+96, -100, oAir)
				d-=0.1
				caveY += 96;
				break;
				case 2:
				instance_create_depth(i+caveX,room_height-(p*32)+caveY, -100, oAir)
				instance_create_depth(i+32+caveX,room_height-(p*32)+caveY, -100, oAir)
				instance_create_depth(i+caveX,room_height-(p*32)+caveY+32, -100, oAir)
				instance_create_depth(i+32+caveX,room_height-(p*32)+caveY+32, -100, oAir)	
				instance_create_depth(i+64+caveX,room_height-(p*32)+caveY, -100, oAir)
				instance_create_depth(i+96+caveX,room_height-(p*32)+caveY, -100, oAir)
				instance_create_depth(i+64+caveX,room_height-(p*32)+caveY+32, -100, oAir)
				instance_create_depth(i+96+caveX,room_height-(p*32)+caveY+32, -100, oAir)
				d-=0.1
				caveX += 96;
				break;
				case 3:
				instance_create_depth(i+caveX,room_height-(p*32)+caveY, -100, oAir)
				instance_create_depth(i+32+caveX,room_height-(p*32)+caveY, -100, oAir)
				instance_create_depth(i+caveX,room_height-(p*32)+caveY+32, -100, oAir)
				instance_create_depth(i+32+caveX,room_height-(p*32)+caveY+32, -100, oAir)	
				instance_create_depth(i+64+caveX,room_height-(p*32)+caveY, -100, oAir)
				instance_create_depth(i+64+caveX,room_height-(p*32)+caveY+32, -100, oAir)
				d-=0.1
				caveX += 64;
				break;
				case 4:
				instance_create_depth(i+caveX,room_height-(p*32)+caveY, -100, oAir)
				instance_create_depth(i+caveX,room_height-(p*32)+caveY+32, -100, oAir)
				instance_create_depth(i+caveX+32,room_height-(p*32)+caveY, -100, oAir)
				instance_create_depth(i+caveX+32,room_height-(p*32)+caveY+32, -100, oAir)
				instance_create_depth(i+caveX,room_height-(p*32)+caveY+64, -100, oAir)
				instance_create_depth(i+caveX+32,room_height-(p*32)+caveY+64, -100, oAir)
				caveY += 64;
				d-=0.1
				break;
			}
			
		}
	}  else
	var n = 0;
		for(j = 43 - p; j != 0; j--)
		{
			instance_create_depth(i+32,480+n,-100,oSkyBlock)
			n += 32
		}
		var create_grass = instance_create_depth(i,room_height-(p*32),0,oCollison)
		create_grass.image_index = 2;
		create_grass.original = true;
		instance_create_depth(i,room_height-(p*32),0,oSkyBlock)
		if t == round(random_range(1,20)) {
			instance_create_depth(i,room_height-(p*32),0,oTree)
	}
	for(m=room_height-((p-1)*32);m<room_height; m+= 32) {
		if !place_meeting(i,m,oUnderGroundLightSquare) {
			if m == room_height-((p-1)*32)+64 {
				var create_dirt = instance_create_depth(i,m,0, oCollison)
				create_dirt.image_index = 1;
				create_dirt.original = true;
				instance_create_depth(i,m,0, oUnderGroundLightSquare)
			} else if m<room_height-((p-4)*32) {
				var create_dirt = instance_create_depth(i,m,0, oCollison)
				create_dirt.image_index = 1;
				create_dirt.original = true;
				instance_create_depth(i,m,0, oSkyBlock)
			}
	
		}
	}
	instance_create_depth(i,room_height-((p-1)*32)+(32*3),0, oUnderGroundLightSquare)
	instance_create_depth(i,room_height-((p-1)*32)+(32*4),0, oUnderGroundLightSquare)
	instance_create_depth(i,room_height-((p-1)*32)+(32*5),0, oUnderGroundLightSquare)
	for(b=room_height-((p-4)*32);b<room_height-32; b+= 32) {
		if g == round(random_range(1,150)) && b > 300 {
			ore_vein(7,6)	
		}
		if g == round(random_range(1,150)) && b > 300 {
			ore_vein(7,5)	
		}
		if g == round(random_range(1,150)) && b > 300 {
			ore_vein(7,12)	
		} else{
			var create_stone = instance_create_depth(i,b,0, oCollison)
			create_stone.image_index = 3;
			create_stone.original = true;
			
		}
		
	}
	//instance_create_depth(i,1504,0,oBedrock)
	v+=a
	p+=v
	a=choose(-1,-1,0,0,0,0,0,0,1,2)
	if p >40 {p=40 v= 0 a =-abs(a)}
	if p <35  {p=35 v= 0 a = abs(a)}
	
	
	
	
	
}


instance_destroy()
