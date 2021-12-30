/// @description Insert description here
// You can write your code in this editor

if (count % 2 == 0) {
	x--;

	if (x == startx) instance_create_depth(x+width, y, 350, obj_sinwav_comp1);

	if (x <= startx - width) instance_destroy();
}

count++;