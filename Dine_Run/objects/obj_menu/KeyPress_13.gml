/// @description Insert description here
// You can write your code in this editor
switch(menu_index){
	case 0:
		room_goto(rm_game);
		break;
	case 1:
	if(global._score >= 100){
		room_goto(rm_level2);
	}else{
		r = 1;
	}
		break;
	case 2:
	if(global._score >= 200){
		room_goto(rm_level3);
	}else{
		r = 1;
	}
	break;
	case 3:
		room_goto(rm_upgrades);
		break;
	case 4:
		game_end();
		break;
	
}