Sprite sprite;
Sprite jsonSprite;

void setup () {
	size(1000, 1000);
	sprite = new Sprite("Sprites/PlayerMove.png",64);					/*Sprite path init*/
	jsonSprite = new Sprite("data/Sprites/SpriteConfig.json");			/*Json config path*/

}

void draw () {
	background(0);		

	if (sprite.animation)
		sprite.animate(9,17,0.1,width*3/4,height/4,200);
	if (key == 'w')
		jsonSprite.animate("up",width/4,height*3/4,200);
	if (key == 'a')
		jsonSprite.animate("left",width/4,height*3/4,200);
	if (key == 's')
		jsonSprite.animate("down",width/4,height*3/4,200);
	if (key == 'd')
		jsonSprite.animate("right",width/4,height*3/4,200);
	sprite.paintFrame(18,100,100,200);
	
}

void mouseClicked () {
	sprite.animation = true;
}