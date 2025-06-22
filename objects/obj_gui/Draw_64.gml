/// @description ?

// MONEY
draw_set_font(fnt_main);
draw_set_halign(fa_right);

draw_set_color(c_white);
draw_text(room_width - build_menu_x_padding, build_menu_y_padding, "Round: " + string(obj_control.game_round));
draw_set_color(c_yellow);
draw_text(room_width - build_menu_x_padding, build_menu_y_padding * 3, "$" + string(obj_control.money));

// MAG SIZE

draw_set_color(c_white)

if (instance_exists(obj_player))
{
	if (obj_player.wpn != noone)
	{
		if (!obj_player.wpn.alarm[0])
		{
			var magLeft = obj_player.wpn.magLeft;
			var magSize = obj_player.wpn.magSize;

			draw_text(room_width - build_menu_x_padding, room_height - build_menu_y_padding * 5, string(magLeft) + "/" + string(magSize));
		}
		else
		{
			draw_text(room_width - build_menu_x_padding, room_height - build_menu_y_padding * 5, "Reloading");
		}
		
		draw_text(room_width - build_menu_x_padding, room_height - build_menu_y_padding * 3, "DMG: " + string(obj_player.wpn.dmg));
	}
	else
	{
		draw_text(room_width - build_menu_x_padding, room_height - build_menu_y_padding * 5, "0/0");
		draw_text(room_width - build_menu_x_padding, room_height - build_menu_y_padding * 3, "DMG: 0");
	}
}
else
{
	draw_text(room_width - build_menu_x_padding, room_height - build_menu_y_padding * 5, "0/0");
	draw_text(room_width - build_menu_x_padding, room_height - build_menu_y_padding * 3, "DMG: 0");
}

// COUNTDOWN
if (obj_control.state == Gamestate.Setup)
{
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_set_halign(fa_center);
	draw_text(room_width / 2, 20, "Setup (Press Space To Proceed)");
	draw_set_font(fnt_main_small);
	draw_text(room_width / 2, 50, "B for Build Menu");
}


// BUILD MENU
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
			draw_set_font(fnt_main);
			if (i == build_menu_select)
			{
				draw_text(0 + build_menu_x_padding, 0 + build_menu_y_padding + (build_menu_spacing * i), ">" + DATA.traps[i].name + " ($" + string(DATA.traps[i].price) + ")");
			}
			else
			{
				draw_text(0 + build_menu_x_padding, 0 + build_menu_y_padding + (build_menu_spacing * i), DATA.traps[i].name + " ($" + string(DATA.traps[i].price) + ")");
			}	
			draw_set_font(fnt_main_small);
			draw_text(0 + build_menu_x_padding, 0 + build_menu_y_padding + (build_menu_spacing * i) + 20, DATA.traps[i].description);
			
		}
	}
}

