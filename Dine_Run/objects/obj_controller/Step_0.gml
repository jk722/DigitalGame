global.speedModifier += 0.0005; //increase global speed slowly
score += 1 * global.speedModifier; //The score
if(score > global._score)
{
	show_debug_message("score is greater then score");
	global._score = score;
}
global.coins = ceil(global._score / 10);

