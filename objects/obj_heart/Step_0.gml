/// @description Insert description here
// You can write your code in this editor

image_xscale += 0.004;
image_yscale += 0.004;

if (count2 % 30 == 0) {
	ghost = instance_create_depth(x, y, -20, obj_heart_ghost);
	ghost.image_xscale = image_xscale;
	ghost.image_yscale = image_yscale;
	ghost.image_alpha = image_alpha;
}

if (!fadeout && image_alpha < 1) image_alpha += 0.00175;
else docount = true;

if (docount) count++;

if (count == 60) fadeout = true;

cover.image_alpha = image_alpha - 0.1;

if (fadeout && image_alpha > 0) {
	image_alpha -= 0.1;
	if (image_alpha <= 0) {
		obj_c_birthroom.trigger++;
		instance_destroy(cover);
		instance_destroy();
	}
}

count2++;