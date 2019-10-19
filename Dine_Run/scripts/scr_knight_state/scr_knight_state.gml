if (space)
{
	sprite_index = spr_dino_run_hit;
}
	

if (!space)
{
	sprite_index = spr_dino_run;
	image_speed = 2;
}

//--------Jump Logic-----------

if(up){
	if(y != 585){
	y -= 10 * global.speedModifier;
	if(y <= 560){	
	x += 10 * global.speedModifier;
	}
	if(round(y) <= 485){
	up = false;
	//isFalling = true;
	}
	}
	

}else{
	if(y >= 584){
	y = 585;
	isFalling = false;
	if(x > 96){
		x -= 20 * global.speedModifier;
	}else{
		x = 96;
	}
	}	
	y += 10 * global.speedModifier;
}



