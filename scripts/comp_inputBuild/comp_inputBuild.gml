function comp_inputBuild(_buildModeToggle, _weaponToHide = noone,)
{
	if (keyboard_check_pressed(ord("B")))
	{
		_buildModeToggle = !_buildModeToggle
		
		if (_weaponToHide != noone) // Hides the weapon while in build mode
		{
			holster_weapon(_buildModeToggle, _weaponToHide);
		}
		
		if (_buildModeToggle) // If the build mode is turned on
		{
			instance_create_layer(x, y, layer, obj_example_trap)
		}
		
		else // If the build mode is turned off
		{
			if instance_exists(obj_example_trap)
			{
				with (obj_example_trap) instance_destroy();
			}
		}
		
	}
	
	_buildModeToggle = _buildModeToggle ?? false; // This is in case it is undefined
	return _buildModeToggle
}