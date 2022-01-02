/// @description Insert description here
// You can write your code in this editor

// if (keyboard_check_pressed(ord("S"))) trigger =  47;

switch (trigger) {
	case 301:
		audio_play_sound(s_prologue_intro, 300, false);
		trigger++;
		count = 1;
		break;
	case 303:
		audio_play_sound(s_makerman_steps, 300, false);
		trigger++;
		count = 1;
		break;
	case 1:
		txtbox1 = instance_create_depth(0, 0, 0, obj_textbox);
		txtbox1.text[0] = "Good morning, son...";
		txtbox1.voice = 101;
		
		txtbox1.img_spr = spr_makerman_chat;
		
		txtbox1.img[0] = 0;
		
		count = 0;
		trigger++;
		break;
	case 3:
		obj_makerman_birthroom_sc1.fade = true;
		trigger++;
		count = 1;
		break;
	case 5:
		lights = true;
		obj_birthroom_background_cover.image_alpha = 0;
		audio_play_sound(s_lights_on, 10, false);
		trigger++;
		break;
	case 7:
		audio_play_sound(s_the_machine, 50, false);
		doflash = true;
		trigger++;
		count = 1;
		break;
	case 9:
		obj_birthroom_background.lights = true;
	
		txtbox2 = instance_create_depth(0, 0, 0, obj_textbox);
		txtbox2.text[0] = "All signs are green.";
		txtbox2.text[1] = "I think today's our lucky day.";
		txtbox2.text[2] = "DONNA... How's our subject doing?";
		txtbox2.voice = 101;
		
		txtbox2.img_spr = spr_makerman_chat;
		
		for (var i = 0; i < 3; i++) txtbox2.img[i] = 1;
		
		trigger++;
		count = 1;
		break;
	case 11:
		instance_create_depth(1000, 129, 100, obj_donna);
		trigger++;
		count = 1;
		break;
	case 13:
		txtbox3 = instance_create_depth(0, 0, 0, obj_textbox);
		txtbox3.text[0] = "Good morning Dr. Maker.";
		txtbox3.text[1] = "The subject is doing very well... No negative system signs, sir.";
		txtbox3.text[2] = "Everything is running as planned.";
		txtbox3.voice = 111;
		txtbox3.voice_frequency = 4;
		
		txtbox3.img_spr = spr_donna_chat;
		
		for (var i = 0; i < 3; i++) txtbox3.img[i] = 0;
		
		trigger++;
		count = 1;
		break;
	case 15:
		trigger++;
		count = 1;
		break;
	case 17:
		audio_play_sound(s_machine_ready, -40, false);
		doflash2 = true;
		trigger++;
		count = 1;
		break;
	case 19:
		audio_play_sound(s_heartbeat, 100, false);
		instance_create_depth(704, 500, -10, obj_heart);
		trigger++;
		count = 1;
		break;
	case 21:
		trigger++;
		count = 1;
		break;
	case 23:
		txtbox4 = instance_create_depth(0, 0, 0, obj_textbox);
		
		txtbox4.text[0] = "I hear you, son.";
		txtbox4.text[1] = "Your soul is strong.";
		txtbox4.text[2] = "Are you prepared for what lies ahead?";
		
		txtbox4.voice = 101;
		txtbox4.img_spr = spr_makerman_chat;
		
		for (var i = 0; i < 3; i++) txtbox4.img[i] = 1;
	
		trigger++;
		count = 1;
		break;
	case 25:
		trigger++;
		count = 1;
		break;
	case 27:
		selbox1 = instance_create_depth(0, 0, 0, obj_selectbox_yesno);
		
		selbox1.text = "Do you have even a single clue what this guy is talking about?";
		
		trigger++;
		count = 1;
		break;
	case 29:
		trigger++;
		count = 1;
		break;
	case 31:
		txtbox5 = instance_create_depth(0, 0, 0, obj_textbox);
		
		if (selection1 == 0) {
			for (var i = 0; i < 10; i++) txtbox5.text[i] = branch1[i];
		} else {
			for (var i = 0; i < 10; i++) txtbox5.text[i] = branch2[i];
		}
		
		txtbox5.voice = 101;
		
		txtbox5.img_spr = spr_makerman_chat;
		for (var i = 0; i < 10; i++) txtbox5.img[i] = 1;
		
		trigger++;
		count = 1;
		break;
	case 33:
		trigger++;
		count = 1;
		break;
	case 101:
		trigger++;
		count = 1;
		dodazzles = true;
		break;
	case 35:
		txtbox6 = instance_create_depth(0, 0, 0, obj_textbox);
		
		txtbox6.text[0] = "Dr. Maker, the machine is ready.";
		txtbox6.text[1] = "I think the subject is prepared for release.";
		txtbox6.text[2] = "Now is the time to do it, sir.";
		
		txtbox6.voice = 111;
		txtbox6.voice_frequency = 4;
		
		txtbox6.img_spr = spr_donna_chat;
		for (var i = 0; i < 3; i++) txtbox6.img[i] = 0;
		
		trigger++;
		count = 1;
		break;
	case 37:
		trigger++;
		count = 1;
		break;
	case 39:
		txtbox7 = instance_create_depth(0, 0, 0, obj_textbox);
		
		txtbox7.text[0] = "Very well...";
		txtbox7.text[1] = "When you're ready, son.";
		txtbox7.text[2] = "This is a choice that you, alone, have to make.";
		txtbox7.text[3] = "Do not be afraid.";
		
		txtbox7.voice = 101;
		txtbox7.img_spr = spr_makerman_chat;
		for (var i = 0; i < 4; i++) txtbox7.img[i] = 1;
		
		trigger ++;
		count = 1;
		break;
	case 41:
		trigger++;
		count = 1;
		break;
	case 43:
		selbox2 = instance_create_depth(0, 0, 0, obj_selectbox_yesno);
		selbox2.text = "Sorry bud, I'm only giving you one option here. Step out?";
		selbox2.doselectno = false;
		selbox2.select[1] = "";
		selbox2.upper_clamp_value = 0;
		
		trigger++;
		count = 1;
		break;
	case 45:
		trigger++;
		count = 1;
		break;
	case 47:
		dorelease = true;
		
		trigger++;
		count = 1;
		break;
	case 49:
		trigger++;
		count = 1;
		break;
	case 201:
		txtbox8 = instance_create_depth(0, 0, 0, obj_textbox);
		txtbox8.text[0] = "Welcome home, my boy.";
		txtbox8.img_spr = spr_makerman_chat;
		txtbox8.img[0] = 1;
		txtbox8.voice = 101;
		
		trigger++;
		count = 1;
		break;
	case 51:
		audio_play_sound(s_newboy_prologue, 200, true);
		cam_move = true;
	
		trigger++;
		count = 1;
		break;
}

