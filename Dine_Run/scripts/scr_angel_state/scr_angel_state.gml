sprite_index = spr_angel_flying;
image_speed = 1;
obj_player.Bar -= 1 *global.speedModifier;
if(obj_player.Bar <= 0){
	obj_player.Bar = 0;
	alt = false;
}
_speed = 8;
if(upHold){
y -= _speed ;
upHold = false;
}else if(down){
y += _speed ;
down = false;
}

if(space){
var bullet = instance_create_layer(x, y, "Instances", obj_bullet);
bullet.direction = point_direction(x,y,x+100,y);
bullet.speed = 100;
space = false;
}
