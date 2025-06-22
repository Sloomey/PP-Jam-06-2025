var cam = view_get_camera(0);
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

light_surface = surface_create(cam_w, cam_h);

darkness_alpha_real = 0;
