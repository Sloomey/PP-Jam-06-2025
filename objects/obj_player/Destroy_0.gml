/// @description Clean things up on death

wpn.held_by = noone;
wpn = noone;

build_mode = false;

hovering_over_wpn = noone;

obj_control.money = max(obj_control.money - 50, 0) 