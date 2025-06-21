if (hp <= 0)
{
	draw_text(window_get_width()/2, window_get_height()/2, "GAME OVER");
}
else
	draw_healthbar(x-50, y -60, x + 75, y - 70, hp, c_black, c_red, c_lime, 0, true, true);