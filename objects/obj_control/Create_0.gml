
/// @description ?

money = 0;

enum Gamestate {
	Setup,
	Play,
	Pause
}

state = Gamestate.Play;
set_state(Gamestate.Setup);


function set_state(newstate)
{
	switch (newstate)
	{
		case Gamestate.Setup:
		
			obj_lighting_controller.darkness_alpha_real = 0
		break;
		
		case Gamestate.Play:
		
			if (state == Gamestate.Setup)
			{
				obj_lighting_controller.alarm[0] = 1;
				
				with (obj_weapon)
				{
					if (held_by == noone) instance_destroy();
				}
			}
		break;
	}
	
	state =  newstate;
}

