global._part_system = part_system_create();

part_system_automatic_update(global._part_system, true);
part_system_automatic_draw(global._part_system, false);
var _fps = game_get_speed(gamespeed_fps);

/* Flames */
global._part_type_0 = part_type_create();
part_type_speed(global._part_type_0, 0, 0, 0, 0);
part_type_direction(global._part_type_0, 0, 0, 0, 0);
part_type_gravity(global._part_type_0, 0.20, 90);
part_type_orientation(global._part_type_0, 0, 0, 0, 0, 0);
part_type_scale(global._part_type_0, 0.25, 0.35);
part_type_life(global._part_type_0, 0.25 * _fps, 0.50 * _fps);
part_type_blend(global._part_type_0, true);
part_type_color2(global._part_type_0, 14591, 255);
part_type_alpha2(global._part_type_0, 1, 0);
part_type_shape(global._part_type_0, pt_shape_sphere);
/* Smoke */
global._part_type_1 = part_type_create();
part_type_speed(global._part_type_1, 0, 0, 0, 0);
part_type_direction(global._part_type_1, 0, 0, 0, 0);
part_type_gravity(global._part_type_1, 0.20, 90);
part_type_orientation(global._part_type_1, 0, 0, 0, 0, 0);
part_type_scale(global._part_type_1, 0.6, 0.75);
part_type_life(global._part_type_1, 2 * _fps, 2 * _fps);
part_type_blend(global._part_type_1, false);
part_type_color3(global._part_type_1, 16777215, 8421504, 16777215);
part_type_alpha3(global._part_type_1, 0, 0.02, 0);
part_type_shape(global._part_type_1, pt_shape_smoke);

part_type_step(global._part_type_0, ceil(20/ _fps), global._part_type_1);