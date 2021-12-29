/// @description Insert description here
// You can write your code in this editor

audio_play_sound(s_textbox_open, -100, false);

spr = spr_textbox_robot;
spr_width = 200;
spr_height = 60;
spr_x = 683;
spr_y = 154;

xscale = 0;
yscale = 1;

scale_toggle = 0;

dotext = false;

cur_string = "|";
cur = 0;
l = 0;

text[0] = "DEFAULT TEXT";

img_spr = spr_default_chat;
img[0] = 0;

voice = 0;

docount = true;
count = 0;