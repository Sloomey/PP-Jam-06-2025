/// @description Drawing extra surfaces
#region Lighting 

var cam = view_get_camera(0);
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

// Making the lighting surface in case game is minimized or it destroys randomly
if (!surface_exists(light_surface)) light_surface = surface_create(cam_w, cam_h);

// Drawing The Darkness
surface_set_target(light_surface);
draw_clear_alpha(darkness_col, darkness_alpha); // THIS IS WHERE HOW DARK IT WILL BE IS 
camera_apply(cam); // Fixing the camera because the surface resets it

// Poking holes of light
gpu_set_blendmode(bm_subtract);

var scale = 2 + 0.125 * sin(current_time / light_dim_time);

with (obj_light)
{
	draw_sprite_ext(spr_light, 0, x, y, image_xscale * scale, image_yscale * scale, 0, c_white, 1);
}

gpu_set_blendmode(bm_normal);

surface_reset_target();

draw_surface(light_surface, 0, 0);

with (obj_light)
{
	draw_sprite_ext(spr_light, 0, x, y, image_xscale * scale, image_yscale * scale, 0, other.light_col, other.light_alpha);
}