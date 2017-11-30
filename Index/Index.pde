PFont font;
Button button;
void setup() {
	size(1000, 1000);
	font = loadFont("Font/ARESSENCE-48.vlw");							/*Init font type*/
	button = new Button("button",1/5.0,1/2.0,4/5.0,3/4.0,color(#FF0000),color(#FFFFFF),color(#7A4141),color(#FF0000));
	surface.setResizable(true);

}

void draw() {
	background(0);

	button.paint();
	if(button.clicked())
		println("button clicked");

}