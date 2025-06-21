// Input component to move entity

function comp_inputMove(_speed)
{
	var input = {
		
	left : keyboard_check(ord("A")) || keyboard_check(vk_left),
	right : keyboard_check(ord("D")) || keyboard_check(vk_right),
	up : keyboard_check(ord("W")) || keyboard_check(vk_up),
	down : keyboard_check(ord("S")) || keyboard_check(vk_down),
	
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
		
		return dir // To know which way it is facing
    }
	

}
