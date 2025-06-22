if (instance_exists(obj_player))
{
	if (!collision_line(x, y, obj_player.x, obj_player.y, obj_enemy_parent, 0, 1) && 
	!collision_line(x, y, obj_player.x, obj_player.y, obj_wall, 0, 1))
	{
		wpn.attack(x, y);
	
	}
}

alarm_set(0, 30 );