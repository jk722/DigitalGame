sprite_index = spr_cactus_large;
_speed = 2
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
bullet.speed = 10;
space = false;
}
