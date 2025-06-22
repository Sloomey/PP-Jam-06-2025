/// @description ?

// MONEY
draw_set_font(fnt_main)
draw_set_color(c_yellow)
draw_set_halign(fa_right)
draw_text(room_width - build_menu_x_padding, build_menu_y_padding, "$" + string(obj_control.money));

// MAG SIZE

draw_set_color(c_white)

if (instance_exists(obj_player))
{
	if (obj_player.wpn != noone)
	{
		if (!obj_player.wpn.alarm[0])
		{
			var magLeft = obj_player.wpn.magLeft;
			var magSize = obj_player.wpn.magSize

			draw_text(room_width - build_menu_x_padding, build_menu_y_padding * 3, string(magLeft) + "/" + string(magSize));
		}
		else
		{
			draw_text(room_width - build_menu_x_padding, build_menu_y_padding * 3, "Reloading");
		}
	}
	else
	{
		draw_text(room_width - build_menu_x_padding, build_menu_y_padding * 3, "0/0");
	}
}
else
{
	draw_text(room_width - build_menu_x_padding, build_menu_y_padding * 3, "0/0");
}

// COUNTDOWN
if (obj_control.state == Gamestate.Setup)
{
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_set_halign(fa_center);
	draw_text(room_width / 2, 20, "Setup (Press Space To Proceed)");
}



if (instance_exists(obj_player))
{
	if (obj_player.build_mode) // Build menu
	{
		draw_set_color(c_black);
		draw_set_alpha(0.5);
		draw_rectangle(0,0, build_menu_w, room_height, false);
		
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_set_halign(fa_left)
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