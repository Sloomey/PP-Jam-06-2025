
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
	state =  newstate;
	if (newstate == Gamestate.Setup)
	{
		with (obj_weapon)
		{
			if (held_by == noone) instance_destroy();
		}
	}
}

