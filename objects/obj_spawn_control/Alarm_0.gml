if (enemies_spawned < enemies_to_spawn)
{
	if (irandom(10) <= 6)
	{
		instance_create_layer(x, y, "Instances", obj_enemy);
	}
	else if (irandom(10) <= 8)
	{
		instance_create_layer(x, y, "Instances", obj_enemy_small);
	}
	else
	{
		instance_create_layer(x, y, "Instances", obj_enemy_flying);
	}
	enemies_spawned++;
	alarm_set(0, 30 + irandom(90));
}