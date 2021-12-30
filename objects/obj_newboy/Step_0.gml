/// @description Insert description here
// You can write your code in this editor

k_left = keyboard_check(vk_left);
k_right = keyboard_check(vk_right);
k_up = keyboard_check_pressed(vk_up);

go = k_right - k_left;
vsp = vsp + grav;

if (move) {
	if (jump && k_up && vsp > 0) plan_jump = true;

	if (!jump && k_up) {
		y--;
		jump = true;
		vsp = -10;
	}

	next_floor = tilemap_get_at_pixel(floor_tiles, x + go * 10, y);
	if (next_floor = 0) {
		x += go * sp;
	}

	player_animate(go, self);

}


above_floor = tilemap_get_at_pixel(floor_tiles, x, y+1);
if (above_floor == 0) {
	y += vsp;
} else {
	while (tilemap_get_at_pixel(floor_tiles, x, y) != 0) y -= 1;
	jump = false;
	
	if (plan_jump) {
		plan_jump = false;
		y--;
		vsp = -10;
		jump = true;
	}
}