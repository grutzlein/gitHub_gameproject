var dx = 16;
var dy = 16;
var barw = 256;
var barh = 32;

draw_set_font(Font1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var health_barw = barw * (hp / hpTotal);

draw_sprite_stretched(spr_box, 0, dx, dy, barw, barh);
draw_sprite_stretched_ext(spr_box, 1, dx, dy, health_barw, barh, c_red, 0.6);

draw_text(dx + barw / 2, dy + barh / 2, "HP");


var xp_barw = barw * (xp / xpRequire);
dy += barh + 8;

draw_sprite_stretched(spr_box, 0, dx, dy, barw, barh);
draw_sprite_stretched_ext(spr_box, 1, dx, dy, xp_barw, barh, c_blue, 0.6);

draw_text(dx + barw / 2, dy + barh / 2, $"LEVEL{lvl}");

draw_set_halign(fa_left);
draw_set_valign(fa_top);