sprite_index = spr_cactus_large;
_speed = 2
if(up){
y -= _speed ;
up = false;
}else if(down){
y += _speed ;
down = false;
}