/// @description Insert description here
// You can write your code in this editor

if (goup) {
	if (image_alpha < 0.3) image_alpha += alpha_ch;
	else {
		goup = false;	
	}
	
	alpha_ch += 0.00001;
} else {
	if (image_alpha > 0.3) image_alpha += alpha_ch;
	else {
		goup = true;	
	}
	
	alpha_ch -= 0.00001;
}