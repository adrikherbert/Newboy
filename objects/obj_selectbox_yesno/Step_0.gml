/// @description Insert description here
// You can write your code in this editor

k_up = keyboard_check_pressed(vk_up);
k_down = keyboard_check_pressed(vk_down);
k_enter = keyboard_check_pressed(vk_enter);


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
	cur_text_element = text;
	
	if (l < string_length(cur_text_element) + 1 && count % 2 == 0) {
		cur_string = string_copy(cur_text_element, 0, l) + "|";
		l++;
		
		if (count % 4 == 0) {
			audio_play_sound(s_generic_voice, 0, false);
		}
	}
	
	if (l >= string_length(cur_text_element) && !selectfade) {
		count = 1;
		selectfade = true;
	}
}

if (selectfade && count % 40 == 0) {
	if (!selectyes) {
		audio_play_sound(s_generic_voice, 0, false);
		selectyes = true;
	} else if (!selectno) {
		audio_play_sound(s_generic_voice, 0, false);
		selectno = true;
	} else {
		dokeys = true;
	}
}

if (dokeys) {
	if (selectvalue == -1) {
		audio_play_sound(s_generic_voice, 0, false);
		selectvalue = 0;
	}
	
	if (k_up) {
		audio_play_sound(s_generic_voice, 0, false);
		selectvalue--;
	} else if (k_down) {
		audio_play_sound(s_generic_voice, 0, false);
		selectvalue++;
	} else if (k_enter) {
		audio_play_sound(s_textbox_open, 0, false);
		doend = true;
	}
	
	selectvalue = clamp(selectvalue, 0, 1);
}

if (doend) {
	scale_toggle++;
	dotext = false;
	dokeys = false;
	selectfade = false;
	selectyes = false;
	selectno = false;
	doend = false;
}


if (docount) count++;
else count = 0;
	