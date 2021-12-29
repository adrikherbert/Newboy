/// @description Insert description here
// You can write your code in this editor

if (!fadeout && image_alpha < 1) image_alpha += 0.002;
else fadeout = true;

if (fadeout) {
	if (!newboy) {
		newboy_obj = instance_create_depth(704, 500, 50, obj_newboy);
		newboy_obj.image_xscale = 4;
		newboy_obj.image_yscale = 4;
		newboy = true;
	}
	
	if (image_alpha > 0) image_alpha -= 0.05;
	else instance_destroy();
}

if (count % 10 == 0) instance_create_depth(704, 500, -100, obj_dazzles);
if (count % 2 == 0) instance_create_depth(704, 500, -50, obj_machine_flash_2);

count++;