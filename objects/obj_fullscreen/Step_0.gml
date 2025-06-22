//Fullscreen and mute buttons
if position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)
{
	hovered = true;	
	if (mouse_check_button_pressed(mb_left))
	{
		if (window_get_fullscreen())
		{
			window_set_fullscreen(false);
		}
		else
		{
			window_set_fullscreen(true);
		}
	}
}
else
{
	hovered = false;
}
