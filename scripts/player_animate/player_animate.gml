// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_animate(go, player){
	switch (go) {
		case -1:
			player.sprite_index = spr_newboy_walk;
			player.image_xscale = -4;
			break;
		case 1:
			player.sprite_index = spr_newboy_walk;
			player.image_xscale = 4;
			break;
		default:
			player.sprite_index = spr_newboy;
			break;
	}
}