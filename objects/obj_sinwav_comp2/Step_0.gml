/// @description Insert description here
// You can write your code in this editor

x--;

if (x == startx) instance_create_depth(x+width, y, 350, obj_sinwav_comp2);

if (x <= startx - width) instance_destroy();