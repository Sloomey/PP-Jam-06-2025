/// @description Frame by frame components

dir_facing = comp_inputMove(spd) ?? dir_facing;
build_mode = comp_inputBuild(build_mode, wpn);

if (hp <= 0)
{
	obj_spawn_control.spawn_player();
	instance_destroy();
}

if (build_mode)
{
	if (mouse_check_button_pressed(mb_left))
	{		
		instance_create_layer(obj_example_trap.x, obj_example_trap.y, layer, obj_trap_slow);
			
	}
}