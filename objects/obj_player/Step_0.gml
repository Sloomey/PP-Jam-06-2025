/// @description Frame by frame components

dir_facing = comp_inputMove(spd) ?? dir_facing;
build_mode = comp_inputBuild(build_mode, wpn);

if (hp <= 0)
{
	obj_spawn_control.spawn_player();
	instance_destroy();
}

if (keyboard_check_pressed(ord("E")) && hovering_over_wpn != noone)
{
	wpn.held_by = noone;
	
	wpn = hovering_over_wpn;
	wpn.held_by = id;
}

if (keyboard_check_pressed(ord("R")) && wpn != noone)
{
	wpn.reload()
}