/// @description ?
if (instance_exists(obj_player))
{
	if (!placed)
	{
		x = obj_player.x + lengthdir_x(distance_from_player, obj_player.dir_facing)
		y = obj_player.y + lengthdir_y(distance_from_player, obj_player.dir_facing)
	}
}
else
{
	instance_destroy();
}