/// @description Insert description here
// You can write your code in this editor

image_xscale += 0.1;
image_yscale = image_xscale;

if (image_alpha > 0) image_alpha -= 0.03;
else instance_destroy();