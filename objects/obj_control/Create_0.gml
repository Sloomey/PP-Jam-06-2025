
/// @description ?

money = 0;
game_round = 1;

enum Gamestate {
	Setup,
	Play,
	Pause
}

state = Gamestate.Play;
set_state(Gamestate.Setup);

function get_round()
{
	return game_round;
}

function advance_round()
{
	game_round++;
}

function set_state(newstate)
{
	switch (newstate)
	{
		case Gamestate.Setup:
		
			obj_lighting_controller.darkness_alpha_real = 0;
			
		break;
		
		case Gamestate.Play:
			
			if (state == Gamestate.Setup)
			{
				obj_lighting_controller.alarm[0] = 1;
				
				with (obj_weapon)
				{
					if (held_by == noone) instance_destroy();
				}
				
				obj_spawn_control.start_wave();
			}
		break;
	}
	
	state =  newstate;
}

