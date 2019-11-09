/// @description Insert description here
// You can write your code in this editor


if(image_angle == 45){
	left = true;
	right = false;
}
if(image_angle == -45){
	right = true;
	left = false;
}

if(image_angle <= 45 && left == true)
{
	image_angle -= 1;	
 
}
 else if(image_angle >= -45 && right == true){
	image_angle += 1;
 }
 
 
 
 
 
 
 
 
 
 