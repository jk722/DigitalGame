if (!audio_is_playing(snd_game_over) && !global.gameOver)
{
	audio_play_sound(snd_game_over, 100, false);
}
global.gameOver = true;
global.speedModifier = 0;
image_speed = 0.5;
sprite_index = spr_player_knight_death;
if (!instance_exists(obj_replay))
{
	instance_create_layer(room_width/2, room_height/2 + 50, "Instances", obj_replay);
}	
if (!instance_exists(obj_home))
{
	instance_create_layer(room_width/2 + 150, room_height/2 + 50, "Instances", obj_home);
}
with (obj_obstacle)
{
	speed = 0;
	image_speed = 0;	
}
if image_speed > 0
 {
 if image_index > image_number - 1 image_speed = 0;
 }


