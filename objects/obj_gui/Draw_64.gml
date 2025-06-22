/// @description ?

if (instance_exists(obj_player))
{
	if (obj_player.build_mode) // Build menu
	{
		draw_set_color(c_black);
		draw_set_alpha(0.5);
		draw_rectangle(0,0, build_menu_w, room_height, false);
		
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_set_font(fnt_main);
		
		for (var i = 0; i < array_length(DATA.traps); i++)
		{
			if (i == build_menu_select)
			{
				draw_text(0 + build_menu_x_padding, 0 + build_menu_y_padding + (build_menu_spacing * i), ">" + DATA.traps[i].name);
			}
			else
			{
				draw_text(0 + build_menu_x_padding, 0 + build_menu_y_padding + (build_menu_spacing * i), DATA.traps[i].name);
			}
		}
	}
}