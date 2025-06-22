/// @description Initiate Variables

hp = 200;
hpMax = 200;
spd = 4;

wpn = instance_create_layer(x, y, layer, obj_weapon);
wpn.held_by = id;

build_mode = false;

dir_facing = 0; // Which direction player is facing

hovering_over_wpn = false;