global._part_emitter_0 = part_emitter_create(global._part_system);
part_emitter_region(global._part_system, global._part_emitter_0, self.x - 16, self.x + 16, self.y - 16, self.y + 16, ps_shape_ellipse, ps_distr_gaussian);
var _odds = 160;
var _rate = _odds / game_get_speed(gamespeed_fps);
part_emitter_stream(global._part_system, global._part_emitter_0, global._part_type_0, _rate);