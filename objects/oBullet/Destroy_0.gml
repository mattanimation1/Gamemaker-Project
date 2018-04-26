if rocket == true {
	//Set region to create
	part_emitter_region(explosions,em,x,x,y,y,ps_shape_rectangle,ps_distr_linear)
	
	//Create particles
	part_emitter_burst(explosions,em,explosion,1)
	instance_create_depth(x,y,0,oExplosion)
}
