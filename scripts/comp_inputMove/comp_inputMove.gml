// Input component to move entity

function comp_inputMove(_speed)
{
	var input = {
		
	left : keyboard_check(ord("A")),
	right : keyboard_check(ord("D")),
	up : keyboard_check(ord("W")), 
	down : keyboard_check(ord("S")),
	
	}
	
	var input_h = input.right - input.left;
	var input_v = input.down - input.up;
	
    var mag = clamp(point_distance(0, 0, input_h, input_v), 0, 1); // Normalizing
    var dir = point_direction(0, 0, input_h, input_v);
    
    // Figuring out the exact distance x and y that has to be moved
    var dir_x = lengthdir_x(mag, dir) * _speed;
    var dir_y = lengthdir_y(mag, dir) * _speed;
    
    // Moving the entity if the magnitude is above 0 (trying to move)
    if (mag > 0)
    {
        move_and_collide(dir_x, dir_y, obj_wall);
		sprite_index = spr_player;
		if (dir_x < 0)
		{
			image_xscale = -1;
		}
		else if (dir_x > 0)
		{
			image_xscale = 1;
		}
		
		return dir // To know which way it is facing
    }
	else
	{
		sprite_index = spr_player_idle;
	}
	

}
