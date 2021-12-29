/// @description Insert description here
// You can write your code in this editor

image_xscale += 0.03;
image_yscale += 0.03;

if (image_alpha > 0) image_alpha -= 0.008;
else instance_destroy();
