spawn_timer = 60;

enemies_spawned = 0;
enemies_to_spawn = 5;

function start_wave()
{
	alarm_set(0, 120);
	
}

function spawn_player()
{
	alarm_set(1, 180);
}