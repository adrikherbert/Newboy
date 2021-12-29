/// @description Insert description here
// You can write your code in this editor

switch (trigger) {
	case 1:
		txtbox1 = instance_create_depth(0, 0, 0, obj_textbox);
		txtbox1.text[0] = "Good morning, son...";
		txtbox1.text[1] = "It's a beautiful day outside.";
		txtbox1.text[2] = "The most beautiful it's been in a long time.";
		txtbox1.text[3] = "I've hoped for a long time to share the world with you.";
		txtbox1.text[4] = "To show you just how beautiful it is.";
		txtbox1.text[5] = "I hope today is the day.";
		txtbox1.text[6] = "Please... Please, my boy.";
		txtbox1.text[7] = "Please wake up.";
		txtbox1.voice = 101;
		
		txtbox1.img_spr = spr_makerman_chat;
		
		for (var i = 0; i < 8; i++) txtbox1.img[i] = 0;
		
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
		txtbox3.text[1] = "The subject is doing very well... I'm sure you'll be pleased";
		txtbox3.text[2] = "No negative system signs, sir.";
		txtbox3.text[3] = "The subject is ready for assimilation at any time.";
		txtbox3.voice = 111;
		
		txtbox3.img_spr = spr_donna_chat;
		
		for (var i = 0; i < 4; i++) txtbox3.img[i] = 0;
		
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
		instance_create_depth(704, 500, 0, obj_heart);
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
		txtbox4.text[1] = "I'm here.";
		txtbox4.text[2] = "Are you ready to brave this treacherous world?";
		
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
		
		selbox1.text = "Are you ready to brave this treacherous world?";
		
		trigger++;
		count = 1;
		break;
}

if (trigger == 0 && count > 0 && count % 200 == 0) trigger++;
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