if(distance_to_object( obj_player ) < 150 && angler_dead == false){
	sprite_index = spr_angler_attack;
	image_speed = 0.25;
}

if (sprite_index = spr_angler_attack && image_index == image_number - 1 && angler_dead == false)
{
	if (place_meeting(x, y, obj_player))
	{
	//show_debug_message("Hit Player");
		with (obj_player)
		{
		scr_gameover();
		}
	}
}

if (image_index != image_number - 1 && obj_player.sprite_index == spr_player_knight_slide){
	
	if (place_meeting(x, y, obj_player))
	{
		angler_dead = true;
	}
	
}
if(angler_dead){
	sprite_index = spr_angler_death;
	image_speed = 0.25;
	if (image_index == image_number - 1 ){
	instance_destroy();
	}
}