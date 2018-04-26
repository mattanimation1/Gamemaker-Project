/// @description crafting_recipe_add(id, req1, req2, req3, reqAmount1, reqAmount2, reqAmount3)
/// @function crafting_recipe_add
/// @param id
/// @param req1
/// @param req2
/// @param req3
/// @param reqAmount1
/// @param reqAmount2
/// @param reqAmount3

var iid = argument0;
global.crafting_index[# iid, 0] = argument0;
global.crafting_index[# iid, 1] = argument1;
global.crafting_index[# iid, 2] = argument2;
global.crafting_index[# iid, 3] = argument3;
global.crafting_index[# iid, 4] = argument4;
global.crafting_index[# iid, 5] = argument5;
global.crafting_index[# iid, 6] = argument6;