/// @description Insert description here
// You can write your code in this editor

if (alpha < 1) alpha += 0.05;

if (l < string_length(title) && count % 30 == 0) {
	audio_play_sound(s_generic_voice, 100, false);
	l++;
	cur = string_copy(title, 0, l) + "|";
}

if (l == string_length(title) && count % 60 == 0) {
	audio_play_sound(s_generic_voice, 100, false);
	l++;
	cur = title;	
	
	dosub = true;
	count = 0;
}

if (dosub && count >= 120) {
	if (alpha_sub < 1) alpha_sub += 0.01;
}


count++;