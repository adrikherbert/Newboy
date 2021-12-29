/// @description Insert description here
// You can write your code in this editor

audio_play_sound(s_textbox_open, -100, false);

spr = spr_selectbox;
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

text = "DEFAULT TEXT";

selectfade = false;

select[0] = "* YES";
select[1] = "* NO";

upper_clamp_value = 1;
doselectno = true;

selectyes = false;
selectno = false;

dokeys = false;
selectvalue = -1;

doend = false;

docount = true;
count = 0;