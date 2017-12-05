Button buttonN, buttonT1, buttonT2;
void setup() {
	size(1200, 700);
	buttonN = new Button("BUTTON",width/10,height/7,width*9/10,height*2/7,0);
	buttonT1 = new Button("TOGGLE1",width/10,height*3/7,width*9/10,height*4/7,1);
	buttonT2 = new Button("TOGGLE2",width/10,height*5/7,width*9/10,height*6/7,1);

	surface.setResizable(true);

}

void draw() {
	background(0);

	if(buttonN.clicked())
		println("button clicked");
	buttonN.paint();
	buttonT1.paint();
	buttonT2.paint();
	click = false;

}