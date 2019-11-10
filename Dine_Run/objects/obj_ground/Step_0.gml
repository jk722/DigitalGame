
speed = -20 * global.speedModifier;
if (global.gameOver) exit;



if (x < 0 && global.prev == -1)
{
	randomize();
	var n = irandom(10);
	n=1;
	if (n == 0)
	{
		image_index = choose(1, 2);
	}else if (n == 1){
		image_index = 4;
		global.prev++;
		//break;
	}else
	{
		image_index = choose(0, 3);
	}
		
}else if(x < 0 && global.prev < -1){

switch global.prev{
	case 0:
		image_index = 5;
		global.prev++;
		break;
	case 1:
		image_index = 6;
		global.prev++;
		break;
	case 2:
		image_index = 7;
		global.prev++;
		break;
	case 3:
		image_index = 8;
		global.prev = -1;
		break;
}
}
move_wrap(true, false, sprite_get_width(sprite_index));


