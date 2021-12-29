/// @description Insert description here
// You can write your code in this editor

k_space = keyboard_check_pressed(vk_space);

if (scale_toggle == 0 && xscale < 4) {
	xscale += 0.3;
	if (xscale >= 4) {
		xscale = 4;
		scale_toggle++;
	}
} else if (scale_toggle == 1 && yscale < 4) {
	yscale += 0.3;
	if (yscale >= 4) {
		yscale = 4;
		scale_toggle++;
	}
} else if (scale_toggle == 2) {
	dotext = true;
	scale_toggle++;
} else if (scale_toggle == 4 && yscale > 0) {
	yscale -= 0.3;
	if (yscale <= 1) {
		yscale = 1;
		scale_toggle++;
	}
} else if (scale_toggle == 5 && xscale > 0) {
	xscale -= 0.3;
	if (xscale <= 0) {
		xscale = 0;
		instance_destroy();
	}
}

if (dotext) {
	cur_text_element = text[cur];
	
	if (l < string_length(cur_text_element) + 1 && count % 2 == 0) {
		cur_string = string_copy(cur_text_element, 0, l) + "|";
		l++;
		
		if (count % 4 == 0) {
			var sound;
			
			switch (voice) {
				case 101:
					sound = choose(s_mm_c6, s_mm_e6, s_mm_g6, s_mm_c7);
					break;
				case 111:
					sound = choose(s_don_g6, s_don_b6, s_don_cs6);
					break;
				default:
					sound = s_generic_voice;
					break;
			}
			
			audio_play_sound(sound, 0, false);
		}
	}
	
	if (k_space) {
		if (cur < array_length(text) - 1) {
			cur++;
			l = 0;
		} else {
			dotext = false;
			scale_toggle++;
		}
	}
}

if (docount) count++;
else count = 0;
	