	if(obj_player.Bar >= 100){
	obj_player.Bar = 100;
	}
	if(obj_player.Bar <= 0){
	obj_player.Bar = 0;
	alt = false;
	angelState = false;
	stateChange = false;
}
	if(angelState == false && stateChange == true){
	angelState = true;
	stateChange = false;
	
	}
	if(angelState == true && stateChange == false){
	sprite_index = spr_knight_to_angel;	
	image_speed = 0.25;
	}
	if(image_index == image_number-1)
	{
		stateChange = true
	}
	if(stateChange)
	{
		sprite_index = spr_angel_flying;
		image_speed = 1;
	}
obj_player.Bar -= 1 *global.speedModifier;

_speed = 8;
if(upHold){
y -= _speed ;
upHold = false;
}else if(down){
y += _speed ;
down = false;
}

if(space){
sprite_index = spr_angel_attack;
image_speed = 0.25;
var bullet = instance_create_layer(x, y, "Instances", obj_projectile);
bullet.direction = point_direction(x,y,x+100,y);
bullet.speed = 100;
space = false;
}
