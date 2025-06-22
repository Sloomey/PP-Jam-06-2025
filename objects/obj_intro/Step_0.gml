/// @description ?



if (!fade_out) fade_in = clamp(fade_in + 0.0025, 0, 1)
else
{
	fade_in = clamp(fade_in - 0.005, 0, 1)
	if (fade_in <= 0) room_goto(Room1)
}

if (keyboard_check_pressed(vk_anykey)) fade_out = true;