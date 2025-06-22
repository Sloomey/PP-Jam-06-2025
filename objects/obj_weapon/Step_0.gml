/// @description ?

// If the instance dies it drops the gun
if (!instance_exists(held_by)) held_by = noone;

if (held_by != noone)
{
	// If the gun is being held by a player
	if (held_by.object_index == obj_player)
	{
		image_angle = point_direction(x, y, mouse_x, mouse_y);
	
<<<<<<< Updated upstream
		if (mouse_check_button_pressed(mb_left))
=======
			if (mouse_check_button_pressed(mb_left))
			{
				attack(x, y);
				
				// Creating a light from the gun
				with (instance_create_layer(x + lengthdir_x(sprite_width / 2, image_angle), y + lengthdir_y(sprite_width / 2, image_angle), layer, obj_light)) 
				{
					alarm_set(0, 2);
					image_xscale = 0.1;
					image_yscale = 0.1;
				}
			}
		}
		else
>>>>>>> Stashed changes
		{
			attack(x, y);
		}
	}
	else
	{
		image_angle = point_direction(x, y, obj_player.x, obj_player.y);
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