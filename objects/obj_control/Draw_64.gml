draw_set_color(c_white);
//draw_path(Path1,0, 0, 1);
if (game_over)
{
	draw_text(window_get_width()/2, window_get_height()/2, "YOU WIN");
	obj_lighting_controller.darkness_alpha_real = 0;
}
