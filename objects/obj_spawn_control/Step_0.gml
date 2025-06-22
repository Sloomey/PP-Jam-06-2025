if (obj_control.state == Gamestate.Play && enemies_spawned == enemies_to_spawn && !instance_exists(obj_enemy_parent))
{
	obj_control.set_state(Gamestate.Setup);
	enemies_spawned = 0;
	obj_control.advance_round();
	
	//simple scaling
	enemies_to_spawn += 2;
	
	//more robust method of scaling based on array
	//enemies_to_spawn = enemies_per_round[obj_control.get_round() - 1];
}