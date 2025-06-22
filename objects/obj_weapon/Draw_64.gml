/// @description ?

draw_self();

if (instance_exists(obj_player))
{
	if (obj_player.hovering_over_wpn == id && obj_player.wpn != id)
	{
		draw_set_color(c_black);
		draw_set_alpha(0.5);
	
		draw_rectangle(x - 100, y - 140, x + 100, y - 50, false);
	
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_set_halign(fa_center);
	
		draw_text(x, y - 130, name)
		draw_text(x, y - 100, "DMG: " + string(dmg))
		draw_text(x, y - 80, "MAG: " + string(magSize))
	}
}