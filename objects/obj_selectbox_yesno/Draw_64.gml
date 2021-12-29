/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr, 0, spr_x, spr_y, xscale, yscale, 0, c_white, 1);

if (dotext) {
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_font(f_robot_text);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	draw_text_ext(spr_x - 490, spr_y - 95, cur_string, 38, 765);
}

if (selectvalue == 0) draw_set_color(c_aqua);
else draw_set_color(c_white);

if (selectyes) {
	draw_text(spr_x + 335, spr_y - 65, select[0]);
}

if (selectvalue == 1) draw_set_color(c_aqua);
else draw_set_color(c_white);

if (selectno) {
	draw_text(spr_x + 335, spr_y + 25, select[1]);
}