if (trigger == 0 && count > 0 && count % 200 == 0) trigger = 301;
if (trigger == 302 && count == 820) trigger++;
if (trigger == 304 && count == 800) trigger = 1;
if (trigger == 2 && txtbox1.scale_toggle == 5) trigger++;
if (trigger == 4 && count % 400 == 0) trigger++;
if (trigger == 6 && count % 50 == 0) trigger++;
if (trigger == 8 && count % 120 == 0) trigger++;
if (trigger == 10 && txtbox2.scale_toggle == 5) trigger++;
if (trigger == 12 && count == 120) trigger++;
if (trigger == 14 && txtbox3.scale_toggle == 5) trigger++;
if (trigger == 16 && count == 60) trigger++;
if (trigger == 18 && count == 100) trigger++;
// trigger 20 triggered by obj_heart
if (trigger == 22 && count == 120) trigger++;
if (trigger == 24 && txtbox4.scale_toggle == 5) trigger++;
if (trigger == 26 && count == 60) trigger++;
if (trigger == 28 && selbox1.scale_toggle == 5) {
	selection1 = selbox1.selectvalue;
	trigger++;
}
if (trigger == 30 && count == 30) trigger++;
if (trigger == 32 && txtbox5.scale_toggle == 5) trigger++;
if (trigger == 34 && count == 30) trigger = 101;
if (trigger == 102 && count == 120) trigger = 35;
if (trigger == 36 && txtbox6.scale_toggle == 5) trigger++;
if (trigger == 38 && count == 30) trigger++;
if (trigger == 40 && txtbox7.scale_toggle == 5) trigger++;
if (trigger == 42 && count == 30) trigger++;
if (trigger == 44 && selbox2.scale_toggle == 5) trigger++;
if (trigger == 46 && count == 30) trigger++;
//trigger 48 triggered by obj_release
if (trigger == 50 && count == 200) trigger = 201;
if (trigger == 202 && txtbox8.scale_toggle == 5) trigger = 51;

if (cam_move) {
	cam_vel -= 0.01;
	cam_y += cam_vel;
	camera_set_view_pos(cam, 0, cam_y);
	
	if (count >= 600) {
		cam_move = false;
		instance_create_depth(0, 0, 0, obj_prologue_title);
	}
}

if (dorelease) {
	instance_create_depth(0, 0, -200, obj_release);
	dorelease = false;
}


if (dodazzles && dazzlecount > 0 && count % 20 == 0) {
	instance_create_depth(704, 500, 0, obj_dazzles);
	dazzlecount--;
}

if (doflash && flashcount > 0 && count % 10 == 0) {
	instance_create_depth(704, 500, 0, obj_machine_flash);
	flashcount--;
}

if (doflash2 && flashcount2 > 0 && count % 10 == 0) {
	instance_create_depth(704, 500, 0, obj_machine_flash_2);
	flashcount2--;
}

if (docount) count++;
else count = 0;