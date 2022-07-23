part_system_drawit(global._part_system);

var camera = view_get_camera(0);

if (!surface_exists(self.light_surface)) {
    var cam_width = camera_get_view_width(camera);
    var cam_height = camera_get_view_height(camera);
    
    self.light_surface = surface_create(cam_width, cam_height);
}

surface_set_target(self.light_surface);
draw_clear(#000020);
camera_apply(camera);

gpu_set_blendmode(bm_subtract);

var scale = 2 + 0.125 * sin(current_time / 150);
var sprite = spr_light;

with (obj_torch) {
    draw_sprite_ext(sprite, 0, self.x, self.y, scale, scale, 0, c_white, 1);
}

with (obj_player) {
    draw_sprite_ext(sprite, 0, self.x, self.y, scale, scale, 0, c_white, 1);
}

gpu_set_blendmode(bm_normal);

surface_reset_target();