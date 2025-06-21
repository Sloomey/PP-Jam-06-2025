/// @description Frame by frame components

dir_facing = comp_inputMove(spd) ?? dir_facing;
build_mode = comp_inputBuild(build_mode, wpn);

if (hp <= 0)
{
	obj_spawn_control.spawn_player();
	instance_destroy();
}