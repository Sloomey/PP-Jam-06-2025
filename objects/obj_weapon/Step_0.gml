/// @description ?

if (held_by != noone)
{
	// If the gun is being held by a player
	if (held_by.object_index == obj_player)
	{
		held_by.wpn.dir = point_direction(x, y, mouse_x, mouse_y);
	
		if (mouse_check_button_pressed(mb_left))
		{
			held_by.wpn.attack(x, y);
		}
	}
	
	image_angle = held_by.wpn.dir;
	
	if (image_angle > 90) && (image_angle < 270)
	{
		image_yscale = -1;
	}
	else
	{
		image_yscale = 1;
	}
	
	x = held_by.x + lengthdir_x(20, held_by.wpn.dir);
	y = held_by.y + lengthdir_y(20, held_by.wpn.dir);
}