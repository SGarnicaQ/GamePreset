Sprite sprite;

void setup() {
	size(1000, 1000);
	sprite = new Sprite("Sprites/PlayerMove.png",64);					/*Sprite path init*/

}

void draw() {
	background(0);
	
	if(mousePressed)
		sprite.animation = true;

	if(sprite.animation)
		sprite.animate(9,17,0.1,width/2,height/2,200);

	sprite.paintFrame(18,100,100,200);
	
}