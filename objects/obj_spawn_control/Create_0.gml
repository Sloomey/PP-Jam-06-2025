spawn_timer = 60;

enemies_spawned = 0;
enemies_per_round = [3, 5, 7, 9, 11];
enemies_to_spawn = enemies_per_round[obj_control.game_round - 1];

function start_wave()
{
	alarm_set(0, 120);
	
}

function spawn_player()
{
	alarm_set(1, 180);
}