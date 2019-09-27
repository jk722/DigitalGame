if(global.bday){

	if (other.object_index == obj_inverse)
{
	global.bday = false;
	exit;
}
	if(other.sprite_index == spr_cactus_small || other.sprite_index == spr_cactus_large )
	{
		with(other)
		{
			instance_destroy();
		} 
	}	
	
	if(other.sprite_index == spr_pterodactyl){	
	//GAME OVER IF TOUCH PTERODACTYL	
		if (!audio_is_playing(snd_game_over) && !global.gameOver)
			audio_play_sound(snd_game_over, 100, false);
	global.gameOver = true;
	global.speedModifier = 0;
	image_speed = 0;
	grav = 0;
	sprite_index = spr_dino_dead_bday;
	if (!instance_exists(obj_replay))
		instance_create_layer(room_width/2, room_height/2 + 50, "Instances", obj_replay);
	
	with (obj_obstacle)
	{
		speed = 0;
		image_speed = 0;	
	}
	
	exit;
	//END OF GAME OVER
}
}else
{
if (other.object_index == obj_cake)
{
	global.bday = true;
	with (other)
	{
		instance_destroy();
	}
	audio_play_sound(snd_cake, 100, false);
	
	exit;
}
if (other.object_index == obj_inverse)
{
	global.bday = false;
	global.inverse = !global.inverse;
	with (other)
	{
		instance_destroy();
	}
	
	exit;
}
if(other.sprite_index == spr_pterodactyl){
	with(other){
		instance_destroy()
	}
	exit;
}

// this means death
if (!audio_is_playing(snd_game_over) && !global.gameOver)
	audio_play_sound(snd_game_over, 100, false);
	
global.gameOver = true;
global.speedModifier = 0;
image_speed = 0;
grav = 0;
show_debug_message("hello");

sprite_index = spr_dino_dead;

if (!instance_exists(obj_replay))
	instance_create_layer(room_width/2, room_height/2 + 50, "Instances", obj_replay);
	
with (obj_obstacle)
{
	speed = 0;
	image_speed = 0;	
}
}