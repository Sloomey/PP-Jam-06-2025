/// @description Initiate Variables

hp = 100;
wpn = instance_create_layer(x, y, layer, obj_shotgun);
wpn.held_by = id;

path_start(Path1, 2, path_action_stop, 1);

alarm_set(0, 30 + irandom(60));