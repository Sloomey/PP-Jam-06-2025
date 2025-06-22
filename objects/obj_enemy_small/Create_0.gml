/// @description Initiate Variables

maxHp = 33;
hp = maxHp;
wpn = instance_create_layer(x, y, layer, obj_weapon);
wpn.held_by = id;

path_start(Path1, 3, path_action_stop, 1);

alarm_set(0, 30);