instance_create_layer(x, y, "Instances", obj_enemy);
alarm_set(0, 30 + irandom(200000));
if (enemies_spawned < enemies_to_spawn)
{
	instance_create_layer(x, y, "Instances", obj_enemy);
	enemies_spawned++;
	alarm_set(0, 30 + irandom(90));
}
