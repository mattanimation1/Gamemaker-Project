image_speed = 0;
speed = 8;
rocket = false;

explosions = part_system_create()
explosion = part_type_create()


part_system_depth(explosions,10) 

part_type_color1(explosion,c_dkgray) 
part_type_direction(explosion,0,0,0,0) 
part_type_life(explosion,15,25) 
part_type_shape(explosion,pt_shape_explosion) 
part_type_size(explosion,0.3,0.3,0.3,0.5) 
part_type_alpha3(explosion,1,0.8,0)
part_type_blend(explosion,0) 
em = part_emitter_create(explosions)


damage = 0;