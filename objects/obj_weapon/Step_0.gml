/// @description ?

// If the instance dies it drops the gun
if (!instance_exists(held_by)) held_by = noone;

if (held_by != noone)
{
	if (instance_exists(obj_player))
	{
		// If the gun is being held by a player
		if (held_by.object_index == obj_player)
		{
			image_angle = point_direction(x, y, mouse_x, mouse_y);
	
			if (mouse_check_button_pressed(mb_left))
			{
				attack(x, y);
			}
		}
		else
		{
			image_angle = point_direction(x, y, obj_player.x, obj_player.y);
		}
	}
	
	if (image_angle > 90) && (image_angle < 270)
	{
		image_yscale = -1;
	}
	else
	{
		image_yscale = 1;
	}
	
	x = held_by.x + lengthdir_x(20, image_angle);
	y = held_by.y + lengthdir_y(20, image_angle);
}
else // if on the floor basically
{
	if (instance_exists(obj_player))
	{
		if (point_in_circle(obj_player.x, obj_player.y, x, y, hover_radius))
		{
			obj_player.hovering_over_wpn = id
		}
		else if (obj_player.hovering_over_wpn == id && !point_in_circle(obj_player.x, obj_player.y, x, y, hover_radius))
		{
			obj_player.hovering_over_wpn = noone;
		}
	}
}
