if(distance_to_object( obj_player ) < 150 && executioner_dead == false){
	sprite_index = spr_executioner_attack_2;
	image_speed = 0.25;
}

if (sprite_index = spr_executioner_attack_2 && image_index == image_number - 1 && executioner_dead == false)
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
		executioner_dead = true;
	}
	
}
if(executioner_dead){
	sprite_index = spr_executioner_death_2;
	image_speed = 0.25;
	if (image_index == image_number - 1 ){
	instance_destroy();
	}
}
