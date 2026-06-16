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
draw_sprite_stretched_ext(spr_box, 1, dx, dy, xp_barw, barh, c_lime, 0.6);

draw_text(dx + barw / 2, dy + barh / 2, $"LEVEL{lvl}");


var mana_barw = barw * (mana / manaTotal);
dy += barh + 16;

draw_sprite_stretched(spr_box, 0, dx, dy, barw, barh);
draw_sprite_stretched_ext(spr_box, 1, dx, dy, mana_barw, barh, c_blue, 0.6);

draw_text(dx + barw / 2, dy + barh / 2, "MANA");

draw_set_halign(fa_left);
draw_set_valign(fa_top);

if (currentlyTalking != noone) {
	var x1 = 300;
	var y1 = window_get_height() - 160;
	var x2 = window_get_width() - 300;
	var y2 = window_get_height() - 32;
	
	/*draw_set_colour(c_black); 
	draw_rectangle(x1,y1,x2,y2, false);*/
	
	var box_w = x2 - x1;
	var box_h = y2 - y1;
	
	speaker_name = "Hurt Sensei:";
	
	draw_set_alpha(0.85);
	draw_sprite_stretched(spr_textbox_2,0,x1,y1,box_w,box_h);
	draw_set_alpha(1);
	
	var text_Padding = 32;
	/*var text_x = x1 + text_Padding;
	var text_y = y1 + text_Padding;
	var text_w = box_w - text_Padding * 2;*/
	var portrait_w = 96;

	var text_x = x1 + portrait_w + 20;
	var text_y = y1 + 30;
	var text_w = box_w - portrait_w - 40;
	
	draw_set_colour(c_yellow);
	draw_text(text_x, y1 , speaker_name);
	
	speaker_sprite = spr_npc_sensei_talkl;
	draw_sprite_ext(speaker_sprite,0, x1 + 10, y1 + 10,2,2,0,c_white,1);
	
	
	
	
	draw_set_colour(c_white);
	draw_set_font(font_dialogue)
	draw_text_ext(text_x,text_y,string_copy(currentText,1,current_text_index), -1, text_w);
	current_text_index ++;
}
