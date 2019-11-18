
speed = -20 * global.speedModifier;
if (global.gameOver) exit;
if(global._score >= 1000){
	sprite_index = spr_background_2;
}

if(ceil(x) <= -100){
	randomize();
var n = irandom(10);
if (n == 0)
	{
		image_index = 2;
		
	}
else
	{
		image_index = choose(0,1);
	}		
image_speed = 0;
}
if(image_index == 2 && sprite_index == spr_background_1){
	instance_create_layer(x,y,"Instances",obj_gap);
}

move_wrap(true, false, sprite_width);



