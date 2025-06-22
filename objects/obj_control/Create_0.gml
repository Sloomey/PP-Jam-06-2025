enum Gamestate {
	Setup,
	Play,
	Pause
}

start_timer = 900;

state = Gamestate.Setup;
alarm_set(0, start_timer);
