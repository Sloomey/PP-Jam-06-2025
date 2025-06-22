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
	
	if (_buildModeToggle) // If the build mode is turned on
	{
		if (mouse_wheel_down() || keyboard_check_pressed(vk_down))
		{
			obj_gui.build_menu_select = clamp(obj_gui.build_menu_select + 1, 0, array_length(DATA.traps) - 1);
		}
		else if (mouse_wheel_up() || keyboard_check_pressed(vk_up))
		{
			obj_gui.build_menu_select = clamp(obj_gui.build_menu_select - 1, 0, array_length(DATA.traps) - 1);
		}
		
		if (mouse_check_button_pressed(mb_left)) // If selected
		{		
			instance_create_layer(obj_example_trap.x, obj_example_trap.y, layer, DATA.traps[obj_gui.build_menu_select]);	
		}
	}
	
	_buildModeToggle = _buildModeToggle ?? false; // This is in case it is undefined
	return _buildModeToggle
}

function comp_toggleBuildMode(_buildModeToggle, _weaponToHide = noone,)
{
	
}