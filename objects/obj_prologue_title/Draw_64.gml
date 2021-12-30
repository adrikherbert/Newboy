/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(alpha);
draw_set_color(c_white);
draw_set_font(f_newboy_title);
draw_set_halign(fa_left);
draw_set_valign(fa_center);

draw_text(drawx, drawy, cur);

if (dosub) {
	draw_set_alpha(alpha_sub);
	draw_set_halign(fa_center);
	draw_set_font(f_subtitle);
	draw_text(683, drawy + 100, subtitle);
}