
if (space)
{
	sprite_index = spr_dino_run_hit;
}
	

if (!space)
{
	sprite_index = spr_player_knight_run;
	image_speed = 1;
}

//--------Jump Logic-----------

if(up && isFalling == false){
	sprite_index = spr_player_knight_jump;
	if(y != 610){
	y -= 10 * global.speedModifier;
	if(y <= 560){	
	x += 10 * global.speedModifier;
	}
	if(round(y) <= 485){
	up = false;
	isFalling = true;
	}
	}
	

}else{
	
	if(y >= 610){
	y = 610;
	isFalling = false;
	if(x > 128){
		x -= 20 * global.speedModifier;
	}else{
		x = 128;
	}
	}	
	y += 10 * global.speedModifier;
}
if(down){
	sprite_index = spr_player_knight_slide;
	x += 35 * global.speedModifier;
	//show_debug_message(x);
	if(ceil(x) >= 369){
		x = 369;
	}
}


