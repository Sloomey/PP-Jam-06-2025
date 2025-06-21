function move_normalized(_h, _v, _speed)
{
	var mag = clamp(point_distance(0, 0, _h, _v), 0, 1); // Normalizing
    var dir = point_direction(0, 0, _h, _v);
    
    // Figuring out the exact distance x and y that has to be moved
    var dir_x = lengthdir_x(mag, dir) * _speed;
    var dir_y = lengthdir_y(mag, dir) * _speed;
	
	// Moving the entity if the magnitude is above 0 (trying to move)
    if (mag > 0)
    {
        move_and_collide(dir_x, dir_y, obj_wall);
    }
}