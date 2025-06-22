draw_path(Path1,0, 0, 1);

if (state == Gamestate.Setup)
{
	draw_text(window_get_width()/2, 20, "Setup");
	draw_text(window_get_width()/2, 40, (start_timer div 60));
}