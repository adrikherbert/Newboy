/// @description Insert description here
// You can write your code in this editor

if (fade) {
	if (count % 60 == 0) {
		audio_play_sound(s_makerman_enter, -10, false);
		image_alpha += 0.2;
	}
	if (image_alpha >= 1) {
		fade = false;
		doanimate = true;
	}
}

if (doanimate && count % 400 == 0) animate = true;

if (animate && image_index != 23) {
	if (count % 3 == 0) image_index++;
} else {
	image_index = 0;
	animate = false;
}

if (docount) count++;
else count = 0;