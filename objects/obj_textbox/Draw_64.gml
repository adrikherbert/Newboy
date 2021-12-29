/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr, 0, spr_x, spr_y, xscale, yscale, 0, c_white, 1);

if (dotext) {
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_font(f_robot_text);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	if (cur < array_length(img)) draw_sprite_ext(img_spr, img[cur], spr_x - 490, spr_y - 94, 2, 2, 0, c_white, 1);
	else draw_sprite_ext(img_spr, 0, spr_x - 490, spr_y - 94, 2, 2, 0, c_white, 1);
	
	draw_text_ext(spr_x - 265, spr_y - 95, cur_string, 38, 765);
}