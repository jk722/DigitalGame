if(global.gameOver)	exit;
global.speedModifier += 0.0005; //increase global speed slowly
global._score += ceil(1 * global.speedModifier); //The score
//if(score > global._score)
//{
//	global._score = score;
//}
global.coins = ceil(global._score / 10);
