application_surface_draw_enable(false);

var camera = view_get_camera(0);
var cam_width = camera_get_view_width(camera);
var cam_height = camera_get_view_height(camera);

light_surface = surface_create(cam_width, cam_height);