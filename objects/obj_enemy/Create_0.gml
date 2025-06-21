/// @description Initiate Variables

hp = 100;
spd = 2;
wpn = instance_create_layer(x, y, layer, obj_weapon);
wpn.held_by = id;

passive = true;
passive_wander_refresh = 300; // 60 is one second
alarm_set(0, 1);


h = 0;
v = 0;
move_time = 0;
move_stop_time = 150; // 60 is one second
