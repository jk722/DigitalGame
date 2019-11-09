/// @description Insert description here
// You can write your code in this editor
if(oX-x < range && oX-x > 0){
	x += random(randnum) * global.speedModifier* slowerSpeed;	
}else if(oX-x > -range && oX-x < 0){
	x -= random(randnum)* global.speedModifier* slowerSpeed;
}
if(oY-y < range && oY-y > 0){
	y += random(randnum)* global.speedModifier* slowerSpeed;	
}else if(oY-y > -range && oY-y < 0){
	y -= random(randnum)* global.speedModifier* slowerSpeed;
}
alarm[1] = room_speed * 3;