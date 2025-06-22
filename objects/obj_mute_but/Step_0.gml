//Fullscreen and mute buttons
if position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)
{
	hovered = true;	
	if (mouse_check_button_pressed(mb_left))
	{
		if (!clicked)
		{
			audio_master_gain(0);
		}
		else
		{
			audio_master_gain(1);
		}
		clicked = !clicked;
	}
}
else
{
	hovered = false;
}
