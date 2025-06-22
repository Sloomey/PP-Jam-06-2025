if (obj_control.state == Gamestate.Play && enemies_spawned == enemies_to_spawn && !instance_exists(obj_enemy))
{
	obj_control.set_state(Gamestate.Setup);
	enemies_spawned = 0;
}