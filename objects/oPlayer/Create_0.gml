
///@description Create the vars
speed_ = [0, 0];
gravity_ = 0.8;
acceleration_ = 1.6;
jump_height_ = -16;
max_speed_ = 8;
friction_ = .1;

//Weapon Charge
max_charge = 120;
charge = max_charge


//Key mapping
keyboard_set_map(ord("D"), vk_right)
keyboard_set_map(ord("W"), vk_up)
keyboard_set_map(ord("A"), vk_left)
keyboard_set_map(ord("S"), vk_down)
keyboard_set_map(vk_space, vk_up)

//Scale Variables
image_xscale = 1;
image_yscale = 1;
x_scale_ = image_xscale*4;
y_scale_ = image_yscale;

image_speed = 16;

//Movement macros
#macro h 0
#macro ve 1



//Set the tool to not locked
global.selected = 0;
tool_locked = false;
depth = 1

//Set bullet speed
alarm[0] = game_get_speed(gamespeed_fps)/4


//Create flame particle
fire = part_system_create()
flame = part_type_create()
smoke = part_type_create()

dirc = 0;

part_system_depth(fire,10) //Set the depth of which to create the fire

part_type_color2(flame,c_yellow,c_red) //Set the color of the flame
part_type_direction(flame,dirc-1,dirc+1,0,0) //Set the direction the flame goes
part_type_life(flame,15,25) //Set the life of the flame
part_type_shape(flame,pt_shape_smoke) //Set the particle shape of the flame
part_type_speed(flame,10,12,0,0.25) //Set the speed the flame travels
part_type_size(flame,0.15,0.2,0.014,0.003) //Set the size of the flame
part_type_alpha3(flame,1,0.8,0) //Set the alpha of the flame
part_type_blend(flame,1) //Set the blend type of the flame


part_type_color2(smoke,c_gray,c_black)
part_type_direction(smoke,dirc-1,dirc+1,0,0)
part_type_life(smoke,25,35)
part_type_shape(smoke,pt_shape_smoke)
part_type_speed(smoke,9,11,0,0.25)
part_type_size(smoke,0.15,0.2,0.016,0.003)
part_type_alpha3(smoke,1,0.8,0)
part_type_blend(smoke,0)


em = part_emitter_create(fire)
inventory_gain_item(23, 1)
inventory_gain_item(24, 1)
spearThrust = 0
swordThrust = 0