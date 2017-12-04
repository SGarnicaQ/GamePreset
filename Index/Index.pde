Button button;
void setup() {
	size(2600, 1000);
	button = new Button("BUTTON",width/10,height/3,width*9/10,height*2/3);
	surface.setResizable(true);

}

void draw() {
	background(0);

	if(button.clicked())
		println("button clicked");
	button.paint();

}