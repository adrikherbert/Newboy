/// @description Insert description here
// You can write your code in this editor
cam = view_camera[0];
cam_move = false;
cam_vel = 0;
cam_y = 0;

lights = false;

doflash = false;
flashcount = 5;

dodazzles = false;
dazzlecount = 3;

doflash2 = false;
flashcount2 = 5;

dorelease = false;

docount = true;
trigger = 0;
count = 0;

selection1 = 0;

// BRANCH TEXT FOR YES AFTER SELECTION 1
branch1[0] = "Ahhh... I feel that your soul is ready.";
branch1[1] = "Excellent! Excellent!";
branch1[2] = "You've no idea how long I've been waiting for this moment, dear boy.";
branch1[3] = "Oh... but the world is quite a different place than what you may expect.";
branch1[4] = "There are a lot of surprising things about this world that you'll come to find out.";
branch1[5] = "But I just know, dear boy... I just know.";
branch1[6] = "You're going to do amazing things.";
branch1[7] = "Maybe...";
branch1[8] = "Just maybe...";
branch1[9] = "You'll even, perhaps, save us.";

// BRANCH TEXT FOR NO AFTER SELECTION 1
branch2[0] = "Oh, dear boy... I feel a weight on your soul.";
branch2[1] = "I do not blame you for your fear.";
branch2[2] = "But, dear boy, let me reassure you now...";
branch2[3] = "You are always safe here, in my home.";
branch2[4] = "No matter what happens.";
branch2[5] = "No matter what danger you encounter.";
branch2[6] = "You will always be kept safe here.";
branch2[7] = "And when you're ready...";
branch2[8] = "You can venture out yourself.";
branch2[9] = "Perhaps you'll even... save us.";

instance_create_depth(160, 128, 50, obj_lightbeam);
instance_create_depth(0, 0, 350, obj_sinwav_comp1);
instance_create_depth(0, 0, 350, obj_sinwav_comp2);

audio_play_sound(s_birthroom_ambient_2, 100, true);