randomize();
var count = irandom_range(1, 2); //Random number to see if you spawn a double cacti

switch count{
	case 1:
	if(!instance_exists(obj_executioner)){
		var i = instance_create_layer(room_width + 100, room_height - 250, "Instances", obj_executioner);
	}
		break;
	case 2:
		if(!instance_exists(obj_bat)){
		var i = instance_create_layer(room_width + 100, room_height - 400, "Instances", obj_bat);
		}
		break;
	default:
		var i = instance_create_layer(room_width + 100, room_height - 400, "Instances", obj_obstacle);
		break;
		
}

//Creating instance
//i.sprite_index = choose(spr_cactus_small, spr_cactus_large, spr_pterodactyl); //choosing what sprite
//switch (i.sprite_index) //DO SPECIAL THINGS FOR EACHCASE.
//{
//	case spr_cactus_small:
//	case spr_cactus_large: 
//		i.image_speed = 0;
		
//		if (global.speedModifier > 1.5) //Code to spawn a double cactis
//		{
//			if (count == 2)
//			{
//				var j = instance_create_layer(room_width + 100 + sprite_get_width(i.sprite_index), room_height - 75, "Instances", obj_obstacle);
//				j.sprite_index = choose(spr_cactus_small, spr_cactus_large);
//				j.image_speed = 0;
//			}
//		}
//	break;
	
//	default: //Pterodactyl code
//	i.image_speed = 1;
//	i.y = choose(room_height - 85, room_height - 145, room_height - 180); //Spawn it as a high, medium or low 
//}

if (global.gameOver) exit;

alarm[0] = room_speed * random_range(1/global.speedModifier, 3/global.speedModifier); //The time set for the alarm to go off and spawn something.